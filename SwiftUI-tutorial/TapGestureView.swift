//
//  TapGestureView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/19/23.
//

import SwiftUI

struct TapGestureView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .onTapGesture {
                print("View tapped")
            }
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
