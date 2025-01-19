import Foundation

class MuseumsRemoteDataSource {
    private let baseURL = "https://www.nosyapi.com/apiv2/service/museum"
    private let apiKey = "cH3w1KpUJ1gLrcHw88WQeUyd6PsqmadTCU30ECtgqjk2BmChEHYDGUbRNoL2"
    
    func fetchMuseums(forCity city: String, completion: @escaping (Result<[MuseumData], Error>) -> Void) {
        guard var urlComponents = URLComponents(string: baseURL) else {
            completion(.failure(NSError(domain: "Invalid URL", code: 400, userInfo: nil)))
            return
        }
        
        urlComponents.queryItems = [
            URLQueryItem(name: "apiKey", value: apiKey),
            URLQueryItem(name: "city", value: city)
        ]
        
        guard let url = urlComponents.url else {
            completion(.failure(NSError(domain: "URL Generation Failed", code: 400, userInfo: nil)))
            return
        }
        
        print("Generated URL: \(url)")
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No Data", code: 500, userInfo: nil)))
                return
            }
            
            print("Received Data: \(data)")
            
            do {
                // JSON parse işlemi
                let decodedResponse = try JSONDecoder().decode(MuseumResponse.self, from: data)
                // Response'u UI modeliyle eşleştiriyoruz
                let museums = decodedResponse.data.map({$0})
                completion(.success(museums))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
struct MuseumResponse: Decodable,Hashable {
    let status: String
    let message: String
    let data: [MuseumData]
}

struct MuseumData: Decodable,Hashable {
    let id: Int
    let name: String
    let description: String
    let address: String
    let workingTime: String
    let details: String
    let latitude: Double
    let longitude: Double
    let phone: String
    let email: String
    let website: String
    let city: String
    let district: String
}
