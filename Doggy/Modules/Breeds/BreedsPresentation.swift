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
  
  func didSelectedBrew(_ breed: Breed) {
    router.pushBreedDetail(breedName: breed.name)
  }
}

extension BreedsPresenter: BreedsInteractorOutput {
  
  func breedsFetched(_ breeds: [Breed]) {
    self.breeds = breeds
    view?.hideLoadingIndicator()
  }
  
  func breedsFetchFailed(_ error: Error) {
    view?.showNoDataScreen()
    view?.hideLoadingIndicator()
    //TODO: Show message with error via Router
  }
  
}
