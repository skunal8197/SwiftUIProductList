//
//  Request.swift
//  ProductList
//
//  Created by Shah, Kunal on 2/26/20.
//  Copyright © 2020 Shah, Kunal. All rights reserved.
//

import Foundation
import Combine

class Request: ObservableObject {
    var products:Products
    var url: String

    init(url: String, products: Products) {
        self.url = url
        self.products = products
        makeRequest()
    }
    
    func makeRequest(){
        guard let url = URL(string: url) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            print(data)
            
            do {
                //create decodable object from data
                let decodedObject = try JSONDecoder().decode(Products.self, from: data)
                print(decodedObject)
                DispatchQueue.main.async {
                    self.products = decodedObject
                }
            } catch let error {
                print(error)
            }
            
        }
        task.resume()
    }
}
