//
// Created by Alina Hambaryan on 5/2/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation
import Argo
import Curry

public class NoteMockService : NoteServicing {

    public init() {}

    public func read () -> NoteList? {

        let myBundle = NSBundle.init(forClass: NoteMockService.self)

        if let path = myBundle.pathForResource("NoteList", ofType: "json") {
            do {
                let jsonData = try NSData(contentsOfFile: path, options: NSDataReadingOptions.DataReadingMappedIfSafe)
                do {
                    if let notes = try NSJSONSerialization.JSONObjectWithData(jsonData, options: .AllowFragments) as? [String : AnyObject] {
                        let decoded : Decoded<NoteList> = decode(notes)
                        switch decoded {
                        case .Success(let noteList):
                            return noteList
                        case .Failure(let error):
                            print(error)
                        }
                    }
                }
                catch {}
            }
            catch {}
        }
        return nil
    }

    /* func read (id: String) -> Note {
     }

     func create (title :String, subtitle : String, details: String ){
     }

     func delete (id: String){
     }

     func update (note: Note) -> [Note] {

     }*/
}

