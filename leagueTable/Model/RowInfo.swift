//
//  RowInfo.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI


struct RowInfo: Identifiable, Hashable {
    let id = UUID()
    var country: String
    var image: String
    var color: Color
    var secondColor: Color
    var thirdColor: Color
}

let CountryButtonInfo: [RowInfo] = [
    RowInfo(country: "England", image: "England", color: Color(#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)), secondColor: Color(#colorLiteral(red: 0.8079561591, green: 0.06981129199, blue: 0.1425748169, alpha: 1)), thirdColor: Color(#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1))),
    RowInfo(country: "Scotland", image: "Scotland", color: Color(#colorLiteral(red: 0, green: 0.3667329848, blue: 0.722047627, alpha: 1)), secondColor: Color(#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)), thirdColor: Color(#colorLiteral(red: 0, green: 0.3667329848, blue: 0.722047627, alpha: 1))),
    RowInfo(country: "France", image: "France", color: Color(#colorLiteral(red: 0.001563615282, green: 0.136033535, blue: 0.5840755701, alpha: 1)), secondColor: Color(#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)), thirdColor: Color(#colorLiteral(red: 0.8079561591, green: 0.06981129199, blue: 0.1425748169, alpha: 1))),
    RowInfo(country: "Spain", image: "Spain", color: Color(#colorLiteral(red: 0.7784708142, green: 0.04436413199, blue: 0.1200474128, alpha: 1)), secondColor: Color(#colorLiteral(red: 1, green: 0.7672405243, blue: 0.01259230357, alpha: 1)), thirdColor: Color(#colorLiteral(red: 0.7784708142, green: 0.04436413199, blue: 0.1200474128, alpha: 1))),
    RowInfo(country: "Germany", image: "Germany", color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), secondColor: Color(#colorLiteral(red: 0.8682549596, green: 0.0009725023992, blue: 0, alpha: 1)), thirdColor: Color(#colorLiteral(red: 0.9988006949, green: 0.8084532619, blue: 0, alpha: 1))),
    RowInfo(country: "Italy", image: "Italy", color: Color(#colorLiteral(red: 0.0002747568942, green: 0.5735099912, blue: 0.2733146846, alpha: 1)), secondColor: Color(#colorLiteral(red: 0.9950950742, green: 1, blue: 0.9999566674, alpha: 1)), thirdColor: Color(#colorLiteral(red: 0.8099656701, green: 0.1677764654, blue: 0.2141644955, alpha: 1)))
]
