//
//  APIHandler.swift
//  CAPlusTDD
//
//  Created by Shashwat Mishra on 24/01/2024.
//

import Foundation

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

protocol RequestHandler {
    associatedtype RequestDataType
    func makeRequest(urlString: String, withParams data:RequestDataType) -> URLRequest?
}

protocol ResponseHandler {
    associatedtype ResponseDataType
    func parseResponse(data: Data) throws -> ResponseDataType
}

typealias APIHandler = RequestHandler & ResponseHandler
