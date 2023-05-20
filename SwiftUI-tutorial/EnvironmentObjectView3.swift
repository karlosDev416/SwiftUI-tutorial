//
//  EnvironmentObjectView3.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/19/23.
//

import SwiftUI

struct EnvironmentObjectView3: View {
    
    @EnvironmentObject var viewModel:ViewModel
    
    var body: some View {
        VStack {
            Text("View 3")
                .padding()
            Button("Incrementar") {
                viewModel.counter += 1
            }
        }
    }
}

struct EnvironmentObjectView3_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView3()
    }
}
