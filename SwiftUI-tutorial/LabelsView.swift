//
//  LabelsView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct LabelsView: View {
    var body: some View {
        Label("SwiftUI tutorial", systemImage: "hand.thumbsup.fill")
            .font(.largeTitle)
    }
}

struct LabelsView_Previews: PreviewProvider {
    static var previews: some View {
        LabelsView()
    }
}
