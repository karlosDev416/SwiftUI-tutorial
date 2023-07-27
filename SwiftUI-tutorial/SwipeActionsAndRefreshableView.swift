//
//  SwipeActionsAndRefreshableView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 7/26/23.
//

import SwiftUI

let arrayOfDevices = [
    Device(title: "iphone", imageName: "iphone"),
    Device(title: "ipad", imageName: "ipad"),
    Device(title: "pc", imageName: "pc"),
    Device(title: "4k", imageName: "4k.tv"),
    Device(title: "ipod", imageName: "ipod"),
    Device(title: "laptop", imageName: "laptopcomputer")
]

struct SwipeActionsAndRefreshableView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(arrayOfDevices, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                        .swipeActions {
                            Button {
                                print("Favorito")
                            } label: {
                                Label("Favorito", systemImage: "star.fill")
                            }
                            .tint(.yellow)
                            Button {
                                print("Compartir")
                            } label: {
                                Label("Compartir", systemImage: "square.and.arrow.up")
                            }
                            .tint(.blue)
                        }
                        .swipeActions(edge: .leading) {
                            Button {
                                print("Borrar")
                            } label: {
                                Label("Borrar", systemImage: "trash.fill")
                            }
                            .tint(.red)
                        }
                }
            }
            .refreshable {
                print("Recargar información...")
            }
            .navigationTitle("Devices")
        }
    }
}

struct SwipeActionsAndRefreshableView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsAndRefreshableView()
    }
}
