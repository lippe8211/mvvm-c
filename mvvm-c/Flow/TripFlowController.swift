//
//  TripFlowController.swift
//  mvvm-c
//
//  Created by Janne Salenius on 2018-09-11.
//  Copyright © 2018 Salenius Code AB. All rights reserved.
//

import Foundation
import UIKit


final class TripFlowController: FlowController {
  
  var configure: FlowConfigure
  let viewController: UIViewController
  
  init(configure: FlowConfigure,
       viewController: UIViewController) {
    self.configure = configure
    self.viewController = viewController
  }
  
  func start() {
    self.configure.window.rootViewController = self.viewController
  }
}
