//
//  ContentView.swift
//  shoppingApp
//
//  Created by Arunangshu Das on 01/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            onboardingScreen()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        onboardingScreen()
    }
}
