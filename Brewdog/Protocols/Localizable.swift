//
//  Localizable.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

protocol Localizable {
    var localized: String { get }
}

extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    var localized: String {
        return rawValue.localized()
    }
}

enum LoaderStrings: String, Localizable {

    case beerListViewTitle = "Beer.list.view.title"
    case beerDetailsUnknowName = "Beer.details.unknow.name"
    case beerDetailsABV = "Beer.details.abv"
    case beerDetailsHops = "Beer.details.hops"
    case beerDetailsMalts = "Beer.details.malts"
    case beerDetailsMethods = "Beer.details.methods"
    case beerDetailsMethodsMash = "Beer.details.methods.mash"
    case beerDetailsMethodsFermentation = "Beer.details.methods.fermentation"
}
