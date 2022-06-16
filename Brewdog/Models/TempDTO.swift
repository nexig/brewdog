//
//  TempDTO.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

struct TempDTO: Codable {
    let id = UUID().uuidString
    var temp: TempDetailsDTO?
}
