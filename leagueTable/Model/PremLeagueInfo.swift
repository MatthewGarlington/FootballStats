//
//  PremLeagueInfo.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation

//nested layer deeper!!!!!
struct PremLeagueInfo: Hashable, Codable {
    
    var data: PremLeagueInfoData?
}

struct PremLeagueInfoData: Hashable, Codable {
    var standings: [PremLeagueInfoStandings]?
    var season_id: Int?
}

struct PremLeagueInfoStandings: Hashable, Codable {
    var team_id: Int
    var position: Int
    var points: Int
    var status: String
 //   var result: String
    var overall: Overall
//
    struct Overall: Hashable, Codable {
        var games_played: Int
       var won: Int
        var draw: Int
        var lost: Int
        var goals_diff: Int
//        var goals_scored: Int
//        var goals_against: Int
//
    }
   }
