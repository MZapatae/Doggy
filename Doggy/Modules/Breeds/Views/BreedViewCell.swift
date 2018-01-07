//
//  BreedViewCell.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import UIKit

class BreedViewCell: UITableViewCell {
  @IBOutlet weak var breedNameLabel: UILabel!
  
  func setupCell(_ breed: Breed) {
    let uppercaseFirstLetter = breed.name.uppercased().dropLast(breed.name.count - 1)
    let breedNameWithoutFirstLetter = breed.name.dropFirst()
    breedNameLabel.text = "\(uppercaseFirstLetter)\(breedNameWithoutFirstLetter)"
  }
  
}
