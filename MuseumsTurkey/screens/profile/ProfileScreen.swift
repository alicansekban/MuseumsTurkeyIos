//
//  ProfileScreen.swift
//  MuseumsTurkey
//
//  Created by Alican SEKBAN on 18.01.2025.
//

import SwiftUI

struct ProfileScreen: View {
    @StateObject var  viewModel = ProfileViewModel()
    var items : [Profile] = [
        .init(name: "About Us", image: "person.crop.circle"),
        .init(name: "Language", image :"globe")
    ]
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(items, id: \.self) { item in
                        NavigationLink(value: item) {
                            Label(item.name, systemImage: item.image)
                                .foregroundColor(.primary)
                        }
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationDestination(for: Profile.self) { profile in
                ZStack {
                    Color.gray.opacity(0.2).ignoresSafeArea()
                    Text(profile.name)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                }
            }
        }

    }
}

#Preview {
    ProfileScreen()
}
struct Profile: Hashable {
    let id = UUID()
    let name: String
    let image: String
}
