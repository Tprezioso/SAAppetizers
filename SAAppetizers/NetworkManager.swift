//
//  NetworkManager.swift
//  SAAppetizers
//
//  Created by Thomas Prezioso Jr on 1/11/21.
//

import Foundation


final class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(APError.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let _ = error else {
                completed(.failure(APError.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(APError.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(APError.invalidData))
                return
            }
            
            do {
                let decoder = try JSONDecoder().decode(AppetizerResponse.self, from: data)
                completed(.success(decoder.request))
            } catch {
                completed(.failure(APError.invalidData))
            }
            
        }
        task.resume()
    }
}
