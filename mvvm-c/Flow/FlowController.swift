//
//  FlowController.swift
//  mvvm-c
//
//  Created by Janne Salenius on 2018-09-11.
//  Copyright © 2018 Salenius Code AB. All rights reserved.
//

import Foundation
import UIKit

struct FlowConfigure {
  var window: UIWindow
}

protocol FlowController {
  func start()
}
