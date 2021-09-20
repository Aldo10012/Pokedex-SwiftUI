//
//  StatView.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/20/21.
//

import SwiftUI

struct StatView: View {
    let lable: String
    let stat: Int
    let color: Color
    
    init(lable: String, stat: Int, color: Color) {
        self.lable = lable
        self.stat = stat
        self.color = color
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
                    .foregroundColor(color)
            }
        }
    }
}
