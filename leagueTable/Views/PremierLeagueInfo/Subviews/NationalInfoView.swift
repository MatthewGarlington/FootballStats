//
//  NationalInfoView.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI




struct NationalInfoView: View {
    @ObservedObject var dataController = NationalSeasonInfoDataController()
    var body: some View {
        VStack{
            Text("National League")
            List {
                ForEach(dataController.nationalLeagueInfo?.data ?? [], id: \.self) { seasons in
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
                            Text("National League: \(seasons.name)")
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



struct NationalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        League2InfoView()
    }
}

