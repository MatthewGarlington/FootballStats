//
//  ChampionshipLeagueInfo.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation


struct ChampionshipLeagueInfo: Hashable, Codable {
    var data: [ChampionshipLeagueInfoData]
}

struct ChampionshipLeagueInfoData: Hashable, Codable {
    var season_id: Int
    var name: String
    var is_current: Int
    var country_id: Int
    var league_id: Int
    var start_date: String
    var end_date: String
}
