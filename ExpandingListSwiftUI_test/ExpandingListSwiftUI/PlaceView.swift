//
//  PlaceView.swift
//  ExpandingListSwiftUI
//
//  Created by Piotr Wesołowski on 09/02/2023.
//

import SwiftUI

struct PlaceView: View {
    let place: Place
    let isExpanded: Bool
    
    var body: some View {
        HStack {
            content
            Spacer()
        }
        .contentShape(Rectangle())
    }
    
    private var content: some View {
        VStack(alignment: .leading) {
            Text(place.name).font(.headline)
            
            if isExpanded {
                VStack(alignment: .leading) {
                    Text(place.country)
                    Text(place.city)
                    Text(place.street)
                    Text(place.zip)
                    Text(place.phoneNumber)
                }
            }
        }
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView(place: Place.samples().first!, isExpanded: true)
    }
}
