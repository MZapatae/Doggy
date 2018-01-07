//
//  BreedDetailContract.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit

protocol BreedDetailView: class {
  var presenter: BreedDetailPresentation! { get set }
  
}

protocol BreedDetailPresentation: class {
  weak var view: BreedDetailView? { get set }
  var interactor: BreedDetailUsesCase! { get set }
  var router: BreedDetailWireframe! { get set }
  
}

protocol BreedDetailUsesCase: class {
  weak var output: BreedDetailInteractorOutput! { get set }
  
}

protocol BreedDetailInteractorOutput: class {
  
}

protocol BreedDetailWireframe: class {
  weak var viewController: UIViewController? { get set }
  
  static func assembleModule() -> UIViewController
}

