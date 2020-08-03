//
//  MainView.swift
//  ListViewSwiftUIDemo
//
//  Created by prakash Maharjan on 8/3/20.
//  Copyright © 2020 pm. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITableView.appearance().tableFooterView = UIView() // for renoving extra separator after last row.
    }
    
    var body: some View {
        NavigationView{
            List(flowers, id: \.name){flowers in
                NavigationLink(destination: DetailView(flowerName: flowers.name, flowerImage: flowers.image, flowerDescription: flowers.description)) {
                    CellRow(flower: flowers)
                }
                
            }.navigationBarTitle("Flowers")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
