//
//  LazyGridsView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/16/23.
//

import SwiftUI

struct LazyGridsView: View {
    var body: some View {
        let elements = 1...500
        let gridElements = [GridItem(.fixed(100)),
                            GridItem(.fixed(100)),
                            GridItem(.fixed(100))]
                                     
        VStack {
            ScrollView {
                LazyVGrid(columns: gridElements, content: {
                    ForEach(elements, id: \.self) { element in
                        VStack {
                            Circle()
                                .frame(width: 40)
                            Text("\(element)")
                        }
                    }
                })
            }
            ScrollView(.horizontal) {
                LazyHGrid(rows: gridElements, content: {
                    ForEach(elements, id: \.self) { element in
                        VStack {
                            Circle()
                                .frame(width: 40)
                            Text("\(element)")
                        }
                    }
                })
            }
        }

    }
}

struct LazyGridsView_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridsView()
    }
}
