//
//  ToggleView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/16/23.
//

import SwiftUI

struct ToggleView: View {
    
    @State var isOn = false
    var body: some View {
        Form {
            Toggle("SwiftUI Tutorial", isOn: $isOn)
            Text("\(isOn.description)")
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
