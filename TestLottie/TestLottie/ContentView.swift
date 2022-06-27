//
//  ContentView.swift
//  TestLottie
//
//  Created by Jun.Mac on 2022/06/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
     LottieView(jsonName: "Test")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
