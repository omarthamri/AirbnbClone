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
    
    init(service: ExploreService) {
        self.service = service
        Task { try await fetchListing()}
    }
    
    func fetchListing() async {
        do {
            self.listings = try await service.fetchListing()
        } catch {
            print("failed to fetch listing with \(error)")
        }
    }
    
}
