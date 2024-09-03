//
//  BarraVView.swift
//  ChartsArts
//
//  Created by Andre Gerez Foratto on 14/05/24.
//

import SwiftUI

struct BarraVView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.green, .lightblue, .lightblue], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                Text("Gráfico de Barras Vertical")
                    .font(.system(size: 20))
                    .bold()
                    .padding()
                    .shadow(radius: 8)
                    .padding()
                
                HStack(alignment: .bottom) {
                    ForEach(arrayMedalhas, id: \.self) { o in
                        ZStack {
                            Rectangle()
                                .frame(width: 23, height: (o.ouros)*4)
                                .foregroundStyle(.yellow)
                            Text("\(o.ouros, specifier: "%0.f")")
                                .font(.system(size: 13))
                        }
                    }
                }
                Divider()
                    .padding([.leading, .trailing], 10)
                HStack(alignment: .bottom) {
                    ForEach(arrayMedalhas, id: \.self) { p in
                        ZStack {
                            Rectangle()
                                .frame(width: 23, height: (p.pratas)*4)
                                .foregroundStyle(.gray)
                            Text("\(p.pratas, specifier: "%0.f")")
                                .font(.system(size: 13))
                        }
                    }
                }
                Divider()
                    .padding([.leading, .trailing], 10)
                HStack(alignment: .bottom) {
                    ForEach(arrayMedalhas, id: \.self) { b in
                        ZStack {
                            Rectangle()
                                .frame(width: 23, height: (b.bronzes)*4)
                                .foregroundStyle(.brown)
                            Text("\(b.bronzes, specifier: "%0.f")")
                                .font(.system(size: 13))
                        }
                    }
                }
                Divider()
                    .padding([.leading, .trailing], 10)
                
                HStack(alignment: .top, spacing: 0) {
                    ForEach(arrayMedalhas, id: \.self) { c in
                        VStack {
                            AsyncImage(url: URL(string: c.bandeira)) { image in
                                image
                                    .resizable()
                                    .frame(width: 50, height: 23)
                                    .padding(-9.5)
                                    .rotationEffect(.degrees(90))
                                    .padding(.bottom, 20)
                            } placeholder: {
                                ProgressView()
                            }
                            Text("\((c.ouros+c.pratas+c.bronzes), specifier: "%0.f")")
                        }
                    }
                }
                .padding(.top, 23)
            }
        }
    }
}

#Preview {
    BarraVView()
}
