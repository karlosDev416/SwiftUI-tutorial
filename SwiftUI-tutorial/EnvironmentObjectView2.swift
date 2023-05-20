//
//  EnvironmentObjectView2.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/19/23.
//

import SwiftUI

struct EnvironmentObjectView2: View {
    
//    @ObservedObject var viewModel:ViewModel
    
    var body: some View {
        Text("View 2")
            .padding()
//        EnvironmentObjectView3(viewModel: viewModel)
        EnvironmentObjectView3()
    }
}

struct EnvironmentObjectView2_Previews: PreviewProvider {
    static var previews: some View {
//        EnvironmentObjectView2(viewModel: ViewModel())
        EnvironmentObjectView2()
    }
}
