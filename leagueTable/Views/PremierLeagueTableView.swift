//
//  PremierLeagueTableView.swift
//  leagueTable
//
//  Created by Mark Wike on 22/09/2021.
//

import SwiftUI

struct PremierLeagueTableView: View {
    @ObservedObject var dataController = PremLeagueDataController()
    var body: some View {
            List {
                HStack{
                   
                    Text("P")
                        .frame(width: 22, alignment: .leading)
                    Text("")
                        .frame(width: 30.0, height: 30.0)
                    Text("TEAM")
                    
                        .frame(width: 100, alignment: .leading)
                    Text("P")
                        .font(.system(size: 12))
                        .frame(width: 18, alignment: .leading)
                    Text("W")
                        .font(.system(size: 12))
                        .frame(width: 18, alignment: .leading)
                    Text("D")
                        .font(.system(size: 12))
                        .frame(width: 18, alignment: .leading)
                    Text("L")
                        .font(.system(size: 12))
                        .frame(width: 18, alignment: .leading)
                    Text("GD")
                        .font(.system(size: 12))
                        .frame(width: 18, alignment: .leading)
                    Text("P")
                        .font(.system(size: 12))
                        .frame(width: 18, alignment: .leading)
                }
                ForEach(dataController.premLeagueInfo?.data?.standings ?? [], id: \.self) { clubs in
                    VStack{
                        HStack{
                            Text("\(clubs.position)")
                                .frame(width: 22, alignment: .leading)
                            Text("\(clubs.team_id)")
                                .frame(width: 130, alignment: .leading)
                                .padding(.leading, 4)
                                .font(.system(size: 15))
                                .foregroundColor(Color.gray)
                            //  Text("\(clubs.status)")
                            Text("\(clubs.overall.games_played)")
                                .frame(width: 18)
                            Text("\(clubs.overall.won)")
                                .frame(width: 18)
                            Text("\(clubs.overall.draw)")
                                .frame(width: 18)
                            Text("\(clubs.overall.lost)")
                                .frame(width: 18)
                            Text("\(clubs.overall.goals_diff)")
                                .frame(width: 18)
                            Text("\(clubs.points)")
                                .frame(width: 18)
                        }
                    }
                }
        }
    }
}

struct PremierLeagueTableView_Previews: PreviewProvider {
    static var previews: some View {
        PremierLeagueTableView()
    }
}
