//
//  ContentView.swift
//  GitProject
//
//  Created by Marine Cathala-gil on 21/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
    
        VStack {
            ZStack{
                Color(red: 199/255, green: 207/255, blue: 0/255)
                
                VStack {
                    HStack {
                        
                        Image(systemName: "list.bullet.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                        Spacer()
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 40, height: 40)
                            }
                    .padding(.top, 150)
                    .padding(.horizontal, 40)
                    

                    HStack {
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.white)
                                .frame(width: 150, height: 30)
                                .padding(.trailing)
                            
                            HStack {
                                Image(systemName: "diamond.circle.fill")
                                Text("13,77 ETH")
                                Image(systemName: "chevron.down")
                            }
                        }
                        .padding(20)
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.white)
                                .frame(width: 150, height: 30)
                                .padding(.trailing)
                            HStack {
                                Text("Add money")
                                Image(systemName: "plus")
                            }
                        }
                        .padding(15)
                    }
                    
                    Text("Total Balance")
                        .padding(.trailing, 250)
                    HStack {
                        Text("$25,291.50")
                            .font(.system(size:50))
                            .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.white)
                                .frame(width: 150, height: 30)
                                .padding(.trailing)
                            
                            HStack {
                                Text("Buy")
                                    .fontWeight(.bold)
                                
                                Image(systemName: "arrow.down.circle.fill")
                            }
                        }
                        .padding(20)
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.white)
                                .frame(width: 150, height: 30)
                                .padding(.trailing)
                            
                            HStack {
                                Text("Sell")
                                    .fontWeight(.bold)
                                
                                Image(systemName: "arrow.up.circle.fill")                            }
                        }
                        .padding(15)
                        
                        
                        
                    }
//                    .padding(.bottom, 300)

        VStack {
            ZStack {
                            
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .frame(width: 350, height: 600)
                    .padding()
            VStack {
                HStack {
                    Text("Watchlist")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)

                    Image(systemName: "chevron.forward")
                        }
                        .padding(.trailing, 200)

                           
                
            VStack {
                                        
                WatchlistView(logo: "diamond.circle.fill", crypto: "ETH", cryptoName: "Ethereum", dollar: "$1,865.35", pourcentage: "0.92%", valueUpDown: "arrow.up.right")
                Spacer()
                WatchlistView(logo: "chevron.up.chevron.down", crypto: "XRP", cryptoName: "XRP", dollar: "$0.4682", pourcentage: "0.39%", valueUpDown: "arrow.down.left")
                Spacer()
                WatchlistView(logo: "t.circle.fill", crypto: "USDT", cryptoName: "Tether", dollar: "%1.00", pourcentage: "0.21%", valueUpDown: "arrow.down.left")
                Spacer()
                WatchlistView(logo: "diamond.circle", crypto: "BNB", cryptoName: "BNB", dollar: "$337.52", pourcentage: "1.22%", valueUpDown: "arrow.up.right")
                
                
                }
            .padding(.bottom, 300)

                
                            }
            .padding(.top, 50)
//            .padding(.bottom, 350)
                                
                            }
            
                        }


                            
                            
                            
                            
                        }

                        
            }
            

                    
                    
                    
                    
                    
                }.ignoresSafeArea()
                
            }
        }
            
    


struct ExerciceView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WatchlistView: View {
    let logo : String
    let crypto : String
    let cryptoName : String
    let dollar : String
    let pourcentage : String
    let valueUpDown : String
    
    
    var body: some View {
        HStack {
            Image(systemName: logo)
                .resizable()
                .frame(width: 30, height: 30)
            Image(systemName: logo)
                .resizable()
                .frame(width: 30, height: 30)

            VStack {
                HStack {
                    Text(crypto)
                    Spacer()
                    Text(dollar)
                }
                .fontWeight(.semibold)

                HStack {
                    Text(cryptoName)
                        .foregroundStyle(.gray)

                    Spacer()
                    Image(systemName: valueUpDown)
                        .foregroundStyle(.gray)
                    Text(pourcentage)
                        .foregroundStyle(.gray)

                }
            }
            
        }
        .padding(.horizontal, 44)
    }
}
