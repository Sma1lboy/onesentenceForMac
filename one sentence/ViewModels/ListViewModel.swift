//
//  ListViewModel.swift
//  one sentence
//
//  Created by Jackson Chen on 5/3/22.
//

import Foundation
/*
 CRUD FUNCTION
 
 Create
 Read
 Delete
 Update
 */
class ListViewModel : ObservableObject {
    @Published var sentences : [SentenceModel] = []
    
    init() {
        getSentences()
    }
    
    func getSentences() {
        let newSentences = [        SentenceModel(sentence : "Some dummySome dummySome dummySome dummySome dummySome dummy", createDate : "Jan 19, 2022"),
                                    SentenceModel(sentence: "testing", createDate : "Jan 20, 2022"),
                                    SentenceModel(sentence: "testing hahah ahhah ", createDate : "Jan 20, 2022")]
        sentences.append(contentsOf: newSentences)
    }
    func deleteSent(indexSet: IndexSet) {
        sentences.remove(atOffsets: indexSet)
    }
    func moveSent(from: IndexSet, to: Int) {
        sentences.move(fromOffsets: from, toOffset: to)
    }
    func addSent(sent: String) {
        //TODO test here
        let newSentence = SentenceModel(sentence: sent, createDate: "Jan 14")
        sentences.append(newSentence)
    }
    func updateSent(sentence : SentenceModel) {
        //TODO fix it
//        let index = sentence.sentence.firstIndex(where: {sentence.id == sentence.id})
//        sentences[index] = sentence.updateSentence()
        
    }
}
