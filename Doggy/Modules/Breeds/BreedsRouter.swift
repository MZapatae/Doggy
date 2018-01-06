//
//  BreedsRouter.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit

class BreedsRouter: BreedsWireframe {
  weak var viewController: UIViewController?
  
  static func assembleModule() -> UIViewController {
    let view = BreedsVC(nibName: "BreedsView", bundle: nil)
    let presenter = BreedsPresenter()
    let interactor = BreedsInteractor()
    let router = BreedsRouter()
    let navigation = NavController(rootViewController: view)
    
    view.presenter = presenter
    presenter.view = view
    presenter.interactor = interactor
    presenter.router = router
    interactor.output = presenter
    router.viewController = view
    return navigation
  }
}
