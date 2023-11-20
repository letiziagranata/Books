
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            MainPageView()
                .tabItem {
                    Label("Reading Now", systemImage: "book.fill")
                }
            
            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "books.vertical.fill")
                }
            
            BookStoreView()
                .tabItem {
                    Label("Book Store", systemImage: "bag.fill")
                }
            
            AudiobooksView()
                .tabItem {
                    Label("Audiobooks", systemImage: "headphones")
                }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
