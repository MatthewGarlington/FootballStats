//
//  ContentView.swift
//  leagueTable
//
//  Created by Mark Wike on 15/09/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var teamsDataController = TeamsDataController()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            HStack{
                
                Text("P")
                    .frame(width: 22, alignment: .leading)
                Text("")
                    .frame(width: 30.0, height: 30.0)
                Text("TEAM")
                //  .frame(width: 270, height: height, alignment: .leading)
                    .frame(width: 130, alignment: .leading)
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
            VStack(alignment: .leading, spacing: 0) {
                ForEach(LeagueListSections, id: \.id) { info in
                    LeagueView(image: info.image,name: info.name,position: info.position,played: info.played,won: info.won, draw: info.draw, lose: info.lose, gd: info.gd,points: info.points)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





