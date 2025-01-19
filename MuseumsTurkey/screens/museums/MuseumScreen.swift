//
//  MuseumScreen.swift
//  MuseumsTurkey
//
//  Created by Alican SEKBAN on 18.01.2025.
//

import SwiftUI

struct MuseumScreen: View {
    let viewModel = MuseumViewModel()
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                    ForEach(viewModel.museums, id: \.self) { museum in
                    Text(museum.name)
                }
            
            }
        }
        .task {
    
            viewModel.fetchMuseums(forCity: "istanbul")
        }
    }

}

#Preview {
    MuseumScreen()
}
