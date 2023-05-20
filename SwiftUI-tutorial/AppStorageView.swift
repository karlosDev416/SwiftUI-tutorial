//
//  AppStorageView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/19/23.
//

import SwiftUI

struct AppStorageView: View {
    
    @State var name:String = ""
    @AppStorage("appStorageName") var appStorageName: String = ""
    
    var body: some View {
        
        Form {
            TextField("Username", text: $name)
            HStack {
                Spacer()
                Button("Guardar") {
                    appStorageName = name
                }
                .padding()
                Spacer()
            }
            HStack {
                Spacer()
                Button("Imprimir Valor") {
                    print(UserDefaults.standard.string(forKey: "appStorageName") ?? "N/D")
                }
                .padding()
                Spacer()
            }
        }
        .onAppear {
            name = appStorageName
        }
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
