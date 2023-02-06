//
//  APIkeyHelper.swift
//  OneCallOpenWeather
//
//  Created by cmStudent on 2023/01/18.
//

import SwiftUI

struct APIkeyHelper {
    private let keyPath = Bundle.main.path(forResource: "APIKEY", ofType: "plist")
    
    func getKey() -> NSDictionary? {
        guard let keyPath = keyPath else {
            return nil
        }
        return NSDictionary(contentsOfFile: keyPath)
    }
    
    func getValue(key: String) -> AnyObject? {
        guard let keys = getKey() else {
            return nil
        }
        return keys[key]! as AnyObject
    }
}
