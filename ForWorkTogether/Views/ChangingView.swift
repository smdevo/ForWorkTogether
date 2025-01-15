//
//  ChangingView.swift
//  ForWorkTogether
//
//  Created by Samandar on 15/01/25.
//

import SwiftUI

struct ChangingView: View {
    
    @State var views: [Platform] = Platform.platforms
    @State private var selectedIndex: Int = 0
    @State private var timer: Timer? = nil

    var body: some View {
        //The view that scrolls itself
        tabview
            .onAppear(perform: startTimer)
            .onDisappear(perform: stopTimer)
    }//body
}

struct ChangingView_Previews: PreviewProvider {
    static var previews: some View {
        ChangingView()
    }
}



//MARK: Function extension
extension ChangingView {
    
    //functions
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { _ in
            withAnimation {
                selectedIndex = (selectedIndex + 1) % views.count
            }
        }
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
}



//MARK: SubViews extension

extension ChangingView {
    
    
    var tabview: some View {
        
        TabView(selection: $selectedIndex) {
            ForEach(0..<views.count, id: \.self) { i in
                
                PlatformView(platform: Platform.platforms[i])
                    .tag(i)
                    .onTapGesture {
                        print("\(i)")
                    }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        
    }
    
}
