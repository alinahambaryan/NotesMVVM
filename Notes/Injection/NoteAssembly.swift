//
// Created by Alina Hambaryan on 5/6/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import Swinject
import Model

class NoteServiceAssembly : AssemblyType {

    func assemble(container: Container) {
        container.register(NoteServicing.self) { r in NoteMockService()}
    }
}

class NoteViewModelAssembly : AssemblyType {

    func assemble(container: Container) {
        container.register(NoteListViewModeling.self) { r in NoteListViewModel(service : r.resolve(NoteServicing.self)!)}
    }
}