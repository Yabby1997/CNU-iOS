//
//  APOD.swift
//  nasa
//
//  Created by Seunghun Yang on 2021/09/12.
//

import Foundation

struct APODResponse: Decodable {
    let title: String
    let date: String
    let description: String
    let type: String
    let url: String
    
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case date = "date"
        case description = "explanation"
        case type = "media_type"
        case url = "url"
    }
}
