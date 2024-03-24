//
//  HeroView.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import SwiftUI

struct HeroListView: View {
    @StateObject private var viewModel = HeroListViewModel()
    @State private var selectedHero: Character?
    
    var body: some View {
        VStack {
            makeTitle()
            makeHeroList(items: viewModel.heros)
        }
        .sheet(item: self.$selectedHero) { hero in
            CharacterView(character: hero)
        }
        .background(Color.heroBackground)
        .onAppear {
            viewModel.loadData()
        }
    }
    
    @ViewBuilder func makeTitle() -> some View {
        HStack {
            ViewTitleText(text: "Heroes")
                .foregroundStyle(.mainText)
                .padding(16)
            Spacer()
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
    HeroListView()
}
