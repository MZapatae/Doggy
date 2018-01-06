//
//  BreedsVC.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit

class BreedsVC: UIViewController {
  var presenter: BreedsPresentation!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
    presenter.viewDidLoad()
  }
  
  func configureView() {
    navigationItem.title = "Razas"
  }
}

extension BreedsVC: BreedsView {
  
}
