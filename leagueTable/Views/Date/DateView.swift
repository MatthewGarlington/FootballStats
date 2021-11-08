//
//  DateView.swift
//  leagueTable
//
//  Created by Mark Wike on 29/09/2021.
//

import SwiftUI
class GlobalString: ObservableObject {
    @Published var stringy = ""
    @Published var temperature = 0.0
}

struct DateView: View {
    @State private var fixtureDate1 = Date()
    @State private var fixtureDate2 = Date() + 86400
    @State private var fixtureDate3 = Date() + 172800
    @State private var fixtureDate4 = Date() + 259200
    @State private var fixtureDate5 = Date() + 345600
    @State private var fixtureDate6 = Date() + 432000
    @State private var fixtureDate7 = Date() + 518400
    @State private var fixtureDateString = "fuck all date yet"
    @State private var fixtureDateDayString = ""
    @State private var fixtureDateMonthString = ""
    @State private var fixtureDateYearString = "fuck all date yet"
    
    var body: some View {
        let datesArray: [Date] = [fixtureDate1, fixtureDate2, fixtureDate3, fixtureDate4, fixtureDate5, fixtureDate6, fixtureDate7]
        VStack {
            
            Text("\(fixtureDateString)")
                .font(.system(size: 30))
            Text("Date is \(fixtureDate1.formatted(.dateTime.year().month().day()))")
            
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 3) {
                    ForEach(datesArray, id: \.self) { date in
                        Button {
                            fixtureDateDayString = ("\(date.formatted(.dateTime.day(.twoDigits)))")
                            fixtureDateMonthString = ("\(date.formatted(.dateTime.month(.twoDigits)))")
                            fixtureDateYearString = ("\(date.formatted(.dateTime.year()))")
                            fixtureDateString = ("\(fixtureDateYearString)-\(fixtureDateMonthString)-\(fixtureDateDayString)")
                        } label: {
                            DateButtonView(date: date)
                        }
                    }
                }
            }
            PremFixturesView()
        }
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}

struct DateButtonView: View {
    var date: Date
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(Color.gray.opacity(0.2))
                .frame(height: 50)
            Text("\(date.formatted(.dateTime.month().day()))")
                .foregroundColor(Color.white)
        }
        .frame(width: 70, alignment: .leading)
    }
}
