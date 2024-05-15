//
//  RecipeModel.swift
//  CAPlusTDD
//
//  Created by Shashwat Mishra on 23/01/2024.
//

import Foundation

// MARK: - RecipeModelElement
struct RecipeModelElement: Codable {
    var id, name, headline: String?
    var image: String?
    var preparationMinutes: Int?

    enum CodingKeys: String, CodingKey {
        case id, name, headline, image
        case preparationMinutes = "preparation_minutes"
    }
}

typealias RecipeModel = [RecipeModelElement]
