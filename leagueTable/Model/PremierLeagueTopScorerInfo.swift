//
//  PremierLeagueTopScorerInfo.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation



struct PremierLeagueTopScorerInfo: Hashable, Codable {
    var data: [PremierLeagueTopScorerInfoData]
}

struct PremierLeagueTopScorerInfoData: Hashable, Codable {
    var pos: Int
    var player: Player
    var team: Team
    var goals: Goals
    var matches_played: Int
    var minutes_played: Int
   

    struct Player: Hashable, Codable {
        var player_name: String
    }
    struct Team: Hashable, Codable {
        var team_name: String
    }
    struct Goals: Hashable, Codable {
        var overall: Int
        var away: Int
    }
}
