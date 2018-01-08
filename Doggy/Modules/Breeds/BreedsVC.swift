//
//  BreedsVC.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit
import PKHUD

class BreedsVC: UIViewController {
  @IBOutlet weak var breedsTableView: UITableView!
  
  var presenter: BreedsPresentation!
  
  var breeds: [Breed] = [] {
    didSet {
      breedsTableView.reloadData()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    presenter.viewDidLoad()
  }
  
  func setupView() {
    navigationItem.title = "Razas"
    breedsTableView.delegate = self
    breedsTableView.dataSource = self
    breedsTableView.register(BreedViewCell.self)
  }
}

//Mark: BreedsView methods

extension BreedsVC: BreedsView {
  
  func showLoadingIndicator() {
    HUD.show(.progress)
  }
  
  func hideLoadingIndicator() {
    HUD.hide()
  }
  
  func showBreedsData(_ breeds: [Breed]) {
    self.breeds = breeds
    breedsTableView.separatorStyle = .singleLine
    breedsTableView.isHidden = false
  }
  
  func showNoDataScreen() {
    breedsTableView.separatorStyle = .none
    breedsTableView.isHidden = true
  }
  
}

//Mark: UITableView Delegate methods

extension BreedsVC: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    presenter.didSelectedBrew(breeds[indexPath.row])
    tableView.deselectRow(at: indexPath, animated: true)
  }
  
}

//Mark: UITableView Datasource methods

extension BreedsVC: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return breeds.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as BreedViewCell
    cell.setupCellData(breeds[indexPath.row])
    return cell
  }

}

