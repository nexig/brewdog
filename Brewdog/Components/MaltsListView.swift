//
//  MaltsListView.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import SwiftUI

struct MaltsListView: View {
    let malts: [MaltDTO]
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(LoaderStrings.beerDetailsMalts.localized):")
                .font(.system(size: 18, weight: .bold))
            VStack(alignment: .leading) {
                ForEach(malts, id: \.id) { malt in
                    Text(malt.name ?? "")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
