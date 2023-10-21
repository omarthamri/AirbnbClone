//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by omar thamri on 21/10/2023.
//

import SwiftUI

struct ListingItemView: View {
    var images = ["listing1","listing2","listing3","listing4"]
    var body: some View {
        VStack(spacing: 8) {
            // images
            TabView {
                ForEach(images,id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 Mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                Spacer()
                // rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
