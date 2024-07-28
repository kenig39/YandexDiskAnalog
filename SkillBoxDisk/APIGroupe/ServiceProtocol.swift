//
//  File.swift
//  SkillBoxDisk
//
//  Created by Alexander on 24.05.2024.
//

import Foundation

protocol ServiceProtocol {
    var session: URLSession {get}
}

extension ServiceProtocol {
    
    
    
    
    
    func parseDecodable<T : Decodable>(completion: @escaping (Result<T, APIError>) -> Void) -> (Result<Data, APIError>) -> Void {
        return { result in
            switch result {
            case .success(let data):
                do {
                    let jsonDecoder = JSONDecoder()
                    let object = try jsonDecoder.decode(T.self, from: data)
                    DispatchQueue.main.async {
                        completion(.success(object))
                        print("\(data)")
                    }
                } catch let decodingError as DecodingError {
                    DispatchQueue.main.async {
                        completion(.failure(.decodingError(decodingError)))
                    }
                } catch {
                    print("Unhandled error raised.")
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
}


