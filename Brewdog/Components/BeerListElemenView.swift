//
//  BeerListElemenView.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import SwiftUI

struct BeerListElemenView: View {
    
    let beer: BeerDTO
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: URL(string: beer.image_url ?? "")) { image in
                image.resizable()
            } placeholder: {
                Color.gray
                    .frame(width: 100, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
            }
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    
            VStack(alignment: .leading, spacing: 8) {
                Text(beer.name ?? LoaderStrings.beerDetailsUnknowName.localized)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.black)
                Text("\(LoaderStrings.beerDetailsABV.localized) \(String(format: "%.2f", beer.abv ?? 0.00))")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}
