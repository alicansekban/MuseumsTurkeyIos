//
//  MuseumViewModel.swift
//  MuseumsTurkey
//
//  Created by Alican SEKBAN on 18.01.2025.
//

import Foundation

class MuseumViewModel : ObservableObject {
    @Published var museums: [Museum] = []
    init() {
        
    }
    
    
    func fetchMuseums() async throws {
       // todo : fetch museums
    }
    
    
}

class Museum: Codable {
    var name: String
    var address: String
    var phone: String
    var website: String
    var openingHours: String
    var latitude: Double
    var longitude: Double
    
}
