//
//  MealRow.swift
//  Demo2
//
//  Created by iSal on 29/06/20.
//  Copyright © 2020 iSal. All rights reserved.
//

import SwiftUI

struct MealRow: View {
    var item:Meal
    var body: some View {
        VStack {
            Image(item.image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .cornerRadius(5)
            Text(item.title)
                .foregroundColor(.primary)
                .font(.callout)
                .frame(width:150, alignment: .leading)
        }
        .padding(.leading, 5)
    }
}

struct MealRow_Previews: PreviewProvider {
    static var previews: some View {
        MealRow(item: Meal(title: "title", image: "Dummy"))
    }
}
