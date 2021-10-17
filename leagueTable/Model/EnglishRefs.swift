//
//  EnglishRefs.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation


struct EnglishRefs: Hashable, Codable {
    var data: [Data]
}

struct Data: Hashable, Codable {
  var common_name: String
}
