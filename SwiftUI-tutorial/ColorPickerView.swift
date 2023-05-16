//
//  ColorPickerView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State var color:Color = .blue
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(color)
                .frame(width: 300, height: 60)
            ColorPicker("Selecciona un color", selection: $color)
            Spacer()
        }
        .padding(60)
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
