//
//  LinkView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/16/23.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        VStack {
            Link("Ir a google", destination: URL(string: "https://google.com")!)
            Link(destination: URL(string:UIApplication.openSettingsURLString)!) {
                Label("Settings", systemImage: "gear")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(8)
                
            }
            .padding(.top, 40)
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
