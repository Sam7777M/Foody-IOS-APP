//
//  RecipeAPI.swift
//  CAPlusTDD
//
//  Created by Shashwat Mishra on 23/01/2024.
//

import Foundation

struct RecipeAPI: APIHandler {
    
    /// Make URLRequest to for Network API Call
    /// - Parameters:
    ///   - urlString: API URL that needs to be called
    ///   - param: query string for URL
    /// - Returns: URLRequest to be used for network call
    func makeRequest(urlString: String, withParams param: [String: Any]) -> URLRequest? {
        if let url = URL(string: urlString) {
            var urlRequest = URLRequest(url: url)
            setDefaultHeaders(request: &urlRequest)
            urlRequest.httpMethod = HTTPMethod.get.rawValue
            return urlRequest
        }
        return nil
    }
    
    func parseResponse(data: Data) throws -> RecipeModel {
        return try defaultParseResponse(data: data)
    }
}
