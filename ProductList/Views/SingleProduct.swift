//
//  SingleProduct.swift
//  ProductList
//
//  Created by Shah, Kunal on 2/26/20.
//  Copyright © 2020 Shah, Kunal. All rights reserved.
//

import SwiftUI

struct SingleProduct: View {
    var product: Product
    var body: some View {
        HStack {
            // Product image
            Thumbnail(withURL: product.thumbnail)
            
            VStack(alignment: .leading) {
                // Product Name
                Text(product.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                // Product Price
                Text(product.price)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }.padding(.leading, 8)
            
        }.padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
    }
}


struct SingleProduct_Previews: PreviewProvider {
    static var previews: some View {
        SingleProduct(product: allProducts.first!)
    }
}
