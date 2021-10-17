//
//  LeagueList.swift
//  LeagueList
//
//  Created by Mark Wike on 15/09/2021.
//


import Foundation
import SwiftUI



struct LeagueList: Hashable, Identifiable {
    let id = UUID()
    var image : String
    var name : String
    var position : Int
    var played: Int
    var won: Int
    var draw: Int
    var lose: Int
    var gd: Int
    var points: Int
   // var view : GreenbuttonTapView
}

let LeagueListSections: [LeagueList] = [
    LeagueList(image: "ManUtd", name: "MAN UTD",position: 1,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 10),
    LeagueList(image: "Chelsea", name: "CHELSEA",position: 2,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 10),
    LeagueList(image:  "Scum", name: "LIVERPOOL",position: 2,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 10),
    LeagueList(image: "Everton", name: "EVERTON",position: 4,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 10),
    LeagueList(image: "ManCity", name: "MAN CITY",position: 5,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 10),
    LeagueList(image:  "Brighton", name: "BRIGHTON",position: 6,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 10),
    LeagueList(image: "Spurs", name: "SPURS",position: 7,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 9),
    LeagueList(image: "WestHam", name: "WEST HAM",position: 8,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 9),
    LeagueList(image: "Leicester", name: "LEICESTER",position: 9,played: 4,won: 2,draw: 0,lose: 2,gd: -2,points: 6),
    LeagueList(image: "Brentford", name: "BRENTFORD",position: 10,played: 4,won: 1,draw: 2,lose: 1,gd: 0,points: 5),
    LeagueList(image: "Palace", name: "PALACE",position: 11,played: 4,won: 1,draw: 2,lose: 1,gd: 1,points: 5),
    LeagueList(image: "Villa", name: "VILLA",position: 12,played: 4,won: 1,draw: 1,lose: 2,gd: -2,points: 4),
    LeagueList(image: "Wolves", name: "WOLVES",position: 13,played: 4,won: 1,draw: 0,lose: 3,gd: -1,points: 3),
    LeagueList(image: "Southampton", name: "SOUTHAMPTON",position: 14,played: 4,won: 0,draw: 3,lose: 1,gd: -2,points: -3),
    LeagueList(image: "Watford", name: "WATFORD",position: 15,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 9),
    LeagueList(image: "Arsenal", name: "ARSENAL",position: 16,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 9),
    LeagueList(image: "Leeds", name: "LEEDS",position: 17,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 9),
    LeagueList(image: "Burnley", name: "BURNLEY",position: 18,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 9),
    LeagueList(image: "Newcastle", name: "NEWCASTLE",position: 19,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 9),
    LeagueList(image: "Norwich", name: "NORWICH",position: 20,played: 4,won: 3,draw: 1,lose: 0,gd: 8,points: 9)
    
]
