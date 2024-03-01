//
//  Department.swift
//  PhoneBookApp
//
//  Created by Temple on 2024-03-01.
//

import Foundation

struct Department: Codable, Identifiable {
    
    let id = UUID()
    var departmentName: String
    var employees: [Employee]
    
    enum CodingKeys: String, CodingKey {
        case departmentName = "department_name"
        case employees
    }
}
