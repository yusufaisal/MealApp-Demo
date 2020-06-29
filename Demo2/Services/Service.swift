//
//  Service.swift
//  Demo2
//
//  Created by iSal on 29/06/20.
//  Copyright © 2020 iSal. All rights reserved.
//

import Foundation

struct NewResponse: Codable {
    let data: [CategoryMeal]
}

class Service {
    let url:URL = URL(string: "https://meal-app-demo.herokuapp.com/")!
    func loadData( completion: @escaping ([CategoryMeal]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let response = try? JSONDecoder().decode(NewResponse.self, from: data)
            if let response = response {
                DispatchQueue.main.async {
                    completion(response.data)
                }
            }
        }.resume()
    }
}

