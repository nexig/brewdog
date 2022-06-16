//
//  BeerListView.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import SwiftUI

struct BeerListView: View {
    
    @StateObject var viewModel: BeerListViewModel
    @State var shouldShowBeerDetails = false
    @State var selectedBeer: BeerDTO? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("", isActive: $shouldShowBeerDetails) {
                    if let selectedBeer = selectedBeer {
                        BeerDetailsView(beer: selectedBeer)
                    }
                }
                List($viewModel.beers) { $beer in
                    BeerListElemenView(beer: beer)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            selectedBeer = beer
                            shouldShowBeerDetails = true
                        }
                }
            }
            .navigationTitle(LoaderStrings.beerListViewTitle.localized)
            .onAppear {
                selectedBeer = nil
            }
        }
    }
}
