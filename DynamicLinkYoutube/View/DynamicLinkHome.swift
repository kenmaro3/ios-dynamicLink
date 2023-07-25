//
//  DynamicLinkHome.swift
//  DynamicLinkYoutube
//
//  Created by Kentaro Mihara on 2023/07/20.
//

import SwiftUI

struct DynamicLinkHome: View {
    @AppStorage("dynamic_link_status") var dynamicLinkStatus: Bool = false
    
    var body: some View {
        VStack{
            Text("Hello, dynamic link!")
            Button {
                dynamicLinkStatus = false
            } label: {
                Text("Reset")
            }
        }
    }
}

struct DynamicLinkHome_Previews: PreviewProvider {
    static var previews: some View {
        DynamicLinkHome()
    }
}
