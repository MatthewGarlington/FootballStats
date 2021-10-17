//
//  MatchViewLineUps.swift
//  leagueTable
//
//  Created by us-guest on 10/16/21.
//

import SwiftUI


struct MatchViewLineups: View {
    @ObservedObject var dataController = MatchDataController()
    
    var testArray = [Int]()
    let columns = [
            //GridItem(.fixed(100)),
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(dataController.matchInfo?.data?.lineups ?? [], id: \.self) { lineup in
                VStack{
                    Text(String( lineup.formation!))
                    ForEach(lineup.players ?? [], id: \.self) { player in
                            
                    }
                }
            }
        }
        .frame(width: 350, height: 500)
    }
}





struct MatchViewLineups_Previews: PreviewProvider {
    static var previews: some View {
        MatchViewLineups()
    }
}
