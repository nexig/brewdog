//
//  MethodsView.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import SwiftUI

struct MethodsView: View {
    let methods: MethodDTO
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(LoaderStrings.beerDetailsMethods.localized):")
                .font(.system(size: 18, weight: .bold))
            VStack(alignment: .leading) {
                Text("\(LoaderStrings.beerDetailsMethodsMash.localized):")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.gray)
                ForEach(methods.mash_temp ?? [], id: \.id) { temp in
                    Text("\(temp.temp?.value ?? 0) \(temp.temp?.unit ?? "")")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.gray)
                }
                Text("\(LoaderStrings.beerDetailsMethodsFermentation.localized):")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.gray)
                Text("\(methods.fermentation?.temp?.value ?? 0) \(methods.fermentation?.temp?.unit ?? "")")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.gray)
                ForEach(methods.mash_temp ?? [], id: \.id) { temp in
                    
                }
            }
        }
    }
}
