//
//  BreedDetailPresentation.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import Foundation

class BreedDetailPresenter: BreedDetailPresentation {
  weak var view: BreedDetailView?
  var interactor: BreedDetailUsesCase!
  var router: BreedDetailWireframe!
  
  var selectedBreedName: String!
  var breedImages: [BreedImage] = [] {
    didSet {
      if breedImages.isEmpty {
        view?.showNoDataScreen()
      } else {
        view?.showBreedImagesData(breedImages)
      }
    }
  }
  
  func viewWillApeear(_ animated: Bool) {
    view?.setupView(navBarTitle: selectedBreedName)
  }
  
  func viewDidLoad() {
    view?.showLoadingIndicator()
    interactor.fetchBreedImages(breedName: selectedBreedName)
  }
}

extension BreedDetailPresenter: BreedDetailInteractorOutput {
  
  func breedImagesFetched(_ breedImages: [BreedImage]) {
    self.breedImages = breedImages
    view?.hideLoadingIndicator()
  }
  
  func breedImagesFetchFailed(_ error: Error) {
    view?.showNoDataScreen()
    view?.hideLoadingIndicator()
    router.presentAlertDialog(message: error.localizedDescription)
  }
}
