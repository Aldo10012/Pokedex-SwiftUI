//
//  PillViews.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/20/21.
//

import SwiftUI

struct PillView1: View {
    @State var type: String
    
    var body: some View {
        Text(type)
            .font(.subheadline).bold()
            .foregroundColor(.white)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white.opacity(0.2))
            )
            .frame(width: 100, height: 24)
    }
}

struct PillView2: View {
    @State var type: String
    @State var color: Color
    
    var body: some View {
        Text(type)
            .font(.subheadline)
            .fontWeight(.black)
            .foregroundColor(.white)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .frame(width: 100, height: 34)
            .background(color)
            .cornerRadius(16)
    }
}

struct PillViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PillView1(type: "Grass")
            PillView2(type: "Grass", color: Color.green)
        }
    }
}
