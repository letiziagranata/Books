//
//  AccountView.swift
//  Books
//
//  Created by Letizia Granata on 20/11/23.
//

import SwiftUI

struct AccountView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack {
                List(){
                    Section{
                        HStack(spacing: 25.0) {
                            Image(systemName: "person")
                            VStack(alignment: .leading, spacing: -2.0){
                                Text("Simone Sarnataro")
                                    .fontWeight(.medium)
                                Text("simone.sarnataro02@gmail.com")
                                    .font(.subheadline)
                                    .textContentType(.none)
                            }
                        }
                    }
                    Section{
                        Text("Change Move Goal")
                        Text("Units of Measure")
                    }
                    Section{
                        Text("Notifications")
                    }
                    Section{
                        Text("Redeem Gift Card or Code")
                        Text("Send Gift Card by Email")
                    }.foregroundColor(Color("AccentColor1"))
                    Section{
                        Text("Apple Fitness Privacy")
                    }
                    
                }
                //.environment(\.defaultMinListRowHeight, 80)
                .navigationTitle("Account")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(content: {
                    ToolbarItem{
                        Button{
                            dismiss()
                        }label:{
                            Text("Done")
                                .fontWeight(.bold)
                             
                            
                        }
                    }
                })
                
                
            }
        }
        
    }
}

#Preview {
    AccountView()
}
