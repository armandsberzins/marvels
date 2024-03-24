//
//  FootnoteText.swift
//  MarvelsDemo
//
//  Created by Armands Berzins on 03/03/2024.
//

import SwiftUI

struct FootnoteText: View {
    let text: String
    
    var body: some View {
        HStack {
            Text(text)
                .foregroundStyle(.gray)
            Spacer()
        }
    }
}
