//
//  StartScreen.swift
//  StartScreen
//
//  Created by Mark Wike on 16/09/2021.
//

import SwiftUI

struct StartScreen: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Mighty")
                    .font(.custom("Futura Medium Italic", size: 60))
                Text("Goals")
                    .font(.custom("Futura Medium Italic", size: 60))
                NavigationLink(destination: SelectCountryView()) {
                    ZStack{
                        Rectangle()
                            .fill(Color(.white))
                            .frame(width: 140.0, height: 80.0, alignment: .center)
                        Text("Start")
                            .font(.custom("Futura Medium Italic", size: 60))
                    }
                }
            }
        }
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
