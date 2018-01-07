//
//  API.swift
//  Doggy
//
//  Created by Miguel A. Zapata on 06-01-18.
//  Copyright © 2018 Miguel A. Zapata. All rights reserved.
//

import Foundation

enum API {
  static func getBreeds() -> Endpoint<BreedsResponse> {
    return Endpoint<BreedsResponse>(method: .get, path: "/api/breeds/list")
  }
}
