//
//  BreedsContract.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit

protocol BreedsView: class {
  var presenter: BreedsPresentation! { get set }
  
  //Methods to communicate Presenter -> View
}

protocol BreedsPresentation: class {
  weak var view: BreedsView? { get set }
  var interactor: BreedsUsesCase! { get set }
  var router: BreedsWireframe! { get set }
  
  //Methods to communicate and notify from View -> Presenter
}

protocol BreedsUsesCase: class {
  weak var output: BreedsInteractorOutput! { get set }
  
  //Methods to communicate Presenter -> Interactor
}

protocol BreedsInteractorOutput: class {
  
  //Methods to communicate Interactor -> Presenter
}

protocol BreedsWireframe: class {
  weak var viewController: UIViewController? { get set }
  
  //Methods to communicate Presenter -> Router
  static func assembleModule() -> UIViewController
}

