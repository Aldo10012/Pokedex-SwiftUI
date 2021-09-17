//
//  Pokemon.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/13/21.
//

import Foundation

struct PokemonList: Codable, Identifiable {
    var id = UUID()
    let results: [Pokemon]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
    
}


struct Pokemon: Codable, Identifiable {
    var id = UUID()
    let name: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case name, url
    }
}

