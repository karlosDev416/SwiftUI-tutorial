//
//  DragGestureView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/19/23.
//

import SwiftUI

struct DragGestureView: View {
    
    @State var dragOffset: CGSize = .zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .offset(x: dragOffset.width, y: dragOffset.height)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        self.dragOffset = value.translation
                    })
                    .onEnded({ value in
                        withAnimation {
                            dragOffset = .zero
                        }
                    })
            )
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
