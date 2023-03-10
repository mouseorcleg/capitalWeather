//
//  WeatherDataModel.swift
//  capitalWeather
//
//  Created by Maria Kharybina on 10/03/2023.
//

import Foundation

struct WeatherDataModel: Codable {
    let timezone: Int
    let name: String
    let weather: [CurrentWeather]
    let main: MainDetails
    let wind: Windy
}

struct CurrentWeather: Codable {
    let main: String
    let icon: String
}

struct MainDetails: Codable {
    let temp: Float
    let humidity: Int
}

struct Windy: Codable {
    let speed: Float
}
