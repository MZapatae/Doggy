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
  
}

protocol BreedsPresentation: class {
  weak var view: BreedsView? { get set }
  var interactor: BreedsUsesCase! { get set }
  var router: BreedsWireframe! { get set }
  
  func viewDidLoad()
}

protocol BreedsUsesCase: class {
  weak var output: BreedsInteractorOutput! { get set }
  
  func fetchBreeds()
}

protocol BreedsInteractorOutput: class {

}

protocol BreedsWireframe: class {
  weak var viewController: UIViewController? { get set }
  
  static func assembleModule() -> UIViewController
}

