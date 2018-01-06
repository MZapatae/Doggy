//
//  NavigationController.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationBar.isTranslucent = true
    navigationBar.barTintColor = UIColor(named: "NavigationBar")
    navigationItem.title = "Doggy"
  }
}

