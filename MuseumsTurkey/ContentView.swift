//
//  ContentView.swift
//  MuseumsTurkey
//
//  Created by Alican SEKBAN on 18.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                
            }
            .background(Color.red)
            .tabItem {
                Image(systemName: "house")
                Text("Müzeler")
            }
            
            VStack {
                
            }
            .background(Color.red)
            .tabItem {
                Image(systemName: "bookmark")
                Text("Kaydedilenler")
            }
            VStack {
                
            }
            .background(Color.red)
            .tabItem {
                Image(systemName: "person.circle")
                Text("Hesabım")
            }
        }
    }
}

#Preview {
    ContentView()
}
