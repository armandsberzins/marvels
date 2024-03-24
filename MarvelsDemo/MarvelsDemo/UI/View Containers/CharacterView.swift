//
//  CharacterView.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import SwiftUI

struct CharacterView: View {
    let character: Character
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Button("Close") {
                    dismiss()
                }
                .font(.body)
                .foregroundStyle(.white)
                .padding()
                Spacer()
            }
            LargeText(text: character.heroName)
                .padding(16)
            Image(character.profileImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 16)
            HStack {
                Text(character.abilities[0])
                    .padding(4)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                Text(character.abilities[1])
                    .padding(4)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                Text(character.abilities[2])
                    .padding(4)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
            }
            .foregroundStyle(.yellow)
            .padding(16)
            Text(character.bio)
                .padding(16)
                .foregroundStyle(.white)
            Spacer()
        }.background(.black)
    }
}
