# Firebase Cloud Messaging (FCM) in blade

- do all the instructions in [fcm](fcm.md)
- run this in the terminal:
```bash
npm i firebase 

echo "VITE_APP_API_KEY=" >> .env

echo "VITE_APP_AUTH_DOMAIN=" >> .env

echo "VITE_APP_PROJECT_ID=" >> .env

echo "VITE_APP_STORAGE_BUCKET=" >> .env

echo "VITE_APP_MESSAGING_SENDER_ID=" >> .env

echo "VITE_APP_APP_ID=" >> .env

echo "VITE_APP_MEASUREMENT_ID=" >> .env

echo "VITE_APP_VAPID_KEY=" >> .env
```
- Go to Project settings > General > Your apps . Click on **Add app**  Select the web app option.
- copy the code and put it inside [fcm.js](resources/js/fcm.js)
![code](https://miro.medium.com/v2/resize:fit:720/format:webp/1*Z_9TI_p8ojHlT1-fROo6qw.png)
- Generate web push certificate key(VAPID key):
Go to Project settings > Cloud Messaging > Web configuration and generate a key pair.
![web configuration](https://miro.medium.com/v2/resize:fit:720/format:webp/1*i2kEuSE66ISN6_A0wC2lYA.png)
- Go to [.env](.env) and add the keys from [fcm.js](resources/js/fcm.js) and add the vapid key from here:
![web configuration](https://miro.medium.com/v2/resize:fit:720/format:webp/1*t0zBYivVqInJcIJLDNa7ig.png)
- Go to [fcm.js](resources/js/fcm.js) delete old code and put this code instead:
```js
import { initializeApp } from "firebase/app";

import { getMessaging, getToken, onMessage } from "firebase/messaging";

//Firebase Config values imported from .env file
const firebaseConfig = {
    apiKey: import.meta.env.VITE_APP_API_KEY,
    authDomain: import.meta.env.VITE_APP_AUTH_DOMAIN,
    projectId: import.meta.env.VITE_APP_PROJECT_ID,
    storageBucket: import.meta.env.VITE_APP_STORAGE_BUCKET,
    messagingSenderId: import.meta.env.VITE_APP_MESSAGING_SENDER_ID,
    appId: import.meta.env.VITE_APP_APP_ID,
    measurementId: import.meta.env.VITE_APP_MEASUREMENT_ID,
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);

export async function requestPermission() {
    //requesting permission using Notification API
    const permission = await Notification.requestPermission();

    if (permission === "granted") {
        const token = await getToken(messaging, {
            vapidKey: import.meta.env.VITE_APP_VAPID_KEY,
        });

        await axios.post('fcm_token', { token: token })
        console.log("Token generated : ", token);
    } else if (permission === "denied") {
        //notifications are blocked
        alert("You denied for the notification");
    }
}

// Messaging service
export const messaging = getMessaging(app);

onMessage(messaging, (payload) => {
    const { title, body } = payload.notification;
    alert(`
        ${title} 
        ${body}
    `);
})
```
- Go to [app.js](resources/js/app.js) delete old code and put this code instead:
```js
import './bootstrap';
import { requestPermission } from "./fcm";

requestPermission()
```
- Go to [firebase-messaging-sw.js](public/firebase-messaging-sw.js) delete old code and put this code instead:
```js
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

    apiKey: "dsad",

    authDomain: "dsad.firebaseapp.com",

    projectId: "dsad",

    storageBucket: "dsad.appspot.com",

    messagingSenderId: "6498",

    appId: "1:6498:web:2b1e8a2f82b4bb2cfe003a",

    measurementId: "G-47981FBE9"

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
```
> **don't forget to put your firebaseConfig credintials.**
- Go to [web.php](routes/web.php) and add this code:
```php
Route::post('fcm_token', function (Request $request) {
    return auth()->user()->tokens()->create(['token' => $request->token]);
});

```