//
// Created by Alina Hambaryan on 5/5/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import RxSwift
import Model

public protocol NoteListViewModeling {
    var notes:[NoteViewModel]? {get}
    var service: NoteServicing {get}
}

public class NoteListViewModel: NoteListViewModeling {

    public var notes: [NoteViewModel]?
    public var service: NoteServicing

    public init(service: NoteServicing) {
        self.service = service
    }

    func loadNotes() {
        self.service .read()
    }
}