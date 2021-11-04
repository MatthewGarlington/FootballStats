//
//  SubstitutionView.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI



struct SubstitutionView: View {
    var substitutionMin: Int
    var substitutionPlayerOff: String
    var substitutionPlayerOn: String
    
    var body: some View {
        ZStack(alignment: .top) {
            RoundedCorners(tl: 0, tr: 0, bl: 25, br: 25)
                .fill(Material.bar)
                .frame(width: 175, height: 150)
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 10)
            Rectangle()
                .fill(Color.red.opacity(0.8))
                .frame(width: 175, height: 30)
            Rectangle()
                .fill(Color.black.opacity(0.2))
                .frame(width: 175, height: 2)
                .offset(y: 30)
            VStack(alignment: .leading) {
                Text("Sub")
                    .font(.title)
                    .bold()
                HStack {
                    Text("Minute:")
                        .bold()
                    Text("\(substitutionMin)")
                }
                Text(substitutionPlayerOff)
                Text(substitutionPlayerOn)
            }
        }    }
}

struct SubstitutionView_Previews: PreviewProvider {
    static var previews: some View {
        SubstitutionView(substitutionMin: 12, substitutionPlayerOff: "Hello", substitutionPlayerOn: "Googdbye")
    }
}

