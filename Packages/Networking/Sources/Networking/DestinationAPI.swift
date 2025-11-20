import Foundation
import TravelDomain

public final class DestinationAPI: DestinationRepository {
    private let client: APIClient
    private let baseURL: URL

    public init(baseURL: URL, client: APIClient = APIClient()) {
        self.baseURL = baseURL
        self.client = client
    }

    public func getRecommendations() async throws -> [Destination] {
        let url = baseURL.appendingPathComponent("/recommendations.json")
        if #available(iOS 15.0, macOS 12.0, *) {
            return try await client.get(url)
        } else {
            throw URLError(.unsupportedURL)
        }
    }

    public func search(query: String) async throws -> [Destination] {
        var comps = URLComponents(url: baseURL.appendingPathComponent("/search"), resolvingAgainstBaseURL: false)!
        comps.queryItems = [URLQueryItem(name: "q", value: query)]
        guard let url = comps.url else { return [] }
        if #available(iOS 15.0, macOS 12.0, *) {
            return try await client.get(url)
        } else {
            throw URLError(.unsupportedURL)
        }
    }
}
