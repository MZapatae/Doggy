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
    ApiClient.sharedInstance.request(API.getBreeds(), onSuccess: { (response) in
      if let breedNames = response.breeds {
        var breeds: [Breed] = []
        for breedName in breedNames {
          breeds.append(Breed(name: breedName))
        }
        self.output.breedsFetched(breeds)
      }
    
    }) { (error) in
      self.output.breedsFetchFailed(error)
    }
  }
}
