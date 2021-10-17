//
//  EngStadiumView.swift
//  EngStadiumView
//
//  Created by Mark Wike on 16/09/2021.
//

import SwiftUI

struct EngStadiumView: View {
    @ObservedObject var dataController = EnglishStadiumDataController()
    var body: some View {
        List {
            ForEach(dataController.englishStadiums?.data ?? [], id: \.self) { stadium in
                VStack{
                    Text("\(stadium.name)")
                    HStack{
                        Text("Capacity: \(stadium.capacity)")
                        Text("City: \(stadium.city)")
                    }
                }
            }
        }
    }
}

struct EngStadiumView_Previews: PreviewProvider {
    static var previews: some View {
        EngStadiumView()
    }
}
