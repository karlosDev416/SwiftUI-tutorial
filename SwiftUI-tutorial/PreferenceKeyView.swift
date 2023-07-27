//
//  PreferenceKeyView.swift
//  SwiftUI-tutorial
//
//  Created by KARLOS AGUIRRE on 7/26/23.
//

import SwiftUI

struct CustomTitleKey: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
    
}

struct CustomNavigationView2<Content: View>: View {
    @State private var title: String = "Navigation View"
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .bold()
            GeometryReader { proxy in
                ScrollView {
                    content
                }
            }
        }
        .padding()
        .onPreferenceChange(CustomTitleKey.self) { value in
            print("Value \(value)")
            title = value
        }
    }
}

struct PreferenceKeyView: View {
    var body: some View {
        CustomNavigationView2 {
            VStack {
                Text("Suscribete a Swift Latino")
                    .padding()
                    .customNavigationTitle(title: "Swift Latino 1")
                    //.preference(key: CustomTitleKey.self, value: "Swift Latino 1")
                    //.navigationTitle("Swift Latino 1")
                Text("Aprende SwiftUI")
                    .padding()
                    .customNavigationTitle(title: "Swift Latino 2")
                    //.preference(key: CustomTitleKey.self, value: "Swift Latino 2")
                    //.navigationTitle("Swift Latino 2")
            }
        }
    }
}

extension View {
    
    func customNavigationTitle(title: String) -> some View {
        modifier(CustomNavigationTitle(title: title))
    }
}

struct CustomNavigationTitle: ViewModifier {
    
    private var title: String
    
    init(title: String) {
        self.title = title
    }
    
    func body(content: Content) -> some View {
        content
            .preference(key: CustomTitleKey.self, value: title)
    }
}

struct PreferenceKeyView_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKeyView()
    }
}
