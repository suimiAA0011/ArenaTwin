//
//  AdminViewModel.swift
//  ArenaTwin0
//
//  Created by salma on 08/04/2025.
//

// ViewModels/AdminViewModel.swift
// ViewModels/AdminViewModel.swift
import Foundation
import Combine

class AdminViewModel: ObservableObject {
    @Published var matches: [Match] = []

    func scheduleMatch(home: String, away: String, stadiumID: String, date: Date) {
        let match = Match(id: UUID().uuidString, homeTeam: home, awayTeam: away, date: date, stadiumID: stadiumID, attendance: 0, liveStats: ["الاستحواذ": "50%", "التسديدات": "5"])
        matches.append(match)
    }
}
