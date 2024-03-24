//
//  File.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import SwiftUI

class TabController: ObservableObject {
    @Published var activeTab = Tab.hero
    
    func open(_ tab: Tab) {
        activeTab = tab
    }
}

enum Tab {
    case hero
    case villian
}
