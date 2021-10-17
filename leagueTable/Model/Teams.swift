//
//  TeamsList.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation

struct Teams: Decodable, Hashable {
    var data: [TeamsArray]
}

struct TeamsArray: Decodable, Hashable {
 
    var team_id: Int
    var name: String
    var short_code: String
    var logo: URL
    var country: CountryArray
   
}

struct CountryArray: Decodable, Hashable {
    var country_id: Int
    var name: String
    var country_code: String
    var continent: String
}


