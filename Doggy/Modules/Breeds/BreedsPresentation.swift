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
  
  func viewDidLoad() {
    interactor.fetchBreeds()
  }
}

extension BreedsPresenter: BreedsInteractorOutput {
  
}
