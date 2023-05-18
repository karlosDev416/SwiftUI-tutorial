//
//  CustomNavigationView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/18/23.
//

import SwiftUI

struct CustomNavigationView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Menu 1") {
                    Text("Some information")
                }
                Text("Menu 2")
                Text("Menu 3")
                Text("Menu 4")
            }
            .navigationBarItems(trailing: Button("Done") {
                print("Done pressed")
            })
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarHidden(false)
        }
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
    }
}
