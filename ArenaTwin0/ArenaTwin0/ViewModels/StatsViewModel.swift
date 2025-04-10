//
//  StatsViewModel.swift
//  ArenaTwin0
//
//  Created by salma on 08/04/2025.
//

// ViewModels/StatsViewModel.swift
//import Foundation
//import Combine
//
//class StatsViewModel: ObservableObject {
//    @Published var teamStats: [String: String] = ["الاستحواذ": "65%", "التسديدات": "10"]
//    
//    func fetchTeamStats() {
//        // محاكاة جلب البيانات
//        teamStats = ["الاستحواذ": "\(Int.random(in: 50...70))%", "التسديدات": "\(Int.random(in: 5...15))"]
//    }
//}
// ViewModels/StatsViewModel.swift
import Foundation
import Combine

class StatsViewModel: ObservableObject {
    @Published var teamStats: [String: String] = ["الاستحواذ": "65%", "التسديدات": "10"]
    private let networkService = NetworkService()
    
    func fetchTeamStats(matchID: String) {
        networkService.fetchLiveStats(matchID: matchID) { result in
            switch result {
            case .success(let stats):
                DispatchQueue.main.async {
                    self.teamStats = stats
                }
            case .failure(let error):
                print("فشل في جلب الإحصائيات: \(error)")
            }
        }
    }
}
