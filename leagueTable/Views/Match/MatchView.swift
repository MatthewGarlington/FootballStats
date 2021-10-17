//
//  Created by us-guest on 9/26/21.
//

import SwiftUI

struct MatchView: View {
    @State var whichScreen = "Events"
    @ObservedObject var dataController = MatchDataController()
    var body: some View {
        VStack {
            MatchView1()
            ScrollView {
                LazyHStack {
                    PageView()
                }
            }
        }
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}

struct PageView: View {
    @State private var nextTab = 0
    var body: some View {
        TabView(selection: $nextTab) {
            VStack {
                HStack {
                    Text("Events")
                        .font(.largeTitle)
                        .bold()
                    Button {
                        nextTab += 1
                    } label: {
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.black)
                    }
                    .offset(x: 100)
                }
                MatchViewEvents()
                Spacer()
            }
            .tag(0)
            
            VStack {
                HeaderView(nextTab: $nextTab, backArrowImage: "chevron.left", forwardArrowImage: "chevron.right", title: "Table", backNumber: 1, forwardNumber: 1)
                PremierLeagueTableView()
            }
            .tag(1)
            VStack {
                HeaderView(nextTab: $nextTab, backArrowImage: "chevron.left", forwardArrowImage: "chevron.right", title: "Stats", backNumber: 1, forwardNumber: 1)
                MatchViewStats()
                Spacer()
            }
            .tag(2)
            VStack {
                HeaderView(nextTab: $nextTab, backArrowImage: "chevron.left", forwardArrowImage: nil, title: "Line Up", backNumber: 1, forwardNumber: 0)
                MatchViewLineups()
                Spacer()
            }
            .tag(3)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.2)
        .tabViewStyle(PageTabViewStyle())
    }
}


struct HeaderView: View {
    @Binding var nextTab: Int
    var backArrowImage: String?
    var forwardArrowImage: String?
    var title: String
    var backNumber: Int
    var forwardNumber: Int
    var body: some View {
        HStack {
            Button {
                nextTab -= backNumber
            } label: {
                Image(systemName: backArrowImage ?? "")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
            }
            .offset(x: -100)
            Text(title)
                .font(.largeTitle)
                .bold()
            Button {
                nextTab += forwardNumber
            } label: {
                Image(systemName: forwardArrowImage ?? "")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
            }
            .offset(x: 100)
        }
    }
}
 
