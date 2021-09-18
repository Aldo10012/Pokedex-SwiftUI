//
//  PokemonViewModel.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/18/21.
//

import Foundation
import SwiftUI

class PokemonViewModel: ObservableObject {
    @Published var pokemon = [Pokemon]()
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    let urlSession = URLSession.shared
    
    init() {
        fetchPokemon { result in
            switch result {
            case let .success(pokemon):
                self.pokemon = pokemon
            case let .failure(error):
                print(error)
            }
        }
    }
    
    func fetchPokemon(completion: @escaping (Result<[Pokemon]>) -> () ) {
        guard let url = URL(string: baseURL) else {return}
        let request = URLRequest(url: url)
        
        urlSession.dataTask(with: request) { data, response, error in
            if let error = error {
                return completion(Result.failure(error))
            }
            
            guard let data = data?.parseData(removeString: "null,") else {
                return completion(Result.failure(EndPointError.noData))
            }
            
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else {
                return completion(Result.failure(EndPointError.couldNotParse))
            }
            
            DispatchQueue.main.sync {
                self.pokemon = pokemon
            }
        }.resume()
        
    }
}

extension Data {
    func parseData(removeString string: String) -> Data? {
        /// this is meant to remove the nul value for the JSON
        
        let dataAsString = String(data: self, encoding: .utf8)                              /// convert data into string
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")     /// remove nil
        guard let data = parsedDataString?.data(using: .utf8) else {return nil}             /// convert string back into data
        return data
    }
}
