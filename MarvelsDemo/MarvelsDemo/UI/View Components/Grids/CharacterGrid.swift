//
//  CharacterGrid.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 24/03/2024.
//

import SwiftUI

struct CharactersGrid: View {
    let charactersList: [Character]
    @Binding var selectedHero: Character?
    
    var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout) {
                ForEach(charactersList, id: \.id) { character in
                    if let image = UIImage(named: character.profileImageName) {
                        makeImage(image: image)
                            .onTapGesture {
                                selectedHero = character
                            }
                    }
                }
            }
        }
        .padding(16)
    }
    
    @ViewBuilder func makeImage(image: UIImage) -> some View {
        Image(uiImage: image)
            .resizable()
            .scaledToFill()
            .cornerRadius(0)
    }
}
