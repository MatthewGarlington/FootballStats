//
//  ChampionshipScorerView.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI


struct championshipScorerView: View {
    @ObservedObject var dataController = ChampionshipTopScorersDataController()
    var body: some View {
        
        List {
            
            
            HStack{
                Text("Pos")
                    .font(.system(size: 10))
                    .frame(width: 20, alignment: .leading)
                Text("Name")
                    .font(.system(size: 10))
                    .frame(width: 190, alignment: .leading)
                Text("GL")
                    .font(.system(size: 12))
                    .frame(width: 16, alignment: .leading)
                Text("A")
                    .font(.system(size: 12))
                    .frame(width: 8, alignment: .leading)
                Text("P")
                    .font(.system(size: 12))
                    .frame(width: 10, alignment: .leading)
                Text("MPG")
                    .font(.system(size: 12))
                    .frame(width: 30, alignment: .leading)
            }
            
            
            ForEach(dataController.championshipTopScorerInfo?.data ?? [], id: \.self) { scorer in
                HStack{
                    Text("\(scorer.pos)")
                        .font(.system(size: 10))
                        .frame(width: 20, alignment: .leading)
                    VStack{
                        //                        Text("\(scorer.player.player_name)")
                        //                            .font(.system(size: 10))
                        //                            .frame(width: 200, alignment: .leading)
                        Text("\(scorer.team.team_name)")
                            .font(.system(size: 10))
                            .frame(width: 200, alignment: .leading)
                    }
                    //
                    //
                    //
                    HStack{
                        Text("\(scorer.goals.overall)")
                            .font(.system(size: 12))
                            .frame(width: 10, alignment: .leading)
                        Text("\(scorer.goals.away)")
                            .font(.system(size: 12))
                            .frame(width: 10, alignment: .leading)
                        Text("\(scorer.matches_played)")
                            .font(.system(size: 12))
                            .frame(width: 10, alignment: .leading)
                        Text("\(scorer.minutes_played / scorer.goals.overall)")
                            .font(.system(size: 12))
                            .frame(width: 30, alignment: .leading)
                        
                    }
                    
                }
                
            }
        }
    }
}



struct championshipScorerView_Previews: PreviewProvider {
    static var previews: some View {
        championshipScorerView()
    }
}
