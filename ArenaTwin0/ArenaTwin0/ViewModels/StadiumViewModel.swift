//
//  StadiumViewModel.swift
//  ArenaTwin0
//
//  Created by salma on 08/04/2025.
//

// ViewModels/StadiumViewModel.swift
// ViewModels/StadiumViewModel.swift
import Foundation
import Combine

class StadiumViewModel: ObservableObject {
    @Published var stadiums: [Stadium] = []
    @Published var selectedStadium: Stadium?

    func fetchStadiums() {
        // Mock fetch logic
        stadiums = [
            Stadium(id: "1", name: "King Fahd Stadium", location: "Riyadh", capacity: 67895, imageURL: nil, isAvailable: true, matches: [], arModelURL: "art.scnassets/stadium.scn")
        ]
        selectedStadium = stadiums.first
    }
}
