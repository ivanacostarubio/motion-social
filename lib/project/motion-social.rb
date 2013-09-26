module MontionSocial
  module Sharing
    # Usage:
    # include MotionSocial::Sharing
    #
    # define the following methods:
    #
    # def sharing_message
    # def sharing_url
    # def controller
    #
    def postToTwitter(sender)
      if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter)
        tweetSheet = SLComposeViewController.composeViewControllerForServiceType(SLServiceTypeTwitter)
        tweetSheet.setInitialText(sharing_message)
        url = NSURL.alloc.initWithString(sharing_url)
        tweetSheet.addURL(url)
        controller.presentViewController(tweetSheet,animated:true, completion:nil)
      else
        error_message_for("Twitter")
      end
    end

    def postToFacebook(sender)
      if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook)
        sheet = SLComposeViewController.composeViewControllerForServiceType(SLServiceTypeFacebook)
        sheet.setInitialText(sharing_message)
        url = NSURL.alloc.initWithString(sharing_url)
        sheet.addURL(url)
        controller.presentViewController(sheet,animated:true,completion:nil)        
      else
        error_message_for("Facebook")
      end
    end

    def error_message_for(service)
      App.alert("You don't have #{service} configured. Please go to your phone's settings and configure it.")
    end
  end
end
