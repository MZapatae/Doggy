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
  
  func showLoadingIndicator()
  func hideLoadingIndicator()
  func showBreedsData(_ breeds: [Breed])
  func showNoDataScreen()
}

protocol BreedsPresentation: class {
  weak var view: BreedsView? { get set }
  var interactor: BreedsUsesCase! { get set }
  var router: BreedsWireframe! { get set }
  
  func viewDidLoad()
  func didSelectedBrew(_ breed: Breed)
}

protocol BreedsUsesCase: class {
  weak var output: BreedsInteractorOutput! { get set }
  
  func fetchBreeds()
}

protocol BreedsInteractorOutput: class {
  func breedsFetched(_ breeds: [Breed])
  func breedsFetchFailed(_ error: Error)
}

protocol BreedsWireframe: class {
  weak var viewController: UIViewController? { get set }
  
  static func assembleModule() -> UIViewController
  
  func pushBreedDetail(breedName name: String)
}

