//
//  MethodDTO.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

struct MethodDTO: Codable {
    var mash_temp: [TempDTO]?
    var fermentation: TempDTO?
}
