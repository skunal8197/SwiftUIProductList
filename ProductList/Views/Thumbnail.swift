//
//  Thumbnail.swift
//  ProductList
//
//  Created by Shah, Kunal on 2/26/20.
//  Copyright © 2020 Shah, Kunal. All rights reserved.
//

import SwiftUI

struct Thumbnail: View {
    @ObservedObject var imageLoader:ImageLoader
    
    @State var image:UIImage = UIImage()

    init(withURL url:String) {
        imageLoader = ImageLoader(url: url)
    }
    
    func imageFromData(_ data:Data) -> UIImage {
        UIImage(data: data) ?? UIImage()
    }

    var body: some View {
        VStack {
            Image(uiImage: imageLoader.dataIsValid ? imageFromData(imageLoader.data!) : UIImage())
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipped()
                .clipShape(Circle())
                .shadow(radius: 5)
        }
    }
}

struct Thumbnail_Previews: PreviewProvider {
    static var previews: some View {
        Thumbnail(withURL: Constants.staticURL)
    }
}
