//
//  League1SeasonInfoDataController.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation


// this is a JSON list to provide data of available English league 1 for the cuurent season and the previous 3 years also

class League1SeasonInfoDataController: ObservableObject {


    @Published var league1LeagueInfo: League1LeagueInfo?

    init() {
    //https://app.sportdataapi.com/api/v1/soccer/seasons?apikey=599d1b80-0d6e-11ec-a549-9d6e6fe2c510&league_id=239
        let url = URL(string: "https://app.sportdataapi.com/api/v1/soccer/seasons?apikey=\(APIKEY)&league_id=239")!

        let task =  URLSession.shared.dataTask(with: url) { data, response, error in

            // ensure there is no error for this HTTP response
            guard error == nil else {
                print ("error: \(error!)")
                return
            }

            // ensure there is data returned from this HTTP response
            guard let data = data else {
                print("No data")
                return
            }

//             Parse JSON into newJSON struct using JSONDecoder
//                        guard let allSoccerNames = try? JSONDecoder().decode(LeagueNames?.self, from: data) else {
//                           print("Error: Couldn't decode data into all data in MD Info")
//                           return
//                         }
//
//                        print("gotten json response dictionary is \n \(allSoccerNames)")
//             update UI using the response here

            DispatchQueue.main.async {

                do {
                    self.league1LeagueInfo = try JSONDecoder().decode(League1LeagueInfo?.self, from: data)


                } catch let jsonError {

                    print("Decoding failed for Vaccine Data", jsonError)
                }
            }
        }
        // execute the HTTP request
        task.resume()

    }
}
