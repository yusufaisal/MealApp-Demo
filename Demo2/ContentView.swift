//
//  ContentView.swift
//  Demo2
//
//  Created by iSal on 29/06/20.
//  Copyright © 2020 iSal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.categories) { item in
                    CategoryMealRow(item: item)
                }
            }
        .listStyle(GroupedListStyle())
            .navigationBarTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
