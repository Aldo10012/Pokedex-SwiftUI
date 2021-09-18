//
//  PokemonCell2.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/18/21.
//

import SwiftUI

struct PokemonCell2: View {
    var body: some View {
        ZStack() {
            VStack(alignment: .leading) {
                Text("Bulbasuar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 4)
                    .padding(.leading)
                
                HStack() {
                    Text("Poison")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.2))
                        )
                        .frame(width: 100, height: 24)
                    
                    Image(uiImage: bulbasurImageURL.load())
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 8)
                }
            }
        }
        .background(Color.green)
        .cornerRadius(12 )
        .shadow(color: .green, radius: 6, x: 0, y: 0)
    }
}

struct PokemonCell2_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCell2()
    }
}

