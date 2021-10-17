//
//  EnglishLeagueDevInfo.swift
//  leagueTable
//
//  Created by Mark Wike on 21/09/2021.
//

import SwiftUI

struct EnglishLeagueDevInfo: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 3) {
                PremierLeagueInfoView()
                ChampionshipInfoView()
                League1InfoView()
                League2InfoView()
                NationalInfoView()
            }
        }
    }
}

struct EnglishLeagueDevInfo_Previews: PreviewProvider {
    static var previews: some View {
        EnglishLeagueDevInfo()
    }
}
