//
//  CustomModifiersView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 7/26/23.
//

import SwiftUI

struct NewButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .cornerRadius(20)
    }
}

extension View {
    func newButtonModifier() -> some View {
        self.modifier(NewButtonModifier())
    }
}

struct CustomModifiersView: View {
    var body: some View {
        VStack {
            Text("¡Suscribete a Swift Latino!")
                .bold()
                .padding()
            Button("Quiero suscribirme") {
                print("Suscribir canal de Youtube Swift Latino")
            }
//            .modifier(NewButtonModifier())
            .newButtonModifier()
        }
    }
}

struct CustomModifiersView_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiersView()
    }
}
