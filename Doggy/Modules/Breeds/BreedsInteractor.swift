//
//  BreedsInteractor.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import Foundation

class BreedsInteractor: BreedsUsesCase {
  weak var output: BreedsInteractorOutput!
  
  func fetchBreeds() {
    print("Fetching Breed...")
    ApiClient.sharedInstance.request(API.getBreeds(), onSuccess: { (breedsResponse) in
      //WIP
    }) { (error) in
      //WIP
    }
  }
}
