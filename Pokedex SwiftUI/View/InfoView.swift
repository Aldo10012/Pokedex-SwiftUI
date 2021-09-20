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
                    
                    HStack {
                        Text("Stats")
                            .font(.title3).bold()
                            .padding(.horizontal, 20)
                        Spacer()
                    }
                    
                    StatView(lable: "Height", stat: 7)
                    StatView(lable: "Attack", stat: 49)
                    StatView(lable: "Defense", stat: 49)
                    StatView(lable: "Weight", stat: 69)
                    
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

struct StatView: View {
    let lable: String
    let stat: Int
    
    init(lable: String, stat: Int) {
        self.lable = lable
        self.stat = stat
    }
    
    var body: some View {
        HStack(spacing: 30) {
            Text(lable)
                .font(.system(size: 22))
                .foregroundColor(.gray)
            
            Text("\(stat)")
                .font(.system(size: 22))
                .foregroundColor(.gray)
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: 200, height: 20)
                    .foregroundColor(Color.black.opacity(0.1))
                
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: 100, height: 20)
                    .foregroundColor(Color.black.opacity(0.1))
            }
            
            
        }
    }
}
