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
                    
                    Text(pokemon.type.capitalized)
                        .font(.subheadline)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .frame(width: 100, height: 34)
                        .background(backgroundColor)
                        .cornerRadius(16)
                    
                    Text(pokemon.description)
                        .font(.headline)
                        .fontWeight(.medium)
                        .padding(.horizontal, 20)
                    
                    HStack {
                        Text("Stats")
                            .font(.title3).bold()
                            .padding(.horizontal, 20)
                        Spacer()
                    }
                    
                    Spacer()
                }
                
                .frame(width: Screen.width, height: Screen.height*(0.7))
                .background(Color.white)
                .cornerRadius(30)
            }
        }
    }
}

//struct InfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        InfoView()
//    }
//}




