//
//  EngineViewModel.swift
//  mvvm-c
//
//  Created by Janne Salenius on 2018-09-11.
//  Copyright © 2018 Salenius Code AB. All rights reserved.
//

import Foundation
import RxSwift

protocol EngineType {
  var startEngine: Observable<Bool> { get }
}

struct ElectricEngineViewModel: EngineType {
  let startEngine: Observable<Bool> = Observable.never()
}
