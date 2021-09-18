//
//  ContentView.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/13/21.
//

import SwiftUI

struct PokedexView: View {
    
    private let girItem = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: girItem, spacing: 16) {
                    ForEach(0..<151) { _ in
                        PokemonCell2(pokemon: MOCH_DATA[0])
                    }
                }
            }
            .navigationTitle("Pokemon")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}


let bulbasurImageURL = "https://cdn2.bulbagarden.net/upload/thumb/2/21/001Bulbasaur.png/250px-001Bulbasaur.png"





