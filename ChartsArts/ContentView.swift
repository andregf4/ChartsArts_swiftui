//
//  ContentView.swift
//  ChartsArts
//
//  Created by Andre Gerez Foratto on 13/05/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                LinearGradient(colors: [.lightblue, .yellow, .orange], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack {
                    VStack {
                        Text("Olimpíadas de Tóquio 2020")
                            .font(.title)
                        Text("Quadro de Medalhas - Top 10")
                    }
                    .padding(.top, 20)
                    .bold()
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                    
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("País")
                                    .bold()
                                    .padding(.bottom, 10)
                                ForEach(arrayMedalhas, id: \.self) { i in
                                    Text(i.pais)
                                    Divider()
                                }
                            }
                            VStack {
                                Text("O")
                                    .bold()
                                    .padding(.bottom, 10)
                                ForEach(arrayMedalhas, id: \.self) { i in
                                    Text("\(i.ouros, specifier: "%.0f")")
                                    Divider().frame(width: 50)
                                }
                            }
                            VStack {
                                Text("P")
                                    .bold()
                                    .padding(.bottom, 10)
                                ForEach(arrayMedalhas, id: \.self) { i in
                                    Text("\(i.pratas, specifier: "%.0f")")
                                    Divider().frame(width: 50)
                                }
                            }
                            VStack {
                                Text("B")
                                    .bold()
                                    .padding(.bottom, 10)
                                ForEach(arrayMedalhas, id: \.self) { i in
                                    Text("\(i.bronzes, specifier: "%.0f")")
                                    Divider().frame(width: 50)
                                }
                            }
                        }
                    }
                    .padding()
                    .border(Color.black)
                    .padding()
                    
                    Text("Escolha abaixo o tipo de gráfico:")
                        .bold()
                    
                    NavigationLink("Gráfico de Barra **Horizontal**", destination: BarraHView())
                        .foregroundStyle(.black)
                        .padding()
                        .frame(height: 50)
                        .background(Color.lightblue)
                        .cornerRadius(10.0)
                        .shadow(radius: 10)
                    
                    NavigationLink("Gráfico de Barra **Vertical**", destination: BarraVView())
                        .foregroundStyle(.black)
                        .padding()
                        .frame(height: 50)
                        .background(Color.lightblue)
                        .cornerRadius(10.0)
                        .shadow(radius: 10)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
