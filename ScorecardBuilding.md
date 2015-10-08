# Building #

## Install Grails ##
Scorecard is a grails application so begin by installing Grails

**Download and install Grails 1.0.4: http://www.grails.org/Download** set your GRAILS\_HOME and include its bin dir in your PATH

## Checkout  sources ##

```
svn checkout http://ops-scorecard.googlecode.com/svn/trunk scorecard
```

## Run it in dev mode ##

```
cd scorecard
grails -Dscorecard.config.location=`pwd`/grails-app/conf/scorecard-config.properties -Dserver.port=9090 run-app
```

## Use it ##
Once you have the application running, you're ready to use it. Go [here](http://code.google.com/p/ops-scorecard/wiki/UsingScorecard) for user documentation.