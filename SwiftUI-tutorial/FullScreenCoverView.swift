//
//  FullScreenCoverView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/18/23.
//

import SwiftUI

struct FullScreenCoverView: View {
    
    @State var isPresented = false
    
    var body: some View {
        VStack {
            Text("View 1")
                .padding()
            Button("Ok") {
                isPresented = true
            }
        }
        .sheet(isPresented: $isPresented,
//        .fullScreenCover(isPresented: $isPresented,
                         onDismiss: { isPresented = false },
                         content: {
            ZStack {
                Color.red.ignoresSafeArea()
                Button("View 2") {
                    isPresented = false
                }
            }
        })
    }
}

struct FullScreenCoverView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCoverView()
    }
}
