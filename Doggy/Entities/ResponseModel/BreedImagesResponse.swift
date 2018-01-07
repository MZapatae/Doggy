//
//  BreedImagesResponse.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 07-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import ObjectMapper

struct BreedImagesResponse {
  var status: String?
  var images: [String]?
}

extension BreedImagesResponse: Mappable {
  init?(map: Map) {
    guard map.JSON["status"] != nil else { return nil }
    guard map.JSON["message"] != nil else { return nil }
  }
  
  mutating func mapping(map: Map) {
    status <- map["status"]
    images <- map["message"]
  }
}
