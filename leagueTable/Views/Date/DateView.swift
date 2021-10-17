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
    @State private var fixtureDate = Date()
    @State private var fixtureDate1 = Date()
    @State private var fixtureDate2 = Date()
    @State private var fixtureDate3 = Date()
    @State private var fixtureDate4 = Date()
    @State private var fixtureDate5 = Date()
    @State private var fixtureDate6 = Date()
    @State private var fixtureDate7 = Date()
    @State private var fixtureDateString = "fuck all date yet"
    @State private var fixtureDateDayString = ""
    @State private var fixtureDateMonthString = ""
    @State private var fixtureDateYearString = "fuck all date yet"
        
    
    
    var body: some View {
        
       
     Text("\(fixtureDateString)")
                .font(.system(size: 30))

            .onAppear {
                fixtureDate1 = fixtureDate
                fixtureDate2 = fixtureDate + 86400
                 fixtureDate3 = fixtureDate + 172800
                 fixtureDate4 = fixtureDate + 259200
                 fixtureDate5 = fixtureDate + 345600
                 fixtureDate6 = fixtureDate + 432000
                 fixtureDate7 = fixtureDate + 518400
                 
                        }
        

        
    
            Text("Date is \(fixtureDate.formatted(.dateTime.year().month().day()))")
        ScrollView(.horizontal,showsIndicators: false) {
   
        HStack(spacing: 3) {
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 50)
            Button("\(fixtureDate1.formatted(.dateTime.month().day()))") {
                
                print("\(fixtureDate1.formatted(.dateTime.month(.twoDigits)))")
                print("\(fixtureDate1.formatted(.dateTime.year()))")
                print("\(fixtureDate1.formatted(.dateTime.day(.twoDigits)))")
                fixtureDateDayString = ("\(fixtureDate1.formatted(.dateTime.day(.twoDigits)))")
                fixtureDateMonthString = ("\(fixtureDate1.formatted(.dateTime.month(.twoDigits)))")
                fixtureDateYearString = ("\(fixtureDate1.formatted(.dateTime.year()))")
                fixtureDateString = ("\(fixtureDateYearString)-\(fixtureDateMonthString)-\(fixtureDateDayString)")
            }
            .foregroundColor(Color.white)
            }
            .frame(width: 70, alignment: .leading)
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 50)
            Button("\(fixtureDate2.formatted(.dateTime.month().day()))") {
                fixtureDateDayString = ("\(fixtureDate2.formatted(.dateTime.day(.twoDigits)))")
                fixtureDateMonthString = ("\(fixtureDate2.formatted(.dateTime.month(.twoDigits)))")
                fixtureDateYearString = ("\(fixtureDate2.formatted(.dateTime.year()))")
                fixtureDateString = ("\(fixtureDateYearString)-\(fixtureDateMonthString)-\(fixtureDateDayString)")
            }
            .foregroundColor(Color.white)
            }
            .frame(width: 70, alignment: .leading)
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 50)
            Button("\(fixtureDate3.formatted(.dateTime.month().day()))") {
                fixtureDateDayString = ("\(fixtureDate3.formatted(.dateTime.day(.twoDigits)))")
                fixtureDateMonthString = ("\(fixtureDate3.formatted(.dateTime.month(.twoDigits)))")
                fixtureDateYearString = ("\(fixtureDate3.formatted(.dateTime.year()))")
                fixtureDateString = ("\(fixtureDateYearString)-\(fixtureDateMonthString)-\(fixtureDateDayString)")
            }
            .foregroundColor(Color.white)
            }
            .frame(width: 70, alignment: .leading)
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 50)
            Button("\(fixtureDate4.formatted(.dateTime.month().day()))") {
                fixtureDateDayString = ("\(fixtureDate4.formatted(.dateTime.day(.twoDigits)))")
                fixtureDateMonthString = ("\(fixtureDate4.formatted(.dateTime.month(.twoDigits)))")
                fixtureDateYearString = ("\(fixtureDate4.formatted(.dateTime.year()))")
                fixtureDateString = ("\(fixtureDateYearString)-\(fixtureDateMonthString)-\(fixtureDateDayString)")
            }
            .foregroundColor(Color.white)
            }
            .frame(width: 70, alignment: .leading)
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 50)
            Button("\(fixtureDate5.formatted(.dateTime.month().day()))") {
                fixtureDateDayString = ("\(fixtureDate5.formatted(.dateTime.day(.twoDigits)))")
                fixtureDateMonthString = ("\(fixtureDate5.formatted(.dateTime.month(.twoDigits)))")
                fixtureDateYearString = ("\(fixtureDate5.formatted(.dateTime.year()))")
                fixtureDateString = ("\(fixtureDateYearString)-\(fixtureDateMonthString)-\(fixtureDateDayString)")
            }
            .foregroundColor(Color.white)
            }
            .frame(width: 70, alignment: .leading)
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 50)
            Button("\(fixtureDate6.formatted(.dateTime.month().day()))") {
                fixtureDateDayString = ("\(fixtureDate6.formatted(.dateTime.day(.twoDigits)))")
                fixtureDateMonthString = ("\(fixtureDate6.formatted(.dateTime.month(.twoDigits)))")
                fixtureDateYearString = ("\(fixtureDate6.formatted(.dateTime.year()))")
                fixtureDateString = ("\(fixtureDateYearString)-\(fixtureDateMonthString)-\(fixtureDateDayString)")
            }
            .foregroundColor(Color.white)
            }
            .frame(width: 70, alignment: .leading)
            ZStack{
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 50)
            Button("\(fixtureDate7.formatted(.dateTime.month().day()))") {
                fixtureDateDayString = ("\(fixtureDate7.formatted(.dateTime.day(.twoDigits)))")
                fixtureDateMonthString = ("\(fixtureDate7.formatted(.dateTime.month(.twoDigits)))")
                fixtureDateYearString = ("\(fixtureDate7.formatted(.dateTime.year()))")
                fixtureDateString = ("\(fixtureDateYearString)-\(fixtureDateMonthString)-\(fixtureDateDayString)")
            }
            .foregroundColor(Color.white)
            }
            .frame(width: 70, alignment: .leading)
            
        }
    }
        PremFixturesView()
    }
   
}

    

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}
