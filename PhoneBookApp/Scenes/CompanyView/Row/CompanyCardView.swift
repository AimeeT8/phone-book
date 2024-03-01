//
//  CompanyCardView.swift
//  PhoneBookApp
//
//  Created by Temple on 2024-03-01.
//

import SwiftUI

struct CompanyCardView: View {
    
    var company: Company
    var body: some View {
        ZStack {
            Image(company.companyName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(
                    RoundedRectangle(
                        cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/,
                        style: .continuous
                    )
            )
                .shadow(color: .black.opacity(0.6), radius: 8, x: 0.0, y: 8.0)
            
        }
        .frame(height: 140)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    CompanyCardView(
        company: Company(
            companyName: "ABC Corporation",
            departments: []))
}
