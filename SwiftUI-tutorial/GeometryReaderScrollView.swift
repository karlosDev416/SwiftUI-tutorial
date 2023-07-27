//
//  GeometryReaderScrollView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 7/26/23.
//

import SwiftUI

let arrayOfNames = [
    "SwiftBeta",
    "Aprende SwiftUI",
    "Aprende Swift",
    "Aprende Xcode",
    "SwiftUI",
    "Xcode",
    "Swift"
]

struct GeometryReaderScrollView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(arrayOfNames, id: \.self) { name in
                    GeometryReader { proxy in
                        VStack {
                            Text("\(proxy.frame(in: .global).minY)")
                            Spacer()
                            Text("\(name)")
                                .frame(width: 370, height: 200)
                                .background(.green)
                                .cornerRadius(20)
                            Spacer()
                        }
                        .shadow(color: .gray, radius: 10, x:0, y: 0)
                        .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).minY - 47)), axis: (x: 0, y: 10, z: 0))
                    }
                    .frame(width: 370, height: 300)
                }
            }
            .padding(.trailing)
        }
        .padding(.horizontal)
    }
}

struct GeometryReaderScrollView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderScrollView()
    }
}
