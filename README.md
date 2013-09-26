# motion-social

This gem allows you to easily share content on Twitter and Facebook. One image is worth a thousand words. Let's have 3: 

![share dialog](https://raw.github.com/ivanacostarubio/motion-social/master/resources/share_dialog.png)

![twitter](https://raw.github.com/ivanacostarubio/motion-social/master/resources/twitter.png) ![facebook](https://raw.github.com/ivanacostarubio/motion-social/master/resources/facebook.png)

## Installation

Add this line to your application's Gemfile:

    gem 'motion-social'

And then execute:

    $ bundle


## Usage:

In your UIViewController

    include MotionSocial::Sharing

Define the following methods:

    def sharing_message
    def sharing_url
    def controller

When you want to display the sharing dialogs just use: 

    postToTwitter(sender)
    postToFacebook(sender)

or display a dialog with Facebook and Twitter as options:

    display_share_dialog
