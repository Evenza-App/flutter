// Scripts for firebase and firebase messaging
importScripts("https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js");
importScripts(
    "https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js"
);

// Initialize the Firebase app in the service worker
// "Default" Firebase configuration (prevents errors)
const defaultConfig = {
    apiKey: true,
    projectId: true,
    messagingSenderId: true,
    appId: true,
};

const firebaseConfig = {

    apiKey: 'AIzaSyDh4LxLluTiRmRUOHOCJs73yA-PP3CySy4',
    appId: '1:1097610978951:web:e674a65a1a2c6ac8c63a22',
    messagingSenderId: '1097610978951',
    projectId: 'evenza-3e3f8',
    authDomain: 'evenza-3e3f8.firebaseapp.com',
    storageBucket: 'evenza-3e3f8.appspot.com',

    // measurementId: "G-47981FBE9"

};


firebase.initializeApp(firebaseConfig);

// Retrieve firebase messaging
const messaging = firebase.messaging();

messaging.onBackgroundMessage((payload) => {
    const notificationTitle = payload.notification.title;
    const notificationOptions = {
        body: payload.notification.body,
        icon: payload.notification.image,
    };

    self.registration.showNotification(notificationTitle, notificationOptions);
});