//
//  ObservedObjectStateObjectView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/19/23.
//

import SwiftUI

struct ObservedObjectStateObjectView: View {
    
    @State private var counter = 0
    var body: some View {
        VStack {
            Text("Contador: \(counter)")
                .bold()
                .font(.largeTitle)
                .padding()
            Button("Incrementar Contador") {
                counter += 1
            }
            ListVideos()
            Spacer()
        }
    }
}

struct ListVideos: View {
    
    @StateObject private var viewModel = VideoViewModel()
//    @ObservedObject private var viewModel = VideoViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.videosModel, id: \.self) { video in
                Text(video)
            }
            .navigationTitle("SwiftBeta Videos")
            .navigationBarItems(leading:
                                    Button("Añadir", action: viewModel.addMoreTopics))
        }
    }
}

final class VideoViewModel: ObservableObject {
    
    @Published var videosModel: [String] = []
    
    init() {
        self.videosModel = [
            "Aprende SwiftUI",
            "Aprende Xcode",
            "Aprende Swift"
        ]
    }
    
    func addMoreTopics() {
        videosModel.append("Aprende CI/CD")
        videosModel.append("Aprende Git")
    }
}

struct ObservedObjectStateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectStateObjectView()
    }
}
