//
// Created by Alina Hambaryan on 5/2/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation

public class NoteMockService : NoteServicing {

    public init() {}

    public func read () -> [Note] {

        let notes = [Note]()
        if let path = NSBundle.mainBundle().pathForResource("NoteList", ofType: "json") {
            do {
                let jsonData = try NSData(contentsOfFile: path, options: NSDataReadingOptions.DataReadingMappedIfSafe)
                do {
                    if let noteList = try NSJSONSerialization.JSONObjectWithData(jsonData, options: .AllowFragments) as?[String : AnyObject] {
                        for _ in noteList {

                        }
                    }
                }
                catch {}
            }
            catch {}
        }
        return notes
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

