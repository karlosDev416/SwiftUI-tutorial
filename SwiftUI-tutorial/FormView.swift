//
//  FormView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/16/23.
//

import SwiftUI

struct FormView: View {
    
    @State var deviceName = "iPhone 14 Pro Max"
    @State var isNetworkOn = true
    @State var date = Date()
    @State var color = Color.blue
    
    var body: some View {
        Form {
            Section(header: Text("Settings")) {
                TextField("Device Name", text: $deviceName)
                Toggle("Wi-fi", isOn: $isNetworkOn)
            }
            
            Section(header: Text("Account"), footer:
                        HStack {
                Spacer()
                Label("version 1.0", systemImage: "iphone")
                Spacer()
            }) {
                DatePicker("Date", selection: $date)
                ColorPicker("Color", selection: $color)
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
