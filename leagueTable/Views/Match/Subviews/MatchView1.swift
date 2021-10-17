//
//  MatchView1.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI

struct MatchView1: View {
    @ObservedObject var dataController = MatchDataController()
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(colors: [.red.opacity(0.4), .white.opacity(0.4)], startPoint: .top, endPoint: .bottom))
                .ignoresSafeArea()
        VStack{
            HStack{
                Spacer()
                VStack{
                    AsyncImage(url: (dataController.matchInfo?.data?.home_team?.logo), scale: 2.0) .frame(width: 22, alignment: .leading)
                    Text(String(dataController.matchInfo?.data?.home_team?.name ?? "Loading"))
                        .font(.headline)
                        .bold()
                }
                Spacer()
                VStack{
                    AsyncImage(url: (dataController.matchInfo?.data?.away_team?.logo), scale: 2.0) .frame(width: 22, alignment: .leading)
                    Text(String(dataController.matchInfo?.data?.away_team?.name ?? "Loading"))
                        .font(.headline)
                        .bold()
                }
                Spacer()
            }
            Text(String(dataController.matchInfo?.data?.stats?.ft_score ?? ""))
                .font(.system(size: 50))
                .foregroundColor(Color.gray)
            Text(String(dataController.matchInfo?.data?.venue?.name ?? ""))
                .font(.system(size: 12))
            ZStack {
                ZStack(alignment: .top) {
                Rectangle()
                    .fill(Color.red.opacity(0.8))
                    .frame(height: 25)
                    Rectangle()
                        .fill(Color.black.opacity(0.8))
                        .frame(height: 1)
                    Rectangle()
                        .fill(Color.black.opacity(0.8))
                        .frame(height: 1).offset(y: 25)
                }
            HStack{
                Text(String(dataController.matchInfo?.data?.group?.group_name ?? ""))
                    .foregroundColor(.white)
                    .font(.headline)
                    .bold()
                
                Spacer()
                Text("Matchday: \(dataController.matchInfo?.data?.round?.name ?? "")")
                    .foregroundColor(.white)
                    .font(.headline)
                    .bold()
                
            }
            .padding()
            }
            Spacer()
        }
      //  .padding()
        }
        .frame(height: 200)
    }
}

struct MatchView1_Previews: PreviewProvider {
    static var previews: some View {
        MatchView1()
    }
}
