//
//  AlertView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/18/23.
//

import SwiftUI

struct AlertView: View {
    
    @State var isPresented = false
    
    var body: some View {
        VStack {
            Text("SwiftUI tutorial")
                .padding()
            Button("Aceptar") {
                isPresented = true
            }
        }
        .alert(isPresented: $isPresented, content: {
            Alert(title: Text("This is the title"),
                  primaryButton: .default(Text("Aceptar"),
                                          action: {
                                            print("Aceptar btn pressed")
                                        }),
                  secondaryButton: .destructive(Text("Cancelar")))
        })
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
