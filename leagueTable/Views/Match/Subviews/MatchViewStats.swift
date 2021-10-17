//
//  MatchViewStats.swift
//  leagueTable
//
//  Created by us-guest on 10/16/21.
//

import SwiftUI

struct MatchViewStats: View {
    @ObservedObject var dataController = MatchDataController()
    
    var testArray = [Int]()


    
    
    var body: some View {
    
        
        VStack(spacing: 10) {
            Spacer()
                .frame(height: 20)
            ZStack {
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.blue.opacity(0.2))
                    .frame(height: 200)
                
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.white)
                    .frame(width: 225, height: 150)
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 10)
                VStack(alignment: .leading){
                    Text(dataController.matchInfo?.data?.match_statistics?[0].team_name ?? "")
                        .bold()
                    HStack {
                        Text("Corners:")
                            .bold()
                        Text("\(dataController.matchInfo?.data?.match_statistics?[0].corners ?? 0)")
                    }
                    HStack {
                        Text("Fouls:")
                            .bold()
                        Text("\(dataController.matchInfo?.data?.match_statistics?[0].fouls ?? 0)")
                    }
                    HStack {
                        Text("Shots:")
                            .bold()
                        Text("\(dataController.matchInfo?.data?.match_statistics?[0].shots_total ?? 0)")
                    }
                    HStack {
                        Text("Possession:")
                            .bold()
                        Text("\(dataController.matchInfo?.data?.match_statistics?[0].possessionpercent ?? 0)%")
                    }
                }
                .font(.subheadline)
                
            }
            Rectangle()
                .frame(height: 1)
                .padding(.horizontal)
            ZStack {
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.blue.opacity(0.2))
                    .frame(height: 200)
                
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.white)
                    .frame(width: 225, height: 150)
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 10)
                VStack(alignment: .leading){
                    Text(dataController.matchInfo?.data?.match_statistics?[1].team_name ?? "")
                        .bold()
                    HStack {
                        Text("Corners:")
                            .bold()
                        Text("\(dataController.matchInfo?.data?.match_statistics?[1].corners ?? 0)")
                    }
                    HStack {
                        Text("Fouls:")
                            .bold()
                        Text("\(dataController.matchInfo?.data?.match_statistics?[1].fouls ?? 0)")
                    }
                    HStack {
                        Text("Shots:")
                            .bold()
                        Text("\(dataController.matchInfo?.data?.match_statistics?[1].shots_total ?? 0)")
                    }
                    HStack {
                        Text("Possession:")
                            .bold()
                        Text("\(dataController.matchInfo?.data?.match_statistics?[1].possessionpercent ?? 0)%")
                    }
                }
                .font(.subheadline)
            }
        }
        .padding()
    }
}



struct MatchViewStats_Previews: PreviewProvider {
    static var previews: some View {
        MatchViewStats()
    }
}
