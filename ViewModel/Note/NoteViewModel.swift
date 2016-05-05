//
// Created by Alina Hambaryan on 5/5/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import UIKit

protocol NoteViewModeling {

    var title: String {get}
    var subtitle: String? {get}
    var image: UIImage? {get}
    var service: NoteServicing {get}
}

class NoteViewModel : NoteViewModeling {

    var title: String
    var subtitle: String?
    var image: UIImage?
    var service: NoteServicing

    init(title:String, subtitle: String, image:UIImage, service : NoteServicing) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.service = service
    }

    init(service: NoteServicing) {
        self.service = service
        self.title = "[Untitled]"
    }
/*
    func create(title: String, subtitle: String, details: String) {
        self.service.create(title, subtitle: subtitle, details: details)
    }

    func delete(id: String) {
        self.service.delete(id)
    }

    func update(note: Note) {
        self.service.update(note)
    }

    func read(id: String) -> Note{
        return self.service.read(id)
    }
    */
}
