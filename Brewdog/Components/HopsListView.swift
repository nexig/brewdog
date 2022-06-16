//
//  HopsListView.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import SwiftUI

struct HopsListView: View {
    let hops: [HopDTO]
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(LoaderStrings.beerDetailsHops.localized):")
                .font(.system(size: 18, weight: .bold))
            VStack(alignment: .leading) {
                ForEach(hops, id: \.id) { hop in
                    Text(hop.name ?? "")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.gray)
                }
            }
            
        }
    }
}
