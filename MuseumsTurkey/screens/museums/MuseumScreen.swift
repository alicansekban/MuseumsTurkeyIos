//
//  MuseumScreen.swift
//  MuseumsTurkey
//
//  Created by Alican SEKBAN on 18.01.2025.
//

import SwiftUI

struct MuseumScreen: View {
    @StateObject var  viewModel = MuseumViewModel()
    var body: some View {
        VStack {
            Text("Müzeler")
                .font(.headline)
                .padding()
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(viewModel.museums, id: \.self) { museum in
                        Text(museum.name)
                    }
                    
                }
            }
            .onAppear {
                
                viewModel.fetchMuseums(forCity: "istanbul")
            }
        }
    }

}

#Preview {
    MuseumScreen()
}
