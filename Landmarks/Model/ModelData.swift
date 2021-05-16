//
//  ModelData.swift
//  Landmarks
//
//  Created by masaki kameyama on 2021/05/16.
//

import Foundation

func load() -> [Landmark] {
    print("load")
    
    let fileUrl = Bundle.main.url(forResource: "landmarkData", withExtension: "json")!
    do {
        let data = try Data(contentsOf: fileUrl)
        let jsonDecoder = JSONDecoder()
        let landmarks = try jsonDecoder.decode([Landmark].self, from: data)
        return landmarks
    } catch {
        print(error)
        return []
    }
    
}
