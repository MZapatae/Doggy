//
//  BreedsPresentation.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import Foundation

class BreedsPresenter: BreedsPresentation {
  weak var view: BreedsView?
  var interactor: BreedsUsesCase!
  var router: BreedsWireframe!
  
  var breeds: [Breed] = [] {
    didSet {
      if breeds.isEmpty {
        view?.showNoDataScreen()
      } else {
        view?.showBreedsData(breeds)
      }
    }
  }
  
  func viewDidLoad() {
    view?.showLoadingIndicator()
    interactor.fetchBreeds()
  }
}

extension BreedsPresenter: BreedsInteractorOutput {
  
  func breedsFetched(_ breeds: [Breed]) {
    self.breeds = breeds
    view?.hideLoadingIndicator()
  }
  
  func breedsFetchFailed(_ error: Error) {
    view?.hideLoadingIndicator()
    view?.showNoDataScreen()
    //TODO: Show message with error via Router
  }
  
}
