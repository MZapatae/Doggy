//
//  NavigationController.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit

class NavController: UINavigationController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationBar.isTranslucent = false
    self.navigationBar.barTintColor = UIColor.init(named: "NavigationBar")
  }
  
}

