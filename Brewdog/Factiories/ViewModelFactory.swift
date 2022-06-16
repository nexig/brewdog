//
//  ViewModelFactory.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

protocol ViewModelFactory {
    
    func makeBeerListViewModel() -> BeerListViewModel
    
}

