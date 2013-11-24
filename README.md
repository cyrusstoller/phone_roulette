# Phone Roulette

This is exactly what it sounds like. I wanted to experiment with the [Twilio API](https://www.twilio.com/voice/api),
and this seemed like a quick and easy application to make.

Call (480) 878-7813 and you'll randomly be connected with anyone else who is currently calling the same number.

If you're interested in a more detailed write-up, click [here](http://www.cyrusstoller.com/2013/09/09/phone-roulette-with-twilio-and-sinatra/).

## To start the server in development
```
$> shotgun config.ru
```

## Optional `.env`
```
TWILIO_PHONE_NUMBER= "(xxx) yyy-zzzz"
```


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/cyrusstoller/phone_roulette/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

