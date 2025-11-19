//
//  Trip.swift
//  TravelDomain
//
//  Created by Apple on 19/11/25.
//

public struct Trip: Identifiable, Equatable, Codable {
    public let id: String
    public let title: String
    public let destinations: [Destination]

    public init(id: String, title: String, destinations: [Destination] = []) {
        self.id = id
        self.title = title
        self.destinations = destinations
    }
}
