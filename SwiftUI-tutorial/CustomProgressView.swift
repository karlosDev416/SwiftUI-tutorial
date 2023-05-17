//
//  CustomProgressView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/16/23.
//

import SwiftUI

struct CustomProgressView: View {
    
    @State var isLoading = false
    @State var progress:Float = 0.0
    
    var body: some View {
        VStack {
            VStack {
                if isLoading {
                    ProgressView("Cargando")
                        .scaleEffect(2)
                }
                Button("Cargando") {
                    isLoading = !isLoading
                }.padding(.top, 40)
            }
            VStack {
                ProgressView(value: progress)
                Button("Cargando") {
                    progress += 0.1
                }.padding(.top, 40)
            }
        }
    }
}

struct CustomProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CustomProgressView()
    }
}
