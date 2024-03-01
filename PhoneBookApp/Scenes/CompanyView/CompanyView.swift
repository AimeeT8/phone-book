//
//  ContentView.swift
//  PhoneBookApp
//
//  Created by Temple on 2024-03-01.
//

import SwiftUI

struct CompanyView: View {
    @State private var companies = [Company]()
    let dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            List(companies) {
                company in
                NavigationLink {
                    DepartmentView(departments: company.departments)
                } label: {
                    CompanyCardView(
                        company: company)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Companies")
            
            
            
        }
        .ignoresSafeArea()
        .onAppear {
            companies = dataService.getFileData().companies
        }
        
        
    }
}

#Preview {
    CompanyView()
}
