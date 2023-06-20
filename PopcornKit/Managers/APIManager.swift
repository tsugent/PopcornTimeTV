//
//  APIManager.swift
//  PopcornTime
//
//  Created by Serhii Aksiutin on 6/17/23.
//  Copyright © 2023 PopcornTime. All rights reserved.
//

import Foundation

public class APIManager {
    
    /// Creates a new instance of the APIManager class
    public static let shared = APIManager()
    
    private let baseUrlKey = "BaseUrlKey"
    public private(set) var baseUrl: String
    
    private init() {
        ///  Retrive the base URL from UserDefalts
        if let savedBaseUrl = UserDefaults.standard.string(forKey: baseUrlKey) {
            baseUrl = savedBaseUrl
        } else {
            /// Set a default base URL if none is found in UserDefaults
            baseUrl = "https://movies-api.tk"
        }
    }
    
    /// Function to set the base URL and save it to UserDefaults
    public static func setBaseUrl(_ newBaseUrl: String) {
        shared.baseUrl = newBaseUrl
        UserDefaults.standard.set(newBaseUrl, forKey: shared.baseUrlKey)
    }
    
    /// Function to retrive the base URL
    public static func getBaseUrl() -> String {
        return shared.baseUrl
    }
}

