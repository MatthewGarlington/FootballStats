//
//  EnglishStadiums.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation


struct EnglishStadiums: Hashable, Codable {
    var data: [EngStadiumData]
}

struct EngStadiumData: Hashable, Codable {
    var venue_id: Int
    var capacity: Int
    var city: String
    var name: String
    var country_id: Int
}
