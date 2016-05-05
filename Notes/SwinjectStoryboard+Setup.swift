//
//  SwinjectStoryboard+Setup.swift
//  Notes
//
//  Created by Alina Hambaryan on 5/5/16.
//  Copyright © 2016 Alina Hambaryan. All rights reserved.
//

import Swinject
import ViewModel
import View
import RxSwift
import Model

extension SwinjectStoryboard {

    class func setup() {
        defaultContainer.registerForUser()
        defaultContainer.registerForNotes()
    }
}

extension Container {

    func registerForNotes() {

    // register(AccountService.self) { r in AccountNetwork(client: r.resolve(Client.self)!) }
        register(NoteServicing.self) { r in NoteMockService()}

        register(NoteListViewModeling.self) { r in NoteListViewModel(service: r.resolve(NoteServicing.self)!) }
//
//        registerForStoryboard(NotesViewController.self) { r, c in
//            c.viewModel = r.resolve(NoteListViewModel.self)
//        }
    }

    func registerForUser() {

    }
}