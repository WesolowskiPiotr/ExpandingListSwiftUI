//
//  ContentView.swift
//  ExpandingListSwiftUI
//
//  Created by Piotr Wesołowski on 09/02/2023.
//

import SwiftUI

struct PlacesListView: View {
    @State private var selection: Set<Place> = []
    let places: [Place]
    
    var body: some View {
        ScrollView {
            ForEach(places) { place in
                PlaceView(place: place, isExpanded: self.selection.contains(place))
                    .offset(x: 0, y: self.selection.contains(place) ? 0 : 0)
                    .onTapGesture { self.selectDeselect(place) }
                    .modifier(ListRowModifier())
                    .animation(.linear(duration: 0.3))
            }
        }
    }
    
    func selectDeselect(_ place: Place) {
        if selection.contains(place) {
            selection.remove(place)
        } else {
            selection.insert(place)
        }
    }
}

struct PlacesListView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesListView(places: [Place.samples().first!])
    }
}
