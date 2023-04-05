//
//  EnvironmentObjectBootcamp51.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 05.04.2023.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp51: View {
    
    @StateObject private var viewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("IOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            // background
            Color.orange
                .ignoresSafeArea()
            
            // foreground
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(colors: [.red, .blue],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            // foreground
            ScrollView {
                VStack {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp51_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp51()
    }
}
