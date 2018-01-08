//
//  BreedDetailInteractor.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import Foundation

class BreedDetailInteractor: BreedDetailUsesCase {
  weak var output: BreedDetailInteractorOutput!
  
  func fetchBreedImages(breedName: String) {
    print("Fetching Images for breed \(breedName)")
    ApiClient.sharedInstance.request(API.getBreedImages(breedName: breedName), onSuccess: { (response) in
      if let imagesUrl = response.images {
        var breedImages: [BreedImage] = []
        for imageUrl in imagesUrl {
          breedImages.append(BreedImage(imageUrl: imageUrl))
        }
        self.output.breedImagesFetched(breedImages)
      }
    }) { (error) in
      self.output.breedImagesFetchFailed(error)
    }
  }
}
