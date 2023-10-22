//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by omar thamri on 21/10/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var showSearchDestinationView = false
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
                            ForEach(0..<10,id: \.self) { listing in
                                NavigationLink(value: listing) {
                                    ListingItemView()
                                        .frame(height:400)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                    }
                    .padding()
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
