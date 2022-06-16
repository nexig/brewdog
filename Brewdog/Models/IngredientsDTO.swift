//
//  IngredientsDTO.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

struct IngredientsDTO: Codable {
    var malt: [MaltDTO]?
    var hops: [HopDTO]?
}
