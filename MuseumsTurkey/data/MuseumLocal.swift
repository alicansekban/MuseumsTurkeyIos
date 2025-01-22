//
//  MuseumLocal.swift
//  MuseumsTurkey
//
//  Created by Alican SEKBAN on 19.01.2025.
//

import Foundation
import SwiftData

@Model
class MuseumLocal {
    var name: String
    var address: String
    var phone: String
    var website: String
    var latitude: Double
    var longitude: Double
    init(name: String, address: String, phone: String, website: String, latitude: Double, longitude: Double) {
        self.name = name
        self.address = address
        self.phone = phone
        self.website = website
        self.latitude = latitude
        self.longitude = longitude
    }
}
