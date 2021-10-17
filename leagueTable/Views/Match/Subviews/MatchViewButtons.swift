//
//  MatchViewButtons.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI


struct MatchViewButtons: View {
    //  @Binding var whichScreen: String
    @ObservedObject var dataController = MatchDataController()
    var body: some View {
        VStack{
            Text("test")
        }
        .frame(width: 350, height: 500)
    }
}
