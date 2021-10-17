//
//  BookmakerView.swift
//  leagueTable
//
//  Created by Mark Wike on 23/09/2021.
//


import SwiftUI

struct BookmakerView: View {
    @ObservedObject var dataController = BookmakerDataController()
    var body: some View {
        List {
            ForEach(dataController.bookmakerInfo?.data ?? [], id: \.self) { bookmaker in
                HStack{
                AsyncImage(url: bookmaker.img)
                Text(" \(bookmaker.name)")
                }
            }
        }
    }
}

struct BookmakerView_Previews: PreviewProvider {
    static var previews: some View {
        BookmakerView()
    }
}
