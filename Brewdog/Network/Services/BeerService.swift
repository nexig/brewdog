//
//  BeerService.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation

protocol BeerServiceProtocol {
    func getBeers(completion: @escaping (NetworkResponse<[BeerDTO]>?, Error?) -> Void)
}

class BeerService: NetworkService, BeerServiceProtocol {
    func getBeers(completion: @escaping (NetworkResponse<[BeerDTO]>?, Error?) -> Void) {
        let request = GetBeersRequest()
        execute(request: request) { response, error in
            completion(response, error)
        }
    }
}

