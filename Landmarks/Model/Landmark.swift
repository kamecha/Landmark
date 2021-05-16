//
//  Landmark.swift
//  Landmarks
//
//  Created by masaki kameyama on 2021/05/16.
//

import Foundation

struct Landmark: Decodable {
    let id: Int
    let name: String
    let category: String
    let city: String
    let state: String
    let isFeatured: Bool
    let isFavorite: Bool
    let park: String
    
    let description: String
    let imageName: String
}
