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
        registerForNotes()
    }

    class func registerForNotes() {

        defaultContainer.registerForStoryboard(NotesViewController.self) { _ , vc in
            let assembler = try!Assembler.init(assemblies: [NoteServiceAssembly(), NoteViewModelAssembly()])
            vc.viewModel =  assembler.resolver.resolve(NoteListViewModeling.self)
        }
    }

    class func registerForUser() {

        defaultContainer.registerForStoryboard(LoginViewController.self) { _ , vc in
//            let assembler = try!Assembler.init(assemblies: [NoteServiceAssembly(), NoteViewModelAssembly()])
//            vc.viewModel =  assembler.resolver.resolve(UserViewModeling.self)
        }
    }
}

