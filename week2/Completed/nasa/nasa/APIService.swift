//
//  APIService.swift
//  nasa
//
//  Created by Seunghun Yang on 2021/09/12.
//

import Foundation

class APIService {
    static let apiURL = "https://api.nasa.gov/planetary/apod?api_key=QfWtN1P4Zn0uvmFUZN3PsuhuXoFg0XuroJL2F0Ci&count=50"

    static func fetch(completion: @escaping ([APODResponse]) -> ()) {
        URLSession.shared.dataTask(with: URL(string: apiURL)!) { data, response, error in
            if let _ = error { return }
            guard let data = data else { return  }
            guard let responses = try? JSONDecoder().decode([APODResponse].self, from: data) else { return }
            completion(responses.filter{ $0.type == "image" })
        }.resume()
    }
}
