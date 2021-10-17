//
//  BookmakerInfo.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation



struct BookmakerInfo: Hashable, Codable {
    var data: [BookmakerInfoData]
}

struct BookmakerInfoData: Hashable, Codable {
    var bookmaker_id: Int
    var name: String
    var img: URL
   }
