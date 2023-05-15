//
//  ButtonView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            Button {
                print("subscribe button pressed")
            } label: {
                Text("subscribe".uppercased())
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
            Button {
                print("like button pressed")
            } label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 70, weight: .bold))
                    )
            }

        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
