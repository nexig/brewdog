//
//  ContentView.swift
//  Brewdog
//
//  Created by Jakub Żurek on 16/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BeerListView(viewModel: DependencyContainer.shared.makeBeerListViewModel())
    }
}
