//
//  ContentView.swift
//  Shared
//
//  Created by James Layton on 4/17/22.
//

import SwiftUI

struct ContentView: View {
    
    var nftCreator = NFTCreator()
    
    var body: some View {
        VStack {
            Image(uiImage: nftCreator.createNFT())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
