//
//  Forecast.swift
//  OneCallOpenWeather
//
//  Created by cmStudent on 2023/01/17.
//

import SwiftUI
import Foundation


struct EightWeatherStructure:Codable {
    struct Daily: Codable {
        let dt: Date
        struct Temp: Codable {
            let morn: Double
            let day: Double
            let eve: Double
            let night: Double
            let min: Double
            let max: Double
        }
        let temp: Temp
        let humidity: Int
        struct Weather: Codable {
            let id: Int
            let description: String
            let icon: String
            var weatherIconURL: URL {
                let urlString = "http://openweathermap.org/img/wn/\(icon)@2x.png"
                return URL(string: urlString)!
            }
        }
        let weather: [Weather]
        let clouds: Int
        let pop: Double
    }
    let daily: [Daily]
    
    
}

// 気温　ケルビン - 273.15 = 体温（多分）
