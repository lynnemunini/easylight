# EASY LIGHT APPLICATION
Easy light application is designed to provide users with a more convenient and user-friendly way to monitor and recharge tokens.
The application allows users to purchase prepaid tokens via the Mpesa payment platform and get notified via SMS notifications when the tokens are about to deplete.

### Features
- Purchase prepaid tokens via Mpesa: Users can easily purchase prepaid tokens through the Mpesa payment platform using the Daraja API.
- Monitor usage of prepaid tokes
- Get notified via SMS when the tokens are about to deplete: Users will receive SMS notifications when their tokens are running low, powered by the Twilio API, so they can recharge their account in time.

### Backend

The Easy Light Application uses a Flask application as an API to serve the app. The API fetches details from the Android app during registration and updates the database. When the user wants to login to the app, the API fetches the user's details from the database and checks if they match the details provided by the user. If successful, the user will be redirected to the app. The API is hosted on Heroku and can be accessed from any device connected to the internet.

To access the github repository, use the following link: [Backend Repository](https://github.com/lynnemunini/easylight-api)

