# motion-social

This gem allows you to easily share content on Twitter and Facebook. One image is worth a thousand words and at the end of this readme we have 3. 

## Installation

Add this line to your application's Gemfile:

    gem 'motion-social'

And then execute:

    $ bundle


## Usage:

    class MyAwesomeViewController < UIViewController

      include MotionSocial::Sharing

      def sharing_message
        "I am using Motion-Social"
      end

      def sharing_url
        "http://www.rubymotion.com"
      end

      def controller
        self # This is so that we can present the dialogs. 
      end

    end

When you want to display the sharing dialogs just use: 

    post_to_twitter
    post_to_facebook

![twitter](https://raw.github.com/ivanacostarubio/motion-social/master/resources/twitter.png) ![facebook](https://raw.github.com/ivanacostarubio/motion-social/master/resources/facebook.png)

or display a dialog with Facebook and Twitter as options:

    display_share_dialog

![share dialog](https://raw.github.com/ivanacostarubio/motion-social/master/resources/share_dialog.png)
