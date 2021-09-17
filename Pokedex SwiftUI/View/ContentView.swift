//
//  ContentView.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/13/21.
//

import SwiftUI

struct ContentView: View {
    
    let tempData = tempDataModel
    let apiClient = APIClient()
    @State var pokemonList: [Pokemon] = []
    
    let layout = [
        GridItem(.adaptive(minimum: screen.width*0.4, maximum: screen.width*0.4))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(pokemonList) { pokemon in
                        PokemonCell(image: pokemon.url, name: pokemon.name)
                    }
                }
            }.navigationTitle("Pokemon")
            .onAppear(perform: {
                print("onAppear did work!")
                apiClient.getData { result in
                    switch result {
                    case let .success(pokemonList):
                        self.pokemonList = pokemonList
                    case let .failure(error):
                        print(error)
                    }
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        PokemonCell(image: "https://cdn2.bulbagarden.net/upload/thumb/2/21/001Bulbasaur.png/250px-001Bulbasaur.png", name: "Bulbasur")
    }
}




let tempDataModel = [
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL),
    Pokemon(name: "Bulbasur", url: bulbasurImageURL)
]

let bulbasurImageURL = "https://cdn2.bulbagarden.net/upload/thumb/2/21/001Bulbasaur.png/250px-001Bulbasaur.png"





