//
//  EnvironmentObjectView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/19/23.
//

import SwiftUI

final class ViewModel: ObservableObject {
    @Published var counter: Int = 0
}

struct EnvironmentObjectView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("Counter: \(viewModel.counter)")
                .bold()
            .font(.largeTitle)
            Text("View 1")
                .padding()
            EnvironmentObjectView2()
        }
        .environmentObject(viewModel)
    }
}

struct EnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
    }
}
