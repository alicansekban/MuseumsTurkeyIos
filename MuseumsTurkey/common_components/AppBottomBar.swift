//
//  AppBottomBar.swift
//  MuseumsTurkey
//
//  Created by Alican SEKBAN on 19.01.2025.
//

import SwiftUI

struct AppBottomBar: View {
    var body: some View {
        TabView {
            VStack {
                MuseumScreen()
            }
            .background(Color.white)
            .tabItem {
                Image(systemName: "house")
                Text("Müzeler")
            }
            .tag(0)
            VStack {
                SavedScreen()
                
            }
            .background(Color.white)
            .tabItem {
                Image(systemName: "bookmark")
                Text("Kaydedilenler")
            }
            .tag(1)
            VStack {
                ProfileScreen()
            }
            .background(Color.white)
            .tabItem {
                Image(systemName: "person.circle")
                Text("Hesabım")
            }
            .tag(2)
        }
    }
}

#Preview {
    AppBottomBar()
}
