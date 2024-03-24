//
//  ContentView.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import SwiftUI
import SwiftUIIntrospect

struct RootView: View {
    @StateObject private var tabController = TabController()
    
    var body: some View {
        TabView(selection: $tabController.activeTab) {
            HeroListView()
                .tag(Tab.hero)
                .tabItem {
                    Label("Heros", systemImage: "h.circle.fill")
                }
            VillainsListView()
                .tag(Tab.villian)
                .tabItem {
                    Label("Villians", systemImage: "v.circle.fill")
                }
        }.introspect(.tabView, on: .iOS(.v17)) { tabController in
            tabController.tabBar.tintColor = UIColor(Color.accentColor)
            tabController.tabBar.backgroundColor = UIColor(Color.tabBar)
        }
    }
}

#Preview {
    RootView()
}
