//
//  AppDelegate.swift
//  mvvm-c
//
//  Created by Janne Salenius on 2018-09-11.
//  Copyright © 2018 Salenius Code AB. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    self.window = UIWindow(frame: UIScreen.main.bounds)
    
    guard let window = self.window else { return false }
    window.makeKeyAndVisible()

    let flowConfigure = FlowConfigure(window: window)
    
    let flowController = TripFlowController(configure: flowConfigure,
                       viewController: VehicleViewController(viewModel: ElectricEngine()))
    
    flowController.start()
    return true
  }
}

