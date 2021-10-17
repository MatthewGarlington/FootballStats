//
//  DetailView.swift
//  leagueTable
//
//  Created by us-guest on 10/13/21.
//

import SwiftUI

struct DetailView: View {
    let rowInfo: RowInfo
    var body: some View {
        ZStack(alignment: .top) {
            
            Rectangle()
            //    .fill(Color(rowInfo.color))
            //   .fill(rowInfo.color)
                .fill(LinearGradient(gradient: Gradient(colors: [rowInfo.thirdColor, rowInfo.secondColor,rowInfo.color]), startPoint: .bottomTrailing, endPoint: .topLeading))
                .ignoresSafeArea()
            
                .padding()
            
            HStack{
                Image(rowInfo.image)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                
                    .frame(width: 70.0, height: 50.0, alignment: .center)
                    .shadow(radius: 30)
                    .padding()
                
                Text(rowInfo.country)
                    .font(.largeTitle)
                    .bold()
            }
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(rowInfo: RowInfo(country: "England", image: "england", color: .white, secondColor: .red, thirdColor: .red))
    }
}

