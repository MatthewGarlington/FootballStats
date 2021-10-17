//
//  PremFixturesView.swift
//  leagueTable
//
//  Created by Mark Wike on 24/09/2021.
//

import SwiftUI


struct PremFixturesView: View {
    @State private var fixtureDate = Date()
    @ObservedObject var dataController = PremLeagueFixtureDataController()
    var body: some View {
        List {
            ForEach(dataController.premLeagueFixturesInfo?.data ?? [], id: \.self) { fixture in
                VStack{
                    HStack{
                        Text("H")
                            .foregroundColor(Color.gray)
                        AsyncImage(url: (fixture.home_team.logo), scale: 4.0)
                            .frame(width: 22, alignment: .leading)
                        //                        .frame(maxWidth: 30, maxHeight: 30)
                        Text("\(fixture.home_team.name)")
                            .font(.system(size: 14))
                            .frame(width: 200, alignment: .leading)
                    }
                    
                    HStack{
                        Text("A")
                            .foregroundColor(Color.gray)
                        AsyncImage(url: (fixture.away_team.logo), scale: 4.0)
                            .frame(width: 22, alignment: .leading)
                        //  .frame(maxWidth: 30, maxHeight: 30)
                        Text("\(fixture.away_team.name)")
                            .font(.system(size: 14))
                            .frame(width: 200, alignment: .leading)
                        
                    }
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 280, height: 3)
                }
            }
        }
        
        VStack {
            DatePicker(selection: $fixtureDate, in: Date()..., displayedComponents: .date) {
                Text("Select a date")
                    .onAppear {
                        self.printdate()     // 3)
                    }
            }
            Text("Date is \(fixtureDate.formatted(date: .numeric, time: .omitted))")
        }
        Text("Date is \(fixtureDate.formatted(.dateTime.year().month().day().weekday().hour().minute().second().timeZone()))")
        Text("Date is \(fixtureDate.formatted(.dateTime.year().month().day()))")
        
    }
    
    func printdate() {
        print("woohoo")
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-mm-dd"
        formatter.calendar = Calendar(identifier: .gregorian)
        print(formatter.string(from: fixtureDate))
        //  testtime = formatter.string(from: fixtureDate)
    }
}


struct PremFixturesView_Previews: PreviewProvider {
    static var previews: some View {
        PremFixturesView()
    }
}
