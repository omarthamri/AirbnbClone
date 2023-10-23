//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by omar thamri on 22/10/2023.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listing: Listing
    var body: some View {
        TabView {
            ForEach(listing.imageURLs,id: \.self) { imageUrl in
                Image(imageUrl)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listing[0])
}
