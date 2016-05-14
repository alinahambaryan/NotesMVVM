//
// Created by Alina Hambaryan on 5/2/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import RxSwift

public protocol NoteServicing {

      func read () -> NoteList?   //Observable<[Note]>
  //  func read (id: String) -> Note // Observable <Note>
  //  func create (title :String, subtitle : String, details: String )
  //  func delete (id: String)
 //   func update (note: Note) -> [Note] //Observable<Note>

}