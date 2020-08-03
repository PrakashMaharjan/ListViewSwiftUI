//
//  Flower.swift
//  ListViewSwiftUIDemo
//
//  Created by prakash Maharjan on 8/3/20.
//  Copyright © 2020 pm. All rights reserved.
//

import Foundation

struct Flower:Decodable {
    let name, image, description: String
}


let flowers = [
    
    Flower.init(name: "Rose", image: "rose", description: "A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears."),
    Flower.init(name: "Lotus", image: "lotus", description: "Lotuses are found in white and pink colors in general and they grow in shallow and murky waters."),
    Flower.init(name: "Marigold", image: "marigold", description: "It has the biological name of Calendula officinalis. It is often called as the Scotch marigold, ruddles or pot marigold."),
    
];
