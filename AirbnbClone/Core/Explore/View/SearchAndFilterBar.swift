//
//  SearchAndFilterBar.swift
//  AirbnbClone
//
//  Created by omar thamri on 21/10/2023.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading,spacing: 2) {
                Text("where to ?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere - Any week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4),radius: 4)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
