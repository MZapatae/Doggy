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
  
  func showLoadingIndicator()
  func hideLoadingIndicator()
  func showBreedImagesData(_ breedImages: [BreedImage])
  func showNoDataScreen()
  func setupView(navBarTitle: String)
}

protocol BreedDetailPresentation: class {
  weak var view: BreedDetailView? { get set }
  var interactor: BreedDetailUsesCase! { get set }
  var router: BreedDetailWireframe! { get set }
  
  func viewWillApeear(_ animated: Bool) 
  func viewDidLoad()
}

protocol BreedDetailUsesCase: class {
  weak var output: BreedDetailInteractorOutput! { get set }
  
  func fetchBreedImages(breedName: String)
}

protocol BreedDetailInteractorOutput: class {
  func breedImagesFetched(_ breedImages: [BreedImage])
  func breedImagesFetchFailed(_ error: Error)
}

protocol BreedDetailWireframe: class {
  weak var viewController: UIViewController? { get set }
  
  static func assembleModule(breedName: String) -> UIViewController
}

