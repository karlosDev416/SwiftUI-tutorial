//
//  ActionSheetView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/18/23.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State var isPresented = false
    
    var body: some View {
        VStack {
            Text("SwiftUI tutorial")
                .padding()
            Button("Aceptar") {
                isPresented = true
            }
        }
        .actionSheet(isPresented: $isPresented) {
            ActionSheet(title: Text("Aprende SwiftUI"),
                        message: Text("Elige una opción:"),
                        buttons: [
                            .default(Text("SwiftUI"), action: {
                                print("Aprende SwiftUI")
                            }),
                            .default(Text("Xcode")),
                            .destructive(Text("Cancelar"))
                        ] )
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
