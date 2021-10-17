//
//  YellowCardView.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI


struct YellowCardView: View {
    var yellowCardMin: Int
    var yellowCardPlayer: String
    
    var body: some View {
        ZStack(alignment: .top) {
            RoundedCorners(tl: 0, tr: 0, bl: 25, br: 25)
                .fill(Color.white)
                .frame(width: 175, height: 150)
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 10)
            Rectangle()
                .fill(Color.yellow.opacity(0.2))
                .frame(width: 175, height: 30)
            Rectangle()
                .fill(Color.black.opacity(0.2))
                .frame(width: 175, height: 2)
                .offset(y: 30)
            VStack(alignment: .leading) {
                Text("Yellow Card!")
                    .font(.title)
                    .bold()
                HStack {
                    Text("Minute:")
                        .bold()
                    Text("\(yellowCardMin)")
                }
                Text(yellowCardPlayer)
            }
        }
        .padding()
    }
}


struct YellowCardView_Previews: PreviewProvider {
    static var previews: some View {
        YellowCardView(yellowCardMin: 20, yellowCardPlayer: "Matthew Garlington")
    }
}
