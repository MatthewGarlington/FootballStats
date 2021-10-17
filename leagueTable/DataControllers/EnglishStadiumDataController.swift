//
//  EnglishStadiumDataController.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation


// this is the datacontroller for the list of englaish stadiums the model is in english model
class EnglishStadiumDataController: ObservableObject {


    @Published var englishStadiums: EnglishStadiums?

    init() {
    //https://app.sportdataapi.com/api/v1/soccer/venues?apikey=599d1b80-0d6e-11ec-a549-9d6e6fe2c510&country_id=42
        let url = URL(string: "https://app.sportdataapi.com/api/v1/soccer/venues?apikey=\(APIKEY)&country_id=42")!

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
                    self.englishStadiums = try JSONDecoder().decode(EnglishStadiums?.self, from: data)


                } catch let jsonError {

                    print("Decoding failed for Vaccine Data", jsonError)
                }
            }
        }
        // execute the HTTP request
        task.resume()

    }
}



