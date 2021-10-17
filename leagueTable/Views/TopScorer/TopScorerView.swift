//
//  EngStadiumView.swift
//  EngStadiumView
//
//  Created by Mark Wike on 16/09/2021.
//

import SwiftUI

struct topScorerView: View {
    @ObservedObject var dataController = PremierLeagueTopScorersDataController()
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
            
            
            ForEach(dataController.premierLeagueTopScorerInfo?.data ?? [], id: \.self) { scorer in
                HStack{
                    Text("\(scorer.pos)")
                        .font(.system(size: 10))
                        .frame(width: 20, alignment: .leading)
                    VStack{
                        Text("\(scorer.player.player_name)")
                            .font(.system(size: 10))
                            .frame(width: 200, alignment: .leading)
                        Text("\(scorer.team.team_name)")
                            .font(.system(size: 10))
                            .frame(width: 200, alignment: .leading)
                    }
                    
                    
                    
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


struct topScorerView_Previews: PreviewProvider {
    static var previews: some View {
        topScorerView()
    }
}

