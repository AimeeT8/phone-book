//
//  DepartmentCardView.swift
//  PhoneBookApp
//
//  Created by Temple on 2024-03-01.
//

import SwiftUI

struct DepartmentCardView: View {
    
    var department: Department
    
    var backgroundColor = Color(
        red: .random(in: 0...0.5),
        green: .random(in: 0...0.5),
        blue: .random(in: 0...0.5)
    )
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20.0, style: .continuous)
                .foregroundStyle(backgroundColor)
            
            VStack {
                Text(department.departmentName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
        }
        .frame(height: 100)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    DepartmentCardView(department: Department(departmentName: "HR", employees: []))
}
