//
//  JSONlists.swift
//  leagueTable
//
//  Created by Mark Wike on 21/09/2021.
//

import SwiftUI

struct JSONlists: View {
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: EngStadiumView()) {
                    Text("JSON List of English Stadiums")
                }
                NavigationLink(destination: EnglishRefView()) {
                    Text("JSON List of English referees")
                }
                NavigationLink(destination: PremierLeagueInfoView()) {
                    Text("JSON List of Premier League Seasons")
                }
                NavigationLink(destination: topScorerView()) {
                    Text("Premier League top scorer")
                }
                NavigationLink(destination: championshipScorerView()) {
                    Text("chmpionship top scorer")
                }
                NavigationLink(destination: BookmakerView()) {
                    Text("List of book makers")
                }
                NavigationLink(destination: EnglishLeagueDevInfo()) {
                    Text("DEV info")
                }
                NavigationLink(destination: SelectCountryView()) {
                    Text("Select Country view")
                }
                NavigationLink(destination: PremierLeagueTableView()) {
                    Text("premier league table view")
                }
                NavigationLink(destination: MatchView()) {
                    Text("premier league table view")
                }
                
                
                
                
            }
            
        }
    }
}

struct JSONlists_Previews: PreviewProvider {
    static var previews: some View {
        JSONlists()
    }
}
