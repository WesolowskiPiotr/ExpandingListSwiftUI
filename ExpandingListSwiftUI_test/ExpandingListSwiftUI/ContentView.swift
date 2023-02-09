//
//  ContentView.swift
//  ExpandingListSwiftUI
//
//  Created by Piotr Wesołowski on 09/02/2023.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        PlacesListView(places: Place.samples())
    }
}


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
