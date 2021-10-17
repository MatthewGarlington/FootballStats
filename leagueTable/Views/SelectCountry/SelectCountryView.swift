//
//  SelectCountryView.swift
//  leagueTable
//
//  Created by Mark Wike on 20/09/2021.
//

import SwiftUI

struct SelectCountryView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(CountryButtonInfo, id: \.id) { rowInfo in
                    NavigationLink(destination: DetailView(rowInfo: rowInfo)) {
                        InfoCard(country: rowInfo.country, image: rowInfo.image, color: rowInfo.color)
                    }
                }
            }
            .navigationBarTitle(Text("Select Country"))
        }
    }
}

struct SelectCountryView_Previews: PreviewProvider {
    static var previews: some View {
        SelectCountryView()
    }
}



struct InfoCard: View {
    var country: String
    var image: String
    var color: Color
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(Color.gray.opacity(0.2))
                .frame(height: 100)
            HStack {
                Image(image)
                
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .frame(width: 90.0, height: 70.0, alignment: .center)
                    .padding()
                
                VStack(alignment: .leading) {
                    Text(country)
                        .font(.system(size: 30))
                }
            }
        }
        .padding(.horizontal)
    }
}


