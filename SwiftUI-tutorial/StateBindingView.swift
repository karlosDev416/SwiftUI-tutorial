//
//  StateBindingView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/19/23.
//

import SwiftUI

struct StateBindingView: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        CounterView(counter: $counter)
    }
}

struct CounterView: View {
    
    @Binding var counter: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(counter)")
                .font(.largeTitle)
            Button("Incrementar") {
                counter += 1
            }
        }
    }
}

struct StateBindingView_Previews: PreviewProvider {
    static var previews: some View {
        StateBindingView()
    }
}
