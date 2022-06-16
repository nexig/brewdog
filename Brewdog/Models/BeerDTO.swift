//
//  BeerDTO.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

struct BeerDTO: Codable, Identifiable {
    
    var id: Int? = 0
    var name: String?
    var description: String?
    var image_url: String?
    var abv: Double?
    var ingredients: IngredientsDTO?
    var method: MethodDTO?
}
