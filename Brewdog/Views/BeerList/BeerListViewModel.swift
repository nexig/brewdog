//
//  BeerListViewModel.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

class BeerListViewModel: ObservableObject {
    
    private var beerService: BeerServiceProtocol
    @Published var beers: [BeerDTO] = []
    
    init(beerService: BeerServiceProtocol) {
        self.beerService = beerService
        getBeers()
    }
    
    private func getBeers() {
        beerService.getBeers { [weak self] response, error in
            if let beers = response?.content {
                self?.beers = beers
            }
        }
    }
    
}
