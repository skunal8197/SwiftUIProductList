//
//  ImageLoader.swift
//  ProductList
//
//  Created by Shah, Kunal on 2/26/20.
//  Copyright © 2020 Shah, Kunal. All rights reserved.
//

import Foundation
import Combine

class ImageLoader: ObservableObject {
    @Published var dataIsValid = false
    var data:Data?
    var url: String

    init(url: String) {
        self.url = url
        self.makeRequest()
    }
    
    func makeRequest(){
        guard let url = URL(string: url) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.dataIsValid = true
                self.data = data
            }
        }
        task.resume()
    }
}
