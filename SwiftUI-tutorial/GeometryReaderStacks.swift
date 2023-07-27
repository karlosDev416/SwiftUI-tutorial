//
//  GeometryReaderStacks.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 7/26/23.
//

import SwiftUI

struct GeometryReaderStacks: View {
    var body: some View {
        VStack {
            GeometryReader { proxy in
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Rectangle()
                            .foregroundColor(.green)
                            .overlay(Text("1"))
                            .frame(width: proxy.size.width/2, height: proxy.size.height/2)
                        Rectangle()
                            .foregroundColor(.orange)
                            .overlay(Text("2"))
                            .frame(width: proxy.size.width/2, height: proxy.size.height/2)
                    }
                    Rectangle()
                        .foregroundColor(.purple)
                        .overlay(Text("3"))
                        .frame(width: proxy.size.width, height: proxy.size.height * 0.33)
                }
            }
            .background(.red)
        }
    }
}

struct GeometryReaderStacks_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderStacks()
    }
}
