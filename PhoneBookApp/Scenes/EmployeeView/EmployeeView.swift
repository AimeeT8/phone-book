//
//  EmployeeView.swift
//  PhoneBookApp
//
//  Created by Temple on 2024-03-01.
//

import SwiftUI

struct EmployeeView: View {
    
    var employees: [Employee]
    
    var body: some View {
     
        List(employees) { employee in
            EmployeeCardView(employee: employee)
        }
        .listStyle(.plain)
        .navigationTitle("Employees")
    }
}

#Preview {
    let dataService = DataService()
    
    return EmployeeView(employees: dataService
        .getFileData()
        .companies[0]
        .departments[0]
        .employees
                 
                 
                 
    )
}
