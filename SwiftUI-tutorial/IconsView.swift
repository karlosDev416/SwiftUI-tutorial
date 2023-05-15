//
//  IconsView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct IconsView: View {
    var body: some View {
        Image(systemName: "moon.circle.fill")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 200)
    }
}

struct IconsView_Previews: PreviewProvider {
    static var previews: some View {
        IconsView()
    }
}
