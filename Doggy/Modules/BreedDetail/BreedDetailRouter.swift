//
//  BreedDetailRouter.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit

class BreedDetailRouter: BreedDetailWireframe {
  
  weak var viewController: UIViewController?
  
  static func assembleModule(breedName: String) -> UIViewController {
    let view = BreedDetailVC(nibName: "BreedDetailView", bundle: nil)
    let presenter = BreedDetailPresenter()
    let interactor = BreedDetailInteractor()
    let router = BreedDetailRouter()
    
    view.presenter = presenter
    
    presenter.view = view
    presenter.interactor = interactor
    presenter.router = router
    presenter.selectedBreedName = breedName
    
    interactor.output = presenter
    
    router.viewController = view
    
    return view
  }
  
  func presentAlertDialog(message: String) {
    let alert = UIAlertController(title: "Alerta", message: message, preferredStyle: UIAlertControllerStyle.alert)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
    viewController?.present(alert, animated: true, completion: nil)
  }
}
