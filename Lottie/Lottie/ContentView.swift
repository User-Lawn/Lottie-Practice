//
//  ContentView.swift
//  Lottie
//
//  Created by Jun.Mac on 2022/06/10.
//

import SwiftUI

struct ContentView: View {
    
    @State var isContentReady : Bool = false
    
    var body: some View {
   
        LottieView(jsonName: "NearCatStanding")
                        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
