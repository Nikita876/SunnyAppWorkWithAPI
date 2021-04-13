//
//  CurrentWeaterData.swift
//  SunnyApp
//
//  Created by Никита Коголенок on 4.02.21.
//

import Foundation

struct CurrentWeaterData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}

struct Weather: Codable {
    let id: Int
}
