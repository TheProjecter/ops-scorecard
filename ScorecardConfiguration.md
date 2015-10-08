# Settings #

Scorecard is configured by a "scorecard-config.properties" file. The contents of the file describe settings that should be customized to your environment. An example follows:

## Example ##

```
# URL to the scorecard web app
app.url=http://localhost:9090/scorecard
# the from address 
email.from= user@domain.com
# the SMTP server
email.server=smtp.domain.com
# if authentication is requred define the user/password
email.username=<user>
email.password=<pass>
#
# Cron expression describing when reports should be emailed
subscription.cronExpression=0 6 * ? * *
```