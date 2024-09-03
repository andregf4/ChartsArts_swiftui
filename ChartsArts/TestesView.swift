//
//  TestesView.swift
//  ChartsArts
//
//  Created by Andre Gerez Foratto on 21/05/24.
//

import SwiftUI

struct CheckList: Identifiable {
    var id = UUID()
    var texto: String
    var isChecked: Bool = false
}

struct TestesView: View {
    
    @State var listaItens: [CheckList] = [
        CheckList(texto: "Lista 1"),
        CheckList(texto: "Lista 2"),
        CheckList(texto: "Lista 3")
    ]
    
    var body: some View {
        ZStack {
//            RadialGradient(stops: [
//            .init(color: Color(red:0.1, green: 0.2, blue: 0.45), location: 0.3),
//            .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
//        ], center: .top, startRadius: 200, endRadius: 700)
//            .ignoresSafeArea()
            
            LinearGradient(stops: [
                .init(color: Color(red:0.1, green: 0.2, blue: 0.45), location: 0.2),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.1)
            ], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack {
                ForEach(listaItens) { i in
                    HStack {
                        Image(systemName: i.isChecked ? "checkmark.square.fill" : "square")
                            .font(.system(size: 55))
                            .onTapGesture {
                                self.listaItens[self.listaItens.firstIndex(where: { $0.id == i.id })!].isChecked.toggle()
                            }
                        VStack {
                            Text(i.texto)
                                .bold()
                                .font(.title)
                            Text("A fazer")
                        }
                        Spacer()
                        Text("\(i.isChecked)")
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    TestesView()
}
