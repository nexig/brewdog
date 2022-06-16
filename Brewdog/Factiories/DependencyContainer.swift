//
//  DependencyContainer.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation
import SwiftUI

protocol DependencyContainerProtocol {
    
    func register<Component>(type: Component.Type, component: Any)
    func resolve<Component>(type: Component.Type) -> Component?
    
}

final class DependencyContainer: DependencyContainerProtocol {
    
    static let shared = DependencyContainer()
    
    private init() {
        register(type: BeerServiceProtocol.self, component: BeerService()!)
    }
    
    var components: [String: Any] = [:]
    
    func register<Component>(type: Component.Type, component: Any) {
        components["\(type)"] = component
    }
    
    func resolve<Component>(type: Component.Type) -> Component? {
        return components["\(type)"] as? Component
    }

}

extension DependencyContainer: ViewModelFactory {
    
    func makeBeerListViewModel() -> BeerListViewModel {
        return BeerListViewModel(beerService: DependencyContainer.shared.resolve(type: BeerServiceProtocol.self)!)
    }
    
}


