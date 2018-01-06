//
//  BreedsResponse.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import ObjectMapper

struct BreedsResponse {
  var status: String?
  var message: [String]?
}

extension BreedsResponse: Mappable {
  init?(map: Map) {
    guard map.JSON["status"] != nil else { return nil }
    guard map.JSON["message"] != nil else { return nil }
  }
  
  mutating func mapping(map: Map) {
    status <- map["status"]
    message <- map["message"]
  }
}
