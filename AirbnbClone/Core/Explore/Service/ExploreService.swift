//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by omar thamri on 23/10/2023.
//

import Foundation

class ExploreService {
    
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listing
        
    }
    
}
