//
//  TextView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            Text(Date(), style: .date)
            Text(Date(), style: .timer)
            Text(Date().addingTimeInterval(3600), style: .timer)
            Text(Date(), style: .time)            
            Text("The curious cat jumped over the lazy dog, who was peacefully napping in the warm afternoon sun. A gentle breeze rustled the leaves, carrying the scent of freshly bloomed flowers. The chirping birds added melody to the tranquil scene, while nearby children laughed and played. Time seemed to stand still as nature's beauty unfolded before their eyes.")
                .font(.largeTitle)
                .underline()
                .rotation3DEffect(.degrees(40), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .gray, radius: 2, x: 0, y:10)
                .lineLimit(10)
                .lineSpacing(8)
                .padding()
        }
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
