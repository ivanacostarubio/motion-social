
class AppDelegate

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    main_controller = MainController.alloc.init
    navigation_controller = UINavigationController.alloc.initWithRootViewController(main_controller)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = main_controller
    @window.makeKeyAndVisible
    true
  end

end
