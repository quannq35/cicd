//
//  DemoCicd.swift
//  cicd
//
//  Created by Quân Nguyễn on 3/7/24.
//

import Foundation

enum CicdEnviroment {
    private static let infoDict: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("plist is not found")
        }
        return dict
    }()
    
    static let rootURL: URL = {
        guard let urlString = CicdEnviroment.infoDict["Root_URL"] as? String else {
            fatalError("Root_URL is not found")
        }
        
        guard let url = URL(string: urlString) else {
            fatalError("Root_URL is invalid")
        }
        return url
    }()

    static let apiKey: String = {
        guard let key = CicdEnviroment.infoDict["Api_Key"] as? String else {
            fatalError("Api_Key is not found")
        }
        return key
    }()
}
