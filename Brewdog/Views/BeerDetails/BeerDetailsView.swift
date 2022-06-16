//
//  BeerDetailsView.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import SwiftUI

struct BeerDetailsView: View {
    
    let beer: BeerDTO
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                AsyncImage(url: URL(string: beer.image_url ?? "")) { image in
                    image.resizable()
                } placeholder: {
                    Color.gray
                        .frame(width: 200, height: 400)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                }
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 4))
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(beer.name ?? LoaderStrings.beerDetailsUnknowName.localized)
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.black)
                        Text("\(LoaderStrings.beerDetailsABV.localized) \(String(format: "%.2f", beer.abv ?? 0.00))")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                Text(beer.description ?? "")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                HStack {
                    HopsListView(hops: beer.ingredients?.hops ?? [])
                    Spacer()
                }
                HStack {
                    MaltsListView(malts: beer.ingredients?.malt ?? [])
                    Spacer()
                }
                if let methods = beer.method {
                    HStack {
                        MethodsView(methods: methods)
                        Spacer()
                    }
                }
                Spacer()
            }
            .padding()
        }
        .navigationTitle(beer.name ?? "")
    }
}
