//
//  CategoryMeal.swift
//  Demo2
//
//  Created by iSal on 29/06/20.
//  Copyright © 2020 iSal. All rights reserved.
//

import Foundation

struct CategoryMeal: Codable, Identifiable {
    let id = UUID()
    let name:String
    let meals:[Meal]
    
    init (name:String, meals:[Meal]){
        self.name = name
        self.meals = meals
    }
}

