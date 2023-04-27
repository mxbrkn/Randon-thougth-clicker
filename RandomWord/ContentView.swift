//
//  ContentView.swift
//  RandomWord
//
//  Created by maksburkin on 27.04.2023.
//

import SwiftUI

struct ContentView: View {

    let phrases = [
        "Всем студентам надо ставить автомат!",
        "Зачем проверять, они же уже наверное проверили перед тем как сдать",
        "Такое время, что его лучше не тратить зря",
        "Сначала поставлю автомат, потом проверю",
        "Вискарь - звучит лучше чем пересдача",
        "ТЫ ГЕНИЙ! Зачем тебе эти мелочи...",
        "Сон - основа здоровья",
        "Apple рулит",
        "Автомат в ведомости, лучше чем в руках",
        "Ой всё",
    ]

    @State var currentPhrase: String = ""

    var body: some View {
        VStack(spacing: 24) {
            Text(currentPhrase)

            Button("Генерировать мысль") {
                currentPhrase = phrases.randomElement() ?? ""
            }
        }
        .padding()
    }
}
