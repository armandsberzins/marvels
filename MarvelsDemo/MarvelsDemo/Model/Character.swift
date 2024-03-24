//
//  Character.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import Foundation

enum CharacterType {
    case hero, villain
}

struct Character: Identifiable {
    let id = UUID()
    let heroName: String
    let bio: String
    let abilities: [String]
    let type: CharacterType
    let profileImageName: String
}
