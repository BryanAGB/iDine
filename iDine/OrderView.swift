//
//  OrderView.swift
//  iDine
//
//  Created by Bryan Mansell on 07/10/2023.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order : Order
    
    var body: some View {
        NavigationStack {
                    List {
                        Section {
                            ForEach(order.items) { item in
                                HStack {
                                    Text(item.name)
                                    Spacer()
                                    Text("$\(item.price)")
                                }
                            }
                        }

                        Section {
                            NavigationLink("Place Order") {
                                Text("Check out")
                            }
                        }
                    }
                    .navigationTitle("Order")
                }
            }
        }

#Preview {
    OrderView().environmentObject(Order())
}
