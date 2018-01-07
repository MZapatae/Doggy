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
}

extension BreedDetailPresenter: BreedDetailInteractorOutput {
  
}
