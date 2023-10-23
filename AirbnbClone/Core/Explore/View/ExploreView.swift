//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by omar thamri on 21/10/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var showSearchDestinationView = false
    @StateObject private var viewModel: ExploreViewModel = ExploreViewModel(service: ExploreService())
    var body: some View {
        
        NavigationStack {
            if showSearchDestinationView {
                DestinationSearchView(show: $showSearchDestinationView)
            } else {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showSearchDestinationView.toggle()
                            }
                        }
                    LazyVStack(spacing: 32) {
                        ForEach(viewModel.listings) { listing in
                                NavigationLink(value: listing) {
                                    ListingItemView(listing: listing)
                                        .frame(height:400)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                    }
                    .padding()
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
