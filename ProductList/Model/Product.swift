//
//  Product.swift
//  ProductList
//
//  Created by Shah, Kunal on 2/26/20.
//  Copyright © 2020 Shah, Kunal. All rights reserved.
//

import SwiftUI

struct Products: Decodable {
    let data: [Product]
}

struct Product: Hashable, Codable, Identifiable {
    var id: String
    var name: String
    var price: String
    var thumbnail: String
}
