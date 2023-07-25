//
//  Home.swift
//  DynamicLinkYoutube
//
//  Created by Kentaro Mihara on 2023/07/20.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            Text("Hello, Home!")
            Button {
                UIApplication.shared.open(URL(string: "https://dynamiclinkyoutubekenmaro.page.link/test")!)
            } label: {
                Text("Open URL")
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
