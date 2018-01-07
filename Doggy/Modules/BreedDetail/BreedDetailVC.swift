//
//  BreedDetailVC.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit

class BreedDetailVC: UIViewController {
  var presenter: BreedDetailPresentation!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
}

extension BreedDetailVC: BreedDetailView {
  
}
