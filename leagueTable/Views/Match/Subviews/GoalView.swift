//
//  GoalView.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI


struct GoalView: View {
    var goalMin: Int
    var goalPlayer: String
    var assistPlayer: String
    
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
                Text("Goal!")
                    .font(.title)
                    .bold()
                HStack {
                    Text("Minute:")
                        .bold()
                    Text("\(goalMin)")
                }
                Text(goalPlayer)
                Text(assistPlayer)
            }
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView(goalMin: 20, goalPlayer: "Matthew Garlington", assistPlayer: "Mark Wike")
    }
}
