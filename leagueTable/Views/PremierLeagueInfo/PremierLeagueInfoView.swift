//
//  PremierLeagueInfoView.swift
//  leagueTable
//
//  Created by Mark Wike on 21/09/2021.
//

import SwiftUI

struct PremierLeagueInfoView: View {
    @ObservedObject var dataController = PremierLeagueSeasonInfoDataController()
    var body: some View {
        VStack{
            Text("Premier League")
            List {
                ForEach(dataController.premierLeagueInfo?.data ?? [], id: \.self) { seasons in
                    ZStack{
                        
                        if seasons.is_current == 0 {
                            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                                .fill(Color.blue.opacity(0.3))
                                .frame(height: 140)
                        }else{
                            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                                .fill(Color.green.opacity(0.3))
                                .frame(height: 140)
                        }
                        VStack{
                            Text("Premier League: \(seasons.name)")
                            Text("Season ID: \(seasons.season_id)")
                            Text("Country ID: \(seasons.country_id)")
                            Text("League ID: \(seasons.league_id)")
                            Text("Start Date: \(seasons.start_date)")
                            Text("End Date: \(seasons.end_date)")
                            
                        }
                    }
                }
            }
            
        }
        .frame(width: 350, height: 700)
    }
}

struct PremierLeagueInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PremierLeagueInfoView()
    }
}
















