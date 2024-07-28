//
//  APIError.swift
//  SkillBoxDisk
//
//  Created by Alexander on 24.05.2024.
//

import Foundation


enum APIError: Error {
    case netWorkError(Error)
    case serverError
    case requestError(Int, String)
    case invavidResponse
    case decodingError(DecodingError)
    
    var localizedDescription: String {
        switch self {
        case .netWorkError(let error):
            return "Error sending request: \(error.localizedDescription)"
        case .serverError:
            return "HTTP 500 Server Error"
        case .requestError(let status, let body):
            return "HTTP \(status), \(body)"
        case .invavidResponse:
            return "Invalide Responce"
        case .decodingError(let error):
            return "Decoding error: \(error.localizedDescription)"
        }
    }
}
