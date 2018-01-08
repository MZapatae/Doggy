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
    navigationBar.isTranslucent = false
    navigationBar.barTintColor = UIColor(named: "NavigationBar")
    navigationBar.tintColor = .white
    navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
  }
  
  override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
  }
  
}

