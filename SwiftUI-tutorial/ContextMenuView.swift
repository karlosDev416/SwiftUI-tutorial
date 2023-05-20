//
//  ContextMenuView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/18/23.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        Text("Aprende SwiftUI")
            .padding()
            .contextMenu(
                ContextMenu(menuItems: {
                    Button("SwiftUI") {
                        print("Aprende SwiftUI")
                    }
                    Button("Xcode") {
                        print("Aprende Xcode")
                    }
                    Button(action: {
                        
                    }, label: {
                        Label("SwiftUI", systemImage: "iphone")
                    })
            }))
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
