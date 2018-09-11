//
//  VehicleViewController.swift
//  mvvm-c
//
//  Created by Janne Salenius on 2018-09-11.
//  Copyright © 2018 Salenius Code AB. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

final class VehicleViewController: UIViewController {
  
  let disposeBag: DisposeBag = DisposeBag()
  var viewModel: EngineType {
    didSet {
      setup()
    }
  }
  
  init(viewModel: EngineType) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    self.view.backgroundColor = UIColor.lightGray
  }
}

extension VehicleViewController {
  private func setup() {
    self.viewModel
      .startEngine
      .subscribe { event in
        // change label
      }
      .disposed(by: disposeBag)
  }
}
