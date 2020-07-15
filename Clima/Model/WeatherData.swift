//
//  WeatherData.swift
//  Clima
//
//  Created by Loh Wei Kiat on 11/6/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

// A structure that is able to decode itself from an external 
struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let humidity: Int
    
}

struct Coord: Codable {
    let lon: Double
    let lat: Double
}

struct Weather: Codable {
    let description: String
    let main: String
    let id: Int
    let icon: String
    
}
