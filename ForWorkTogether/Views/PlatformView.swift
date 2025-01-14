//
//  PlatformView.swift
//  ForWorkTogether
//
//  Created by Samandar on 15/01/25.
//

import SwiftUI

struct PlatformView: View {
    
    var platform: Platform
    
    var body: some View {
        
        ZStack {
            
            backgroundView
            
            contentsView
            
        }
        .frame(height: 126)
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}

struct PlatformView_Previews: PreviewProvider {
    static var previews: some View {
        PlatformView(platform: Platform.dummyPlatform)
    }
}


//extension Views

extension PlatformView {
    
    //background
    var backgroundView: some View {
        
        Image(platform.background)
            .resizable()
            .cornerRadius(19)
        
    }
    
    
    var contentsView: some View {
        
        VStack {
            
            HStack {
                Image(platform.general_icon)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                    .font(.system(size: 30))
                
                Spacer()
                
                ZStack {
                    Color.white.cornerRadius(13)
                        .shadow(radius: 3, x: -3, y: -3)
                        
                    Text(platform.name)
                        .foregroundColor(Color("allColor"))
                        .font(.system(size: 20, weight: .bold, design: .default))
                        
                    
                }
                .frame(maxWidth: 160)
                
                
            } // 1st HStack
            
            
            
            Spacer()
            
            HStack {
                Image(platform.icon)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                
                Spacer()
                
                //Spacer()
                
                Text(platform.title)
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .lineLimit(2)
                Spacer()
                Spacer()
                
            } // 2nd HStack
            
        } // VStack
        .padding()
        
    }
    
}
