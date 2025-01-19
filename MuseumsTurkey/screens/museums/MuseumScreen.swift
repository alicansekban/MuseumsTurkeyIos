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
                        MuseumItem(
                            museumName: museum.name, museumAddress: museum.address, museumPhoneNumber: museum.phone
                        )
                    }
                
                }
            }
            .onAppear {
                viewModel.fetchMuseums(forCity: "istanbul")
            }
        }
    }

}

struct MuseumItem : View {
    @State var museumName: String = ""
    @State var museumAddress : String = ""
    @State var museumPhoneNumber : String = ""

    
    var body: some View {
        VStack(alignment: .leading) {
            Text(museumName)
                .bold()
            Text(museumAddress)
            Text(museumPhoneNumber)
        }.padding(10)
       }
}

#Preview {
    MuseumScreen()
}
