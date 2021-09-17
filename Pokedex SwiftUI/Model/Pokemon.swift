//
//  Pokemon.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/13/21.
//

import Foundation

struct PokemonList: Codable, Identifiable {
    var id = UUID()
    let pokemon: [Pokemon]
    
    enum CodingKeys: String, CodingKey {
        case pokemon = "results"
    }
}


struct Pokemon: Codable, Identifiable {
    var id = UUID()
    let name: String
    let pokemonInfo: PokemonInfo
    
    enum CodingKeys: String, CodingKey {
        case name
        case pokemonInfo = "url"
    }
}

struct PokemonInfo: Codable, Identifiable {
    var id = UUID()
    let forms: [Form]
    
    enum CodingKeys: String, CodingKey {
        case forms
    }
}

struct Form: Codable, Identifiable {
    var id = UUID()
    let formInfo: FormInfo
    
    enum CodingKeys: String, CodingKey {
        case formInfo = "url"
    }
}

struct FormInfo: Codable, Identifiable {
    var id = UUID()
    let sprites: Sprites
    
    enum CodingKeys: String, CodingKey {
        case sprites
    }
}

struct Sprites: Codable, Identifiable {
    var id = UUID()
    let frontDefault: String
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}
