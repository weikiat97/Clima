//
//  WeatherModel.swift
//  Clima
//
//  Created by Loh Wei Kiat on 11/6/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    
    // computed properties -> helps to work out the values based on code inside the function.
    // no need to call an extra function, it will allow users to use this like a property
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "clodu"
        }
    }
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
}
