//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by omar thamri on 22/10/2023.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = ["listing1","listing2","listing3","listing4"]
    var body: some View {
        TabView {
            ForEach(images,id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(images: ["listing1","listing2"])
}
