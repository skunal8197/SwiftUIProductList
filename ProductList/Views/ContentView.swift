//
//  ContentView.swift
//  ProductList
//
//  Created by Shah, Kunal on 2/26/20.
//  Copyright © 2020 Shah, Kunal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var products: [Product]
    
    var body: some View {
        NavigationView {
            List(products){ product in
                SingleProduct(product: product)
            }.navigationBarTitle(Text("Products"))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(products: allProducts)
    }
}


