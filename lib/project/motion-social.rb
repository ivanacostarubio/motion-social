module MotionSocial
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
    # When you want to display the sharing dialogs just use: 
    #
    # postToTwitter(sender)
    # postToFacebook(sender)
    #
    # or display a dialog with Facebook and Twitter as options:
    #
    # display_share_dialog
    #
    def post_to_twitter
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

    def post_to_facebook
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
      message = UIAlertView.alloc.initWithTitle("Something is wrong",
        message:"You don't have #{service} configured. Please go to your phone's settings and configure it.",
        delegate:nil, cancelButtonTitle:"OK", otherButtonTitles:nil)
      message.show
    end

    def display_share_dialog(sender=nil)
      cancelTitle = "Not now"
      actionSheet = UIActionSheet.alloc.initWithTitle(nil,delegate:self,
                                                      cancelButtonTitle:"Cancel",
                                                      destructiveButtonTitle:nil,
                                                      otherButtonTitles: nil)
      actionSheet.addButtonWithTitle("Twitter")
      actionSheet.addButtonWithTitle("Facebook")
      actionSheet.showInView(self.controller.view)
    end

    def actionSheet(actionSheet, clickedButtonAtIndex:buttonIndex)
      if buttonIndex == 2
        postToFacebook(nil)
      elsif buttonIndex == 1
        postToTwitter(nil)
      end
    end
  end
end
