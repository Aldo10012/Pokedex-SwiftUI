//
//  Pokemon.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/13/21.
//

import Foundation

struct Pokemon: Codable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let imageUrl: String
    
    let attack: Int
    let defense: Int
    let description: String
    let height: Int
    let weight: Int
    
}

let MOCH_DATA: [Pokemon] = [
    Pokemon(id: 0, name: "Bulbasuar", type: "poison", imageUrl: bulbasurImageURL, attack: 10, defense: 10, description: "10", height: 10, weight: 10),
    Pokemon(id: 1, name: "Bulbasuar", type: "poison", imageUrl: bulbasurImageURL, attack: 10, defense: 10, description: "10", height: 10, weight: 10),
    Pokemon(id: 2, name: "Bulbasuar", type: "poison", imageUrl: bulbasurImageURL, attack: 10, defense: 10, description: "10", height: 10, weight: 10),
    Pokemon(id: 3, name: "Bulbasuar", type: "poison", imageUrl: bulbasurImageURL, attack: 10, defense: 10, description: "10", height: 10, weight: 10),
    Pokemon(id: 4, name: "Bulbasuar", type: "poison", imageUrl: bulbasurImageURL, attack: 10, defense: 10, description: "10", height: 10, weight: 10),
    Pokemon(id: 5, name: "Bulbasuar", type: "poison", imageUrl: bulbasurImageURL, attack: 10, defense: 10, description: "10", height: 10, weight: 10),
    Pokemon(id: 6, name: "Bulbasuar", type: "poison", imageUrl: bulbasurImageURL, attack: 10, defense: 10, description: "10", height: 10, weight: 10),
    Pokemon(id: 7, name: "Bulbasuar", type: "poison", imageUrl: bulbasurImageURL, attack: 10, defense: 10, description: "10", height: 10, weight: 10),
    Pokemon(id: 8, name: "Bulbasuar", type: "poison", imageUrl: bulbasurImageURL, attack: 10, defense: 10, description: "10", height: 10, weight: 10),
    Pokemon(id: 9, name: "Bulbasuar", type: "poison", imageUrl: bulbasurImageURL, attack: 10, defense: 10, description: "10", height: 10, weight: 10)
]
