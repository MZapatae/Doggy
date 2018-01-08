//
//  BreedDetailVC.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit
import PKHUD

class BreedDetailVC: UIViewController {
  @IBOutlet weak var imagesTableView: UITableView!
  
  var presenter: BreedDetailPresentation!
  
  var breedImages: [BreedImage] = [] {
    didSet {
      imagesTableView.reloadData()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    presenter.viewDidLoad()
  }
  
  func setupView() {
    imagesTableView.dataSource = self
    imagesTableView.register(BreedImageViewCell.self)
  }
}

extension BreedDetailVC: BreedDetailView {
  
  func showLoadingIndicator() {
    HUD.show(.progress)
  }
  
  func hideLoadingIndicator() {
    HUD.hide()
  }
  
  func showBreedImagesData(_ breedImages: [BreedImage]) {
    self.breedImages = breedImages
    imagesTableView.separatorStyle = .singleLine
    imagesTableView.isHidden = false
  }
  
  func showNoDataScreen() {
    imagesTableView.separatorStyle = .none
    imagesTableView.isHidden = true
  }
  
}

extension BreedDetailVC: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return breedImages.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as BreedImageViewCell
    cell.setupCellData(imageUrl: breedImages[indexPath.row].imageUrl)
    return cell
  }
  
}
