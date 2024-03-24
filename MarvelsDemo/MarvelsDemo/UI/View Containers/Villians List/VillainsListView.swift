//
//  VillainsListView.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import SwiftUI

struct VillainsListView: View {
    @StateObject private var viewModel = VillainsViewModel()
    @State private var selectedHero: Character?
    
    var body: some View {
        VStack {
            makeHeroList(items: viewModel.villains)
            CharactersGrid(charactersList: viewModel.villains, selectedHero: $selectedHero)
            makeTitle()
        }
        .sheet(item: self.$selectedHero) { hero in
            CharacterView(character: hero)
        }
        .background(Color.villiansBackground)
        .onAppear {
            viewModel.loadData()
        }
    }
    
    @ViewBuilder func makeTitle() -> some View {
        HStack {
            Spacer()
            ViewTitleText(text: "Villains")
                .foregroundStyle(.mainText)
                .padding(16)
        }
    }
    
    @ViewBuilder func makeHeroList(items: [Character]) -> some View {
        List (items) { hero in
            CharacterCell(charachter: hero)
            .onTapGesture {
                selectedHero = hero
            }
        }
        .background(Color.clear)
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    VillainsListView()
}
