//
//  HeroListViewModel.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import Foundation

extension HeroListView {
    @MainActor
    class HeroListViewModel: ObservableObject {
        let repo = CharactersRepository()
        
        @Published var heros: [Character] = []
        
        init() {
        }
        
        func loadData() {
            heros = repo.getHeros()
        }
    }
}

