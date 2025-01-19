//
//  MuseumViewModel.swift
//  MuseumsTurkey
//
//  Created by Alican SEKBAN on 18.01.2025.
//

import Foundation

class MuseumViewModel : ObservableObject {
    @Published var museums: [MuseumData] = []
    @Published var screenTitle: String = ""
    private let dataSource = MuseumsRemoteDataSource()

    init() {
        screenTitle = "Müzeler"
    }
    
    func fetchMuseums(forCity city: String) {
        dataSource.fetchMuseums(forCity: city) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let museums):
                    self?.museums = museums
                case .failure(let error):
                    print("Error fetching museums: \(error)")
                }
            }
        }
    }
}
