//
//  APIClient.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/13/21.
//

import Foundation

class APIClient {
    let urlSession = URLSession.shared
    var baseURL = "https://pokeapi.co/api/v2/pokemon/"
    
    func getData(completion: @escaping (Result<[Pokemon]>) -> () ) {
        let query = "?offset=0&limit=151" /// to get all Gen 1 pokemon
        let fullURL = URL(string: baseURL + query)!
        let request = URLRequest(url: fullURL)
        
        let task = urlSession.dataTask(with: request) { data, responce, error in
            if let error = error {
                return completion(Result.failure(error))
            }
            
            guard let data = data else {
                return completion(Result.failure(EndPointError.noData))
            }
            
            guard let result = try? JSONDecoder().decode(PokemonList.self, from: data) else {
                return completion(Result.failure(EndPointError.couldNotParse))
            }
            
            print(result)
            
            DispatchQueue.main.async {
                completion(Result.success(result.results))
                print("HI")
            }
        }
        task.resume()
        
    }
}

/// Use this URL, shows all Gen 1 pokemon
/// https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151

enum Result<T> {
   case success(T)
   case failure(Error)
}

enum EndPointError: Error {
    case couldNotParse
    case noData
}
