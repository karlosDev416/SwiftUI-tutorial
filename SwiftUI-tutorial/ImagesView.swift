//
//  ImagesView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        Image("youtube")
            .resizable(resizingMode: .tile)
//            .renderingMode(.template)
//            .resizable()
//            .scaledToFit()
//            .frame(width: 98, height: 68)
//            .foregroundColor(.blue)
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
