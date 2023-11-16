//
//  ContentView.swift
//  Books
//
//  Created by Letizia Granata on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    init() {
        UINavigationBar.appearance()
            .largeTitleTextAttributes =
        [.font: UIFont(descriptor:
                        UIFontDescriptor.preferredFontDescriptor(withTextStyle: .extraLargeTitle)
            .withDesign(.serif)!, size: 35)]
    }
    var body: some View {
        NavigationStack {
            VStack  {
                VStack (alignment: .leading){
                    HStack(alignment: .center){
                        Image(systemName: "circle")
                            .fontWeight(.heavy)
                            .opacity(0.2)
                        Text("New! Read more with daily reading goals.")
                            .font(.caption2)
                            .padding(.leading, -2)
                            .foregroundColor(.blue)
                            .fontWeight(.medium)
                    }
                    .padding(.leading, 5)
                    Divider()
                        .frame(width: 350)
                        .padding(.vertical, 10)
                        .padding(.leading, 10)
                    
                    Text ("You are not reading anything at the moment. Find your next \ngreat read in Apple Books.")
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 80)
                        .padding(.top, 10)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                VStack(spacing: 18.0) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 330, height: 55, alignment: .center)
                            .opacity(0.05)
                        HStack {
                            Image(systemName: "bag.fill")
                                .resizable()
                                .frame(width: 25, height: 30, alignment: .center)
                            Text("Explore the Book Store")
                                .fontDesign(.serif)
                                .font(.headline)
                                .fontWeight(.medium)
                                .padding(.trailing, 50)
                            Image(systemName: "chevron.right")
                        }
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 330, height: 55, alignment: .center)
                            .opacity(0.05)
                        HStack {
                            Image(systemName: "headphones")
                                .resizable()
                                .frame(width: 25, height: 27, alignment: .center)
                            Text("Explore Audiobooks")
                                .fontDesign(.serif)
                                .font(.headline)
                                .fontWeight(.medium)
                                .padding(.trailing, 70)
                            Image(systemName: "chevron.right")
                        }
                    }
                }.padding(.vertical, 20)
                
                Divider()
                    .frame(width: 350)
                
                    VStack (alignment: .leading){
                        Text("I più amati")
                            .fontDesign(.serif)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 330, height: 150)
                    }
                    .padding(.top, 30)
                }
                .toolbar {
                    ToolbarItem(placement: .automatic){
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .offset(x: -15, y: 45)
                        
                    }
                }
                .navigationTitle("Reading Now")
            }
            
            
        
        
        //init to look among the possible fonts in the family you downloaded
        //    init() {
        //        for familyName in  UIFont.familyNames {
        //            print(familyName)
        //
        //            for fontName in UIFont.fontNames(forFamilyName: familyName) {
        //                print("-- \(fontName)")
        //            }
        //        }
        //    }
        
    }
}


#Preview {
    ContentView()
}
