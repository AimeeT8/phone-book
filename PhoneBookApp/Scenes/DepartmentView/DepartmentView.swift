//
//  DepartmentView.swift
//  PhoneBookApp
//
//  Created by Temple on 2024-03-01.
//

import SwiftUI

struct DepartmentView: View {
    
    let departments: [Department]
    
    var body: some View {
        List(departments) { department in
            NavigationLink {
                EmployeeView(
                    employees: department.employees
                    )
            } label: {
                DepartmentCardView(
                    department: department
                    )
            }
            .listRowSeparator(.hidden)
                    }
        .listStyle(.plain)
        .navigationTitle("Departments")
    
        
    }
}

#Preview {
    let service = DataService()
    
    return DepartmentView(departments: service.getFileData().companies[0].departments)
                   
                    
                      
    
}
