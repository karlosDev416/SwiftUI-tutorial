//
//  DatePickerView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct DatePickerView: View {
    
    @State var currentDate:Date = Date()
    var body: some View {
        Form {
            DatePicker("Selecciona fecha", selection: $currentDate, in: Date()..., displayedComponents: .date)
            Text(currentDate, style: .date)
                .bold()
        }
        
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
