const admin = require('firebase-admin');
const functions = require('firebase-functions');

admin.initializeApp();

exports.checkUserActivity = functions.https.onRequest(async (req, res) => {
  try {
    // Get the ID token from the Authorization header
    const authHeader = req.headers.authorization;
    const idToken = authHeader.split('Bearer ')[1];
    
    // Verify the ID token and get the user's UID
    const decodedToken = await admin.auth().verifyIdToken(idToken);
    const uid = decodedToken.uid;
    
    // Get the user's document from Firestore
    const userDoc = await admin.firestore().collection('users').doc(uid).get();
    
    // Check if the user's last active time is within the last 5 minutes
    const lastActiveTime = userDoc.data().lastActiveTime;
    const currentTime = new Date().getTime();
    const timeDifference = (currentTime - lastActiveTime) / (1000 * 60); // in minutes
    const isActive = timeDifference <= 5;
    
    // Send the response with the isActive status
    res.status(200).json({ isActive: isActive });
  } catch (error) {
    console.error(error);
    res.status(500).send('Internal server error');
  }
});
