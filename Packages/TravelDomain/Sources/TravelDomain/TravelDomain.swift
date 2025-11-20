public protocol DestinationRepository {
    func getRecommendations() async throws -> [Destination]
    func search(query: String) async throws -> [Destination]
}
