//
//  ContentView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Siguiendo")
                    .font(.largeTitle)
                    .bold()
                Text("CANALES RECOMENDADOS")
                    .foregroundColor(.gray)
                HStack {
                    Rectangle()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(width: 118, height: 68)
                    VStack(alignment: .leading) {
                        HStack(alignment: .center) {
                            Circle()
                                .frame(width: 18, height: 18)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text("username")
                                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                        }
                        Text("streaming the programación")
                            .foregroundColor(Color.gray)
                        Text("Solo Hablando")
                            .foregroundColor(Color.gray)
                    }
                }
            }
            Text("   Top Secret  ")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.red)
                .underline()
                .background(Color.black)
                .rotationEffect(.degrees(-20))
            
        }
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
