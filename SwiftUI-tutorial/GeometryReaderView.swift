//
//  GeometryReaderView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 7/26/23.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Text("Width: \(proxy.size.width)")
                    .background(Color.orange)
                    .padding()
                Text("Height: \(proxy.size.height)")
                    .background(Color.orange)
                    .padding()
                Text("Coordinates local: \(proxy.frame(in: .local).debugDescription)")
                    .background(Color.orange)
                    .padding()
                Text("Coordinates global: \(proxy.frame(in: .global).debugDescription)")
                    .background(Color.orange)
                    .padding()
            }
        }
        .background(Color.red)
        .frame(width: 300, height: 300)
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
