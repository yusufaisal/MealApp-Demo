//
//  Meal.swift
//  Demo2
//
//  Created by iSal on 29/06/20.
//  Copyright © 2020 iSal. All rights reserved.
//

import Foundation

struct Meal: Codable, Identifiable {
    let id =  UUID()
    let title: String
    let image: String
    
    init(title:String,image:String ) {
        self.title = title
        self.image = image
    }
}
