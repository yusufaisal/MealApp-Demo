//
//  HomeViewModel.swift
//  Demo2
//
//  Created by iSal on 29/06/20.
//  Copyright © 2020 iSal. All rights reserved.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var categories = [CategoryMeal]()
    
    init() {
        fetchData()
    }
    
    private func fetchData(){
        Service().loadData() { (categories) in
            if let categories = categories {
                self.categories = categories
            }
        }
    }
}
