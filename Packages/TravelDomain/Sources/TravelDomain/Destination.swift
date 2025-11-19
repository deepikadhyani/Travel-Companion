//
//  Destination.swift
//  TravelDomain
//
//  Created by Apple on 19/11/25.
//

public struct Destination: Identifiable, Equatable, Codable {
    public let id: String
    public let name: String
    public let country: String
    public let imageURL: String?
    public let rating: Double?

    public init(
        id: String,
        name: String,
        country: String,
        imageURL: String? = nil,
        rating: Double? = nil
    ) {
        self.id = id
        self.name = name
        self.country = country
        self.imageURL = imageURL
        self.rating = rating
    }
}
