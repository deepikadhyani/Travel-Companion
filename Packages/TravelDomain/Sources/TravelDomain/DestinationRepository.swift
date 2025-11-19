//
//  DestinationRepository.swift
//  TravelDomain
//
//  Created by Apple on 19/11/25.
//

public protocol DestinationRepository {
    /// Return recommended destinations for Home screen
    func getRecommendations() async throws -> [Destination]

    /// Search destinations by query. Implementations may support pagination later.
    func search(query: String) async throws -> [Destination]
}
