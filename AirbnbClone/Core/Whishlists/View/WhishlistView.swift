//
//  WhishlistView.swift
//  AirbnbClone
//
//  Created by omar thamri on 23/10/2023.
//

import SwiftUI

struct WhishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                VStack(alignment: .leading,spacing: 4) {
                    Text("Log in to view your whishlists")
                        .font(.headline)
                    Text("You can create, view or edit whislists once you've logged in")
                        .font(.footnote)
                }
                    Button {
                        
                    } label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 48)
                            .background(.pink)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                    Spacer()
                
            }
            .padding()
            .navigationTitle("Whishlists")
        }
    }
}

#Preview {
    WhishlistView()
}
