//
//  ContentView.swift
//  DynamicLinkYoutube
//
//  Created by Kentaro Mihara on 2023/07/20.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("dynamic_link_status") var dynamicLinkStatus: Bool = false
    var body: some View {
        if(dynamicLinkStatus){
            DynamicLinkHome()
        }else{
            Home()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
