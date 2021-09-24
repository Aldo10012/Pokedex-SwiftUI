//
//  InfoView.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/20/21.
//

import SwiftUI
import KingfisherSwiftUI


struct InfoView: View {
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    let backgroundColor: Color
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(forType: pokemon.type))
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .frame(width: Screen.width, height: Screen.height)
                .foregroundColor(backgroundColor)
            
            VStack {
                Spacer()
                KFImage(URL(string: pokemon.imageUrl))
                    .resizable()
                    .frame(width: 175, height: 175)
                    .offset(y: 0)
                
                VStack(spacing: 20) {
                    
                    
                    Text(pokemon.name.capitalized)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    
                    PillView2(type: pokemon.type.capitalized, color: backgroundColor)
                    
                    Text(pokemon.description)
                        .font(.headline)
                        .fontWeight(.medium)
                        .padding(.horizontal, 20)
                    
                    HStack(spacing: 50) {
                        
                        VStack() {
                            Text("\(pokemon.weight) Kg")
                                .font(.system(size: 28, weight: .semibold, design: .default))
                                .padding(.bottom, 4)
                            Text("Weight")
                                .font(.system(size: 20, weight: .regular, design: .default))
                        }
                        
                        VStack() {
                            Text("\(pokemon.height) M")
                                .font(.system(size: 28, weight: .semibold, design: .default))
                                .padding(.bottom, 4)
                            Text("Height")
                                .font(.system(size: 20, weight: .regular, design: .default))
                        }
                    }
                    
                    Text("Stats")
                        .font(.title3).bold()
                        .padding(.horizontal, 20)
                        .frame(width: Screen.width, alignment: .leading)
                    
                    
                    StatView(lable: "ATK", stat: pokemon.attack, color: .red)
                    StatView(lable: "DEF", stat: pokemon.defense, color: .blue)
                    
                    Spacer()
                }
                
                .frame(width: Screen.width, height: Screen.height*(0.7))
                .background(Color.white)
                .cornerRadius(30)
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(pokemon: samplePokemon, viewModel: samplePokemonViewModel)
    }
}

let samplePokemon = Pokemon(id: 0,
                            name: "Bulbasuar",
                            type: "poison",
                            imageUrl: bulbasurImageURL,
                            attack: 20,
                            defense: 12,
                            description: "Littls green monster that wonders the forest. Bulbasuars are vary calm and friendly creatures",
                            height: 10, weight: 12)

let samplePokemonViewModel = PokemonViewModel()
