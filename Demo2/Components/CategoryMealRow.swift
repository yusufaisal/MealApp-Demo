//
//  CategoryMealRow.swift
//  Demo2
//
//  Created by iSal on 29/06/20.
//  Copyright © 2020 iSal. All rights reserved.
//

import SwiftUI

struct CategoryMealRow: View {
    var item:CategoryMeal
    var body: some View {
        VStack(alignment:.leading) {
            Text(item.name)
                .padding(.leading,20)
                .padding(.top, 20)
                .font(.headline)
            ScrollView (.horizontal, showsIndicators: false){
                HStack {
                    ForEach(item.meals){ item in
                        MealRow(item:item)
                    }
                }
            }
        }
        .listRowInsets(EdgeInsets())
    }
}
