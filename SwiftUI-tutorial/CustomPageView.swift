//
//  CustomPageView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 5/18/23.
//

import SwiftUI

struct CustomPageView: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundColor(.blue)
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundColor(.red)
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
        }
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CustomPageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPageView()
    }
}
