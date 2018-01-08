//
//  BreedImageViewCell.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 07-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit
import Kingfisher

class BreedImageViewCell: UITableViewCell {
  @IBOutlet weak var breedImage: UIImageView!
  
  func setupCellData(imageUrl: String)  {
    KingfisherManager.shared.cache.clearMemoryCache()
    breedImage.kf.setImage(with: URL(string: imageUrl))
  }
}
