module Sharing
  include MotionSocial::Sharing                                                                                               
  def controller
    self
  end

  def sharing_message
    "Should I eat " + @input.text + "? via @mealsapp"
  end

  def sharing_url
    "http://www.meals.mx"
  end
end



class MainController < UIViewController

  include Sharing

  def viewDidLoad
    add_button
  end

  def add_button 
    boton = UIButton.buttonWithType(UIButtonTypeCustom)
    boton.setTitle("Display Social", forState:UIControlStateNormal)
    boton.frame = CGRectMake(100,100,200,40)
    boton.setTitleColor(UIColor.whiteColor, forState:UIControlStateNormal)
    boton.addTarget(self, action:"display_social", forControlEvents:UIControlEventTouchUpInside)
    boton.backgroundColor = UIColor.greenColor
    view.addSubview(boton)
    boton
  end

  def display_social
    display_share_dialog
  end

end
