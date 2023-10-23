//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by omar thamri on 23/10/2023.
//

import Foundation

class DeveloperPreview {
    static var shared = DeveloperPreview()
    var listing: [Listing] = [
        
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Michael Scott", ownerImageUrl: "michael", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, pricePerNight: 567, latitude: 25.7850, longitude: -80.1936, imageURLs: ["listing1","listing2","listing3","listing4"], address: "124 Main st", city: "Miami", state: "Florida", title: "Miami Villa", rating: 4.86, features: [.selfCheckIn,.superHost], amenities: [.wifi,.alarmSystem,.balcony,.laundry,.tv], type: .villa),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Harvey specter", ownerImageUrl: "harvey_specter", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, pricePerNight: 763, latitude: 34.2, longitude: -118.0426, imageURLs: ["listing2","listing1","listing3","listing4"], address: "124 Main st", city: "Los angeles", state: "California", title: "Beautiful los angeles home in malibu", rating: 4.86, features: [.selfCheckIn,.superHost], amenities: [.wifi,.pool,.tv], type: .apartment),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Harvey specter", ownerImageUrl: "harvey_specter", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, pricePerNight: 567, latitude: 25.7850, longitude: -80.1936, imageURLs: ["listing3","listing2","listing1","listing4"], address: "124 Main st", city: "Miami", state: "Florida", title: "Miami Villa", rating: 4.86, features: [.selfCheckIn,.superHost], amenities: [.wifi,.alarmSystem,.balcony,.laundry,.tv], type: .villa)
        
    ]
}
