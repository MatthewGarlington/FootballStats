//
//  EnglishRefModel.swift
//  EnglishRefModel
//
//  Created by Mark Wike on 16/09/2021.
//
import Foundation




struct PremLeagueFixturesInfo: Hashable, Codable {
    var data: [PremLeagueFixturesInfoData]
}

struct PremLeagueFixturesInfoData: Hashable, Codable {
    var match_id: Int
    var match_start: String
    var home_team: HomeTeam
    var away_team: AwayTeam
 //   var venue: Venue
    
    struct HomeTeam: Hashable, Codable {
        var name: String
        var logo: URL
    }
    struct AwayTeam: Hashable, Codable {
        var name: String
        var logo: URL
    }
//    struct Venue: Hashable, Codable {
//        var name: String
//        var city: String
//    }
    
   }
