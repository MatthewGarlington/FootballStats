//
//  TeamsListView.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import SwiftUI

struct TeamsListView: View {
    @ObservedObject var teamsDataController = TeamsDataController()
    var body: some View {
        List {
            ForEach(teamsDataController.teams?.data ?? [], id: \.team_id) { team in
                Text(String(team.team_id))
            }
        }
    }
}

struct TeamsListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsListView()
    }
}
