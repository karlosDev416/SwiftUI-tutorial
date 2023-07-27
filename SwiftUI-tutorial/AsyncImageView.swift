//
//  AsyncImageView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 7/26/23.
//

import SwiftUI

struct AsyncImageView: View {
    
    private let url = URL(string: "https://placebear.com/1000/1000")!
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
            
        } placeholder: {
            ProgressView()
        }
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
