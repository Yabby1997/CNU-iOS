//
//  APIService.swift
//  nasa
//
//  Created by Seunghun Yang on 2021/09/12.
//

import Foundation

class APIService {
    static let apiKey = "발급받은 NASA API 키를 여기에 넣어주세요"
    static let fetchCount = 10
    static let apiURL = "https://api.nasa.gov/planetary/apod?api_key=\(apiKey)&count=\(fetchCount)"

    static func fetchAPOD(completion: @escaping ([APODResponse]) -> ()) {
        URLSession.shared.dataTask(with: URL(string: apiURL)!) { data, response, error in
            if let _ = error { return }
            guard let data = data else { return  }
            guard let responses = try? JSONDecoder().decode([APODResponse].self, from: data) else { return }
            completion(responses.filter{ $0.type == "image" })
        }.resume()
    }
    
    static func fetchData(url: String, completion: @escaping (Data) -> ()) {
        guard let url = URL(string: url),
              let data = try? Data(contentsOf: url) else { return }
        completion(data)
    }
}
