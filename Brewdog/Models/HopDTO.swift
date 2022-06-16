//
//  HoopDTO.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

struct HopDTO: Codable {
    let id = UUID().uuidString
    var name: String?
}
