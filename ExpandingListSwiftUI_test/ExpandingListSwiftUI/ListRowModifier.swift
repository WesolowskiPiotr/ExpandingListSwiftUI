//
//  ListRowModifier.swift
//  ExpandingListSwiftUI
//
//  Created by Piotr Wesołowski on 09/02/2023.
//

import SwiftUI

struct ListRowModifier: ViewModifier {
    func body(content: Content) -> some View {
        Group {
            content
            Divider()
        }.offset(x: 20)
    }
}
