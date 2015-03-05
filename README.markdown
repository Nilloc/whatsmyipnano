#iStat nano External IP Fix
This is a simple example of using Sinatra on Heroku. Check it out at [http://whatsmyipnano.heroku.com](http://whatsmyipnano.heroku.com).

It's now intended to fix the old (now unsupported) iStat Nano widget to properly return the external IP address functionality now that iSlayer's website is gone.

##Instructions to fix iStat nano:

###UPDATE!: You can just download the updated widget [here](http://whatsmyipnano.heroku.com)

First open the workers.js in the widget file, from terminal:

    $ open ~/Library/Widgets/iStat\ nano.wdgt/workers.js

Then on line 248 change

    url=’http://whatsmyip.islayer.com/?random=’+new Date().getTime();
to

    url=’http://whatsmyipnano.herokuapp.com/ip?random=’+new Date().getTime();

This will use a new heroku app that I setup just for reporting the IP address. I don’t store anything that heroku doesn’t for any other apps, but feel free to clone this app and use your own heroku app or ruby server of choice ;)

##To Launch the app on heroku (optional)

1. Download & install the Heroku toolchain app, and open Terminal.
2. Create a new Heroku app: `$ heroku apps:create MyAppName`
3. From inside this cloned repo, add the heroku repo to this local repo's remote servers: `$ git remote add heroku {your apps heroku git address}`
4. Launch it: `$ git push heroku master`
5. Open it to make sure you didn't mess up: `$ heroku apps:open`