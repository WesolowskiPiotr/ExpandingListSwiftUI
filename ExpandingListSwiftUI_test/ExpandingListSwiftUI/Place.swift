//
//  Place.swift
//  ExpandingListSwiftUI
//
//  Created by Piotr Wesołowski on 09/02/2023.
//

struct Place: Identifiable, Hashable {
    let id: Int
    let name: String
    let country: String
    let city: String
    let street: String
    let zip: String
    let phoneNumber: String
    
    static func samples() -> [Place] { (0..<100).map(Place.fixture) }
    
    private static func fixture(_ id: Int) -> Place {
        Place(
            id: id,
            name: "Place #\(id)",
            country: "Country #\(id)",
            city: "City #\(id)",
            street: "Street #\(id)",
            zip: "Zip #\(id)",
            phoneNumber: "Phone #\(id)"
        )
    }
}
