//
//  MainPageView.swift
//  Books
//
//  Created by Letizia Granata on 20/11/23.
//

import SwiftUI
import Foundation
import UIKit

struct MainPageView: View {
    @State private var position: Int?
    @State private var isScrolling: Bool = false
    @State private var offsetY: CGFloat = 0
    @State private var isActive : Bool = false

    @State private var viewModel = BooksViewModel()
    //  @State private var isShowingAccount: Bool = false
    
    init() {
        UINavigationBar.appearance()
            .largeTitleTextAttributes =
        [.font: UIFont(descriptor:
                        UIFontDescriptor.preferredFontDescriptor(withTextStyle: .extraLargeTitle)
            .withDesign(.serif)!, size: 35)]
    }
    
    
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false){
                ZStack {
                    VStack  {
                        VStack (alignment: .leading){
                            HStack(alignment: .center){
                                Image(systemName: "circle")
                                    .fontWeight(.heavy)
                                    .opacity(0.2)
                                    .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
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
                                .padding(.top, 5)
                                .padding(.bottom, -5)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        VStack(spacing: 18.0) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 330, height: 55, alignment: .center)
                                    .foregroundColor(Color(uiColor: .systemGray5))
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
                                .accessibilityElement(children: .combine)
                            }
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 330, height: 55, alignment: .center)
                                    .foregroundColor(Color(uiColor: .systemGray5))
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
                                .accessibilityElement(children: .combine)
                            }
                        }.padding(.vertical, 20)
                        
                        Divider()
                            .frame(width: 350)
                        
                        ZStack {
                            Rectangle()
                                .fill(LinearGradient(colors: [.white, Color(uiColor: .systemGray6)], startPoint: .top, endPoint: .bottom))
                                .frame(height: 550)
                            VStack (alignment: .leading){
                                Text("Favourites")
                                    .fontDesign(.serif)
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .padding(.bottom, 5)
                                VStack (alignment: .leading){
                                    HStack {
                                        Text("Bestseller 2022")
                                            .fontDesign(.serif)
                                        
                                        Image(systemName:"chevron.right")
                                            .fontWeight(.light)
                                    }
                                    Image("Best Sellers")
                                        .resizable()
                                        .frame(width: 330, height: 170)
                                        .cornerRadius(15)
                                        .shadow(radius: 15, x: 0, y: 10)
                                }
                                .accessibilityElement(children: .combine)
                                .accessibilityLabel("Bestseller 2022")

                                .padding(.bottom, 20)
                                
                                VStack (alignment: .leading){
                                    HStack {
                                        Text("Free Books")
                                            .fontDesign(.serif)
                                        
                                        Image(systemName:"chevron.right")
                                            .fontWeight(.light)
                                    }
                                    Image("Free Books")
                                        .resizable()
                                        .frame(width: 330, height: 170)
                                        .cornerRadius(15)
                                        .shadow(radius: 15, x: 0, y: 10)
                                }
                                .accessibilityElement(children: .combine)
                                .accessibilityLabel("Free Books")

                            }
                            .padding(.top, 13)
                            .padding(.bottom, 30)
                        };
                        NavigationStack {
                            ZStack {
                                Rectangle()
                                    .fill(LinearGradient(colors: [.white, Color(uiColor: .systemGray6)], startPoint: .top, endPoint: .bottom))
                                    .frame(height: 400)
                                VStack (alignment: .leading) {
                                    Text("Hot This Week (you)")
                                        .fontDesign(.serif)
                                        .fontWeight(.bold)
                                        .font(.title)
                                        .padding(.leading, 30)
                                    
                                    
                                        ScrollView(.horizontal, showsIndicators: false){
                                            HStack{
                                            ForEach(viewModel.hotThisWeek){ booky in
                                                
                                                Image(booky.image)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 200, height: 250)
                                                    .accessibilityRemoveTraits(.isImage)
                                                    .accessibilityAddTraits(.isStaticText)
                                                    .accessibilityLabel(booky.title + ", " + booky.author)
                                            }
                                        }
                                    }
                                    
                                  
                                    Divider()
                                        .frame(width: 325)
                                        .padding(.top, 30)
                                        .padding(.leading, 30)
                                    HStack{
                                        Text("See all")
                                        Image(systemName: "chevron.right")
                                    }
                                    .padding(.leading, 20)
                                }
                            }
                            .padding(.top, 10)
                        }
                        
                    }
                }
                
            }
            .overlay(
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
                // Offset based on scroll position
                    .offset(x: -15, y: max(-45, -45 - offsetY))
                // Hide when scrolling
                    .opacity(isScrolling ? 0 : 1)
                    .animation(.easeInOut(duration: 0.2))
                    .padding(.trailing, 16)
                , alignment: .topTrailing
            )
            .onChange(of: offsetY) { newValue in
                // Update the isScrolling state based on the offsetY
                isScrolling = (newValue > 0)
            }
            .onAppear {
                // Set up the scroll view offset observer
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { _ in
                    isScrolling = false
                }
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillChangeFrameNotification, object: nil, queue: .main) { _ in
                    isScrolling = true
                }
            }
            .navigationBarTitle("Reading Now")
        }
        
        .onPreferenceChange(OffsetPreferenceKey.self) {
            offsetY = $0
        }
    }
        }

struct OffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    MainPageView()
}
