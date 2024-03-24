//
//  LargeTextStyle.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import SwiftUI

struct LargeText: View {
    let text: String
    
    var body: some View {
        HStack {
            Text(text)
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            Spacer()
        }.foregroundStyle(.white)
    }
}
