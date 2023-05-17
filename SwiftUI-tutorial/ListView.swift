//
//  ListView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/16/23.
//

import SwiftUI

struct Device {
    let title: String
    let imageName: String
}

let house = [Device(title: "Laptop", imageName: "laptopcomputer"),
             Device(title: "Mac mini", imageName: "macmini"),
             Device(title: "Mac Pro", imageName: "macpro.gen3"),
             Device(title: "Displays", imageName: "display.2"),
             Device(title: "Apple TV", imageName: "appletv"),
]

let work = [Device(title: "iPhone", imageName: "iphone"),
            Device(title: "iPad", imageName: "ipad"),
            Device(title: "Airpods", imageName: "airpods"),
            Device(title: "Apple Watch", imageName: "applewatch")]

struct ListView: View {
    var body: some View {
        List {
            Section(header: Text("Home")) {
                ForEach(house, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                }
            }
            Section(header: Text("Work")) {
                ForEach(work, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
