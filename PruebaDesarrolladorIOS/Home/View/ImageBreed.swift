//
//  ImageBreed.swift
//  PruebaDesarrolladorIOS
//
//  Created by Ruben Dario Rocha Lizcano on 22/02/23.
//

import SwiftUI

struct ImageBreed: View {
    
    @ObservedObject var urlImageModel: ImageLoader
        
    init(urlString: String? = ""){
        urlImageModel = ImageLoader(
            urlString: urlString,
            endPoint: Constants.EndPoints.breedsImage
        )
    }
    
    var body: some View {
        ZStack {
            ProgressView()
            Image(uiImage: urlImageModel.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 300, alignment: .center)
        }
    }
}

struct ImageBreed_Previews: PreviewProvider {
    static var previews: some View {
        ImageBreed()
    }
}
