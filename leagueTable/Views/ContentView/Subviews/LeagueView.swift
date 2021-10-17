//
//  LeagueView.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI


struct LeagueView: View {
    
    var image : String
    var name : String
    var position : Int
    var played: Int
    var won: Int
    var draw: Int
    var lose: Int
    var gd: Int
    var points: Int
    var body: some View {
        VStack{
            HStack(alignment: .top) {
                Text("\(position)")
                    .frame(width: 22, alignment: .leading)
                Image(image)
                    .resizable()
                    .frame(width: 20.0, height: 20.0, alignment: .center)
                
                
                Text(name)
                    .frame(width: 130, alignment: .leading)
                    .padding(.leading, 4)
                    .font(.system(size: 15))
                    .foregroundColor(Color.gray)
                Text("\(played)")
                    .frame(width: 18)
                Text("\(won)")
                    .frame(width: 18)
                Text("\(draw)")
                    .frame(width: 18)
                Text("\(lose)")
                    .frame(width: 18)
                Text("\(gd)")
                    .frame(width: 18)
                Text("\(points)")
                    .frame(width: 18)
            }
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 320, height: 3)
        }
        .padding(5)
    }
}


struct LeagueView_Previews: PreviewProvider {
    static var previews: some View {
        LeagueView(image: "", name: "", position: 1, played: 1, won: 1, draw: 1, lose: 1, gd: 1, points: 1)
    }
}
