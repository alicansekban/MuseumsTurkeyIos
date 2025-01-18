//
//  MuseumScreen.swift
//  MuseumsTurkey
//
//  Created by Alican SEKBAN on 18.01.2025.
//

import SwiftUI

struct MuseumScreen: View {
    let viewModel: MuseumViewModel = .init()
    var body: some View {
        VStack {
            Text("Museum Screen")
            .font(.headline)
            .fontWeight(.bold)
        }
    }
}

#Preview {
    MuseumScreen()
}
