//
//  ViewTitleText.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import SwiftUI

struct ViewTitleText: View {
    let text: String
    
    var body: some View {
        HStack {
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading, 16)
        }
    }
}
