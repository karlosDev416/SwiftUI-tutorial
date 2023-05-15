//
//  TextEditorView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct TextEditorView: View {
    
    @State var text = "Escribe algo..."
    @State var counter = 0
    
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .font(.title)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .foregroundColor(.blue)
                .padding()
                .onChange(of: text) { newValue in
                    counter = newValue.count
            }
            Text("\(counter)")
                .foregroundColor(counter <= 280 ? .green : .red)
                .font(.largeTitle)
        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
