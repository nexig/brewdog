//
//  TempDetailsDTO.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

struct TempDetailsDTO: Codable {
    let id = UUID().uuidString
    var value: Int?
    var unit: String?
}
