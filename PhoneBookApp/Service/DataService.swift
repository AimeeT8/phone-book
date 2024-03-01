//
//  DataService.swift
//  PhoneBookApp
//
//  Created by Temple on 2024-03-01.
//

import Foundation


struct DataService {
    
    func getFileData() -> AppDataResponse {
        
        // Get the file path to phonebookinfo.json
        guard let url = Bundle.main.url(
            forResource: "phonebookinfo", withExtension: "json"
        ) else {
            fatalError("Unable to load phonebookinfo.json from the bundle")
        }
        do {
            // Read the file and turn it into data
            let data = try Data(contentsOf: url)
            
            // Parse data into a Swift instance
            let decoder = JSONDecoder()
            let appData = try decoder.decode(AppDataResponse.self, from: data)
            return appData
        } catch {
            print(error.localizedDescription)
            // Force a crash if something goes wrong when reading the json file
            // and parsing it into AppDataResponse
            fatalError(error.localizedDescription)
        }
    }
}
