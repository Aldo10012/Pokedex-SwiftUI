//
//  PokemonCardView.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/13/21.
//

import SwiftUI

struct PokemonCell: View {
    @State var image: String
    @State var name: String
    
    var body: some View {
        VStack {
            Image(uiImage: image.load())
                .resizable()
                .frame(width: screen.width*0.3, height: screen.width*0.3)
                .aspectRatio(contentMode: .fill)
                .padding()
            
            Text(name)
                .padding(.bottom, 10)
                .foregroundColor(.white)
                .font(.title)
        }.background(Color.blue)
        .cornerRadius(30)
    }
}


