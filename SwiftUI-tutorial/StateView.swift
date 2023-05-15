//
//  StateView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct StateView: View {
    
    @State var counter = 0
    var body: some View {
        VStack {
            Button("Click on me!") {
                counter+=1
            }
            Text("Counter value: \(counter)")
        }
        
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
