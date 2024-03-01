//
//  Employee.swift
//  PhoneBookApp
//
//  Created by Temple on 2024-03-01.
//

import Foundation


struct Employee: Codable, Identifiable {
    let id = UUID()
    var name: String
    var position: String
    var email: String
    var phone: String
    
    enum CodingKeys: String, CodingKey {
        case name, position, email, phone 
    }
}
