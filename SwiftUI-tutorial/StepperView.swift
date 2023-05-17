//
//  StepperView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/16/23.
//

import SwiftUI

struct StepperView: View {
    
    @State var counter1:Int = 0
    @State var counter2:Int = 0
    
    var body: some View {
        Form {
            Stepper("iPhone \(counter1)",
                    value: $counter1,
                    in: 1...5)
            Stepper("iPhone \(counter2)") {
                counter2+=1
                print("increment: \(counter2)")
            } onDecrement: {
                counter2-=1
                print("decrement: \(counter2)")
            }
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
