//
//  NetworkResponse.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import Foundation
import Alamofire

public struct NetworkResponse<ResponseType: Codable> {
    public let url: String?
    public var statusCode: Int?
    public let content: ResponseType
    
    public init(response: AFDataResponse<Data?>, data: Data) throws {
        url = response.request?.url?.absoluteString
        statusCode = response.response?.statusCode
        content = try JSONDecoder().decode(ResponseType.self, from: data)
    }
}
