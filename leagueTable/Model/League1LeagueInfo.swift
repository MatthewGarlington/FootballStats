//
//  League1LeagueInfo.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation




struct League1LeagueInfo: Hashable, Codable {
    var data: [League1LeagueInfoData]
}

struct League1LeagueInfoData: Hashable, Codable {
    var season_id: Int
    var name: String
    var is_current: Int
    var country_id: Int
    var league_id: Int
    var start_date: String
    var end_date: String
}
