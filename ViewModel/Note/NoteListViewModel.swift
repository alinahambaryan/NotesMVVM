//
// Created by Alina Hambaryan on 5/5/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import RxSwift


protocol NoteListViewModeling {
    var notes:[NoteViewModel]? {get}
    var service: NoteServicing {get}
}

class NoteListViewModel: /*ViewModel<NoteServicing>,*/ NoteListViewModeling {

    var notes: [NoteViewModel]?
    var service: NoteServicing

    init(service: NoteServicing) {
        self.service = service
    }

    func loadNotes() {
        self.service .read()
    }
}