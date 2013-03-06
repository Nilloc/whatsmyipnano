This is a simple example of using Sinatra on Heroku. Check it out at [http://whatsmyipnano.heroku.com](http://whatsmyipnano.heroku.com).

It's now intended to help you fix your iStat Nano widget to properly return the external IP address functionality now that iSlayer's website is gone.

Instructions:

First open the workers.js in the widget file, from terminal:

    $ open ~/Library/Widgets/iStat\ nano.wdgt/workers.js

Then on line 248 change

    url=’http://whatsmyip.islayer.com/?random=’+new Date().getTime();
to

    url=’http://whatsmyipnano.herokuapp.com/?random=’+new Date().getTime();

This will use a new heroku app that I setup just for reporting the IP address. I don’t store anything that heroku doesn’t for any other apps, but feel free to clone this app and use your own heroku app ;)