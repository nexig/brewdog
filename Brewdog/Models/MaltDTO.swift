//
//  MaltDTO.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

struct MaltDTO: Codable {
    let id: String? = UUID().uuidString
    var name: String?
}
