//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by omar thamri on 23/10/2023.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    @Published var listings = [Listing]()
    private let service: ExploreService
    @Published var searchLocation: String = ""
    private var listingCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        Task { try await fetchListing()}
    }
    
    func fetchListing() async {
        do {
            self.listings = try await service.fetchListing()
            self.listingCopy = listings
        } catch {
            print("failed to fetch listing with \(error)")
        }
    }
    
    func updateListingForLocation() {
        let filteredListing = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() || $0.state.lowercased() == searchLocation.lowercased()
        })
        self.listings = filteredListing.isEmpty ? listingCopy : filteredListing
    }
    
}
