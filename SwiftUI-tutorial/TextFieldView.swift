//
//  TextFieldView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/15/23.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var username:String = ""
    @State var password:String = ""
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: username) { newValue in
                    print("Username: \(newValue)")
                }
            SecureField("Password", text: $password)
                .keyboardType(.default)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .onChange(of: password) { newValue in
                    print("Password: \(newValue)")
                }
            Spacer()
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
