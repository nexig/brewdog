//
//  NetworkError.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation
import Alamofire

public struct NetworkError: Error {
    
    public var message: String?
    public var code: Int?
    public var domain: URL?
    public var error: NSError?
    
    init() {
        
    }
    
    init(error: AFError) {
        message = error.localizedDescription
        code = error.responseCode
        domain = error.url
        self.error =  (error as NSError)
    }
}


