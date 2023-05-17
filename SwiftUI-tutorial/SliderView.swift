//
//  SliderView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/16/23.
//

import SwiftUI

struct SliderView: View {
    
    @State var counter:Float = 0
    @State var isEditing = false
    
    var body: some View {
        
        VStack {
            Slider(value: $counter, in: 0...10, step: 1) {
                Text("Speed")
            } minimumValueLabel: {
                Text("min")
            } maximumValueLabel: {
                Text("max")
            } onEditingChanged: { (editing) in
                isEditing = editing
            }
            Text(String(format: "%.0f", counter))
                    .foregroundColor(isEditing ? .red : .blue)
        }
        
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
