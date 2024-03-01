//
//  Company.swift
//  PhoneBookApp
//
//  Created by Temple on 2024-03-01.
//

import Foundation


struct Company: Codable, Identifiable {
    
    let id = UUID()
    var companyName: String
    var departments: [Department]
    
    enum CodingKeys: String, CodingKey {
        case companyName = "company_name"
        case departments
    }
}
