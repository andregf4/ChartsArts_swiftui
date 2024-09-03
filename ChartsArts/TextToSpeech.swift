//
//  TextToSpeech.swift
//  ChartsArts
//
//  Created by Andre Gerez Foratto on 30/07/24.
//

import SwiftUI
import AVKit
import NaturalLanguage

struct TextToSpeech: View {
    @State private var text = ""
    
    let recognizer = NLLanguageRecognizer()
    let speechSynthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.5), lineWidth: 2))
                .padding()
            Button("Speak") {
                recognizer.processString(text)
                let lang = recognizer.dominantLanguage!.rawValue
                
                let utterance = AVSpeechUtterance(string: text)
                utterance.voice = AVSpeechSynthesisVoice(language: lang)
                
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                    try AVAudioSession.sharedInstance().setActive(true)
                } catch {
                    print(error.localizedDescription)
                }
                
                speechSynthesizer.speak(utterance)
            }
        }
    }
}

#Preview {
    TextToSpeech()
}
