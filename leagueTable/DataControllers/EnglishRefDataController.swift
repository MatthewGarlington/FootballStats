//
//  EnglishRefDataController.swift
//  leagueTable
//
//  Created by us-guest on 9/26/21.
//

import Foundation


// this class is the data controller for displaying the list of english referees, the model is in englishmodel
class EnglishRefDataController: ObservableObject {


    @Published var englishRefs: EnglishRefs?

    init() {

        let url = URL(string: "https://app.sportdataapi.com/api/v1/soccer/referees?apikey=\(APIKEY)&country_id=42")!

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

            // Parse JSON into newJSON struct using JSONDecoder
//                        guard let allSoccerNames = try? JSONDecoder().decode(LeagueNames?.self, from: data) else {
//                           print("Error: Couldn't decode data into all data in MD Info")
//                           return
//                         }
//
//                        print("gotten json response dictionary is \n \(allSoccerNames)")
            // update UI using the response here
//
            DispatchQueue.main.async {

                do {
                    self.englishRefs = try JSONDecoder().decode(EnglishRefs?.self, from: data)


                } catch let jsonError {

                    print("Decoding failed for Vaccine Data", jsonError)
                }
            }
        }
        // execute the HTTP request
        task.resume()

    }
}
