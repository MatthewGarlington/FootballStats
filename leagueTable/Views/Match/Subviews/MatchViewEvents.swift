//
//  MatchViewEvents.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI



struct MatchViewEvents: View {
    @ObservedObject var dataController = MatchDataController()
    var body: some View {
        
        let columns = [
            GridItem(.adaptive(minimum: UIScreen.main.bounds.height / 5))
            ]

        ZStack {

        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(dataController.matchInfo?.data?.match_events ?? [], id: \.self) { clubs in
                    if(clubs.type == "yellowcard"){
                        YellowCardView(yellowCardMin: clubs.minute ?? 0, yellowCardPlayer: clubs.player_name ?? "")
                    }
                    
                    if(clubs.type == "goal"){
                        GoalView(goalMin: clubs.minute ?? 0, goalPlayer: clubs.player_name ?? "", assistPlayer: clubs.related_player_name ?? "")
                    }
                    
                    if(clubs.type == "substitution"){
                        SubstitutionView(substitutionMin: clubs.minute ?? 0, substitutionPlayerOff: clubs.player_name ?? "", substitutionPlayerOn: clubs.related_player_name ?? "")
                }
            }
            }
        }
    }
}

struct MatchViewEvents_Previews: PreviewProvider {
    static var previews: some View {
        MatchViewEvents()
    }
}


