//
//  SceneStorageView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 7/26/23.
//

import SwiftUI

struct SceneStorageView: View {
    
    @SceneStorage("tweet") private var tweet: String = ""
    @SceneStorage("toggle_publish_best_hour") private var togglePublishBestHour: Bool = false

    var body: some View {
        Form {
            TextEditor(text: $tweet)
                .frame(width: 300, height: 300)
            Toggle("Publicar a la mejor hora", isOn: $togglePublishBestHour)
                .padding()
            HStack {
                Spacer()
                Button(togglePublishBestHour ? "Publicar a la mejor hora" : "Publicar ahora") {
                    print("Publicando...")
                }
                Spacer()
            }
        }
    }
}

struct SceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageView()
    }
}
