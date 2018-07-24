//
//  Product.swift
//  product-hunt
//
//  Created by Yves Songolo on 7/23/18.
//  Copyright © 2018 Yves Songolo. All rights reserved.
//

import Foundation

struct Product: Decodable{
    let id: Int
    let name: String
    let title: String?
    let collection_url: URL
    let user: User
}

struct User: Decodable{
    let name: String
    let headline: String
    let image_url : [String]
}

struct Collection: Decodable{
    let collections: [Product]
}
