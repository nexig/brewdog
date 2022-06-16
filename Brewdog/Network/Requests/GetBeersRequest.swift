//
//  GetBeersRequest.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation
import Alamofire

class GetBeersRequest: NetworkRequest {

    public var path: String {
        return "/beers"
    }
    
    public var httpMethod: HTTPMethod {
        return .get
    }
    
    public var headers: HTTPHeaders? {
        return nil
    }
    
    public var parameters: Parameters? {
        return nil
    }
    
    public var encoding: ParameterEncoding {
        return JSONEncoding.default
    }
    
    public var jsonData: Data? {
        return nil
    }
    
    init() {
        
    }
}

