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
        .frame(height: UIDevice.iPad ? 200 : 126)
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
            .cornerRadius(UIDevice.iPad ? 50 : 26)
        
    }
    
    
    var contentsView: some View {
        
        VStack {
            
            HStack {
                Image(platform.general_icon)
                    .resizable()
                    .scaledToFit()
                    .frame(height: UIDevice.iPad ? 60 : 30)
                
                Spacer()
                
                ZStack {
                    Color.white.cornerRadius(UIDevice.iPad ? 30 : 13)
                        .shadow(radius: 3, x: -3, y: -3)
                        
                    Text(platform.name)
                        .foregroundColor(Color("allColor"))
                        .font(.system(size: UIDevice.iPad ? 40 : 20, weight: .bold, design: .default))
                        .padding(.horizontal, UIDevice.iPad ? 10 : 0)
                        
                    
                }
                .frame(maxWidth: UIDevice.iPad ? 350 : 155)
                
                
            } // 1st HStack
            
            
            
            Spacer()
            
            HStack {
                Image(platform.icon)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIDevice.iPad ? 75 : 50, height: UIDevice.iPad ? 75 : 50)
                    .padding(.trailing,UIDevice.iPad ? 20 : 10)
                
                //Spacer()
                
                //Spacer()
                
                Text(platform.title)
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: UIDevice.iPad ? 45 : 18, weight: .medium, design: .default))
                    .lineLimit(2)
                Spacer()
                Spacer()
                
            } // 2nd HStack
            
        } // VStack
        .padding()
        .padding(UIDevice.iPad ? 20 : 0)
        
    }
    
}
