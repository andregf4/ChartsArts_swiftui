//
//  BarraView.swift
//  ChartsArts
//
//  Created by Andre Gerez Foratto on 13/05/24.
//

import SwiftUI

struct BarraHView: View {
    
    @State var comprimento: CGFloat = 0
    var medalhas = ["Ouro", "Prata", "Bronze", "Total"]
    @State var medalha = "Ouro"
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.green, .lightblue, .lightblue], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Text("Gráfico de Barras Horizontal")
                    .font(.system(size: 20))
                    .bold()
                    .padding()
                    .shadow(radius: 8)
                    .padding(.top, 10)
                
                HStack {
                    Text("Escolha a medalha:").bold()
                    Picker("Qual medalha?", selection: $medalha) {
                        ForEach(medalhas, id: \.self) {
                            Text($0)
                        }
                    }
                }
                .padding()
                .background(Color.lightblue)
                .border(Color.black)
                .padding()
                
                HStack {
                    VStack(alignment: .leading) {
                        ForEach(arrayMedalhas, id: \.self) { p in
                            Text(p.pais)
                                .frame(height: 40)
                            Divider()
                        }
                    }
                    VStack(alignment: .leading) {
                        ForEach(arrayMedalhas, id: \.self) { o in
                            if medalha == "Ouro" {
                                ZStack {
                                    Rectangle()
                                        .foregroundStyle(.yellow)
                                        .frame(width: (o.ouros)*5, height: 39)
                                        .cornerRadius(10)
                                        .shadow(radius: 30)
                                    Text("\(o.ouros, specifier: "%0.f")")
                                }
                                Divider()
                            } else if medalha == "Prata" {
                                ZStack {
                                    Rectangle()
                                        .foregroundStyle(.gray)
                                        .frame(width: (o.pratas)*5, height: 39)
                                        .cornerRadius(10)
                                        .shadow(radius: 30)
                                    Text("\(o.pratas, specifier: "%0.f")")
                                }
                                Divider()
                            } else if medalha == "Bronze" {
                                ZStack {
                                    Rectangle()
                                        .foregroundStyle(.brown)
                                        .frame(width: (o.bronzes)*5, height: 39)
                                        .cornerRadius(10)
                                        .shadow(radius: 30)
                                    Text("\(o.bronzes, specifier: "%0.f")")
                                }
                                Divider()
                            } else {
                                ZStack {
                                    Rectangle()
                                        .foregroundStyle(.blue)
                                        .frame(width: (o.ouros + o.pratas + o.bronzes)*1.5, height: 39)
                                        .cornerRadius(10)
                                        .shadow(radius: 30)
                                    Text("\((o.ouros + o.pratas + o.bronzes), specifier: "%0.f")")
                                }
                                Divider()
                            }
                        }
                    }
                }
                .padding([.leading, .trailing], 30)
                Spacer()
            }
        }
    }
}

#Preview {
    BarraHView()
}
