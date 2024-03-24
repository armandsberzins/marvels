//
//  VilliansListViewModel.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import Foundation

extension VillainsListView {    
    @MainActor
    class VillainsViewModel: ObservableObject {
        let repo = CharactersRepository()
        
        @Published var villains: [Character] = []
        
        init() {
        }
        
        func loadData() {
            villains = repo.getVillains()
        }
    }
}
