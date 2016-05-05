//
// Created by Alina Hambaryan on 5/2/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import Foundation

class NoteMockService : NoteServicing {

    func read () { //-> [Note] {
        if let path = NSBundle.mainBundle().pathForResource("NoteList", ofType: "json") {
            do {
                let jsonData = try NSData(contentsOfFile: path, options: NSDataReadingOptions.DataReadingMappedIfSafe)
                do {
                    if let JSONObject = try NSJSONSerialization.JSONObjectWithData(jsonData, options: .AllowFragments) as?[[String : AnyObject]] {
                        print(JSONObject)
                    }
                }
                catch {}
            }
            catch {}
    }

//    func read (id: String) -> Note {
//    }
//
//    func create (title :String, subtitle : String, details: String ){
//    }
//
//    func delete (id: String){
//    }
//
//    func update (note: Note) {// -> [Note] {
//
//        if let path = NSBundle.mainBundle().pathForResource("NoteList", ofType: "json") {
//            do {
//                let jsonData = try NSData(contentsOfFile: path, options: NSDataReadingOptions.DataReadingMappedIfSafe)
//                do {
//                    if let JSONObject = try NSJSONSerialization.JSONObjectWithData(jsonData, options: .AllowFragments) as?[[String : AnyObject]] {
//                        print(JSONObject)
//                    }
//                }
//                catch {}
//            }
//             catch {}
//
//        }
//


//        if let path = NSBundle.mainBundle().pathForResource("NoteList", ofType: "json") {
//            do {
//                let jsonData = try NSData(contentsOfFile: path, options: NSDataReadingOptions.DataReadingMappedIfSafe)
//                do {
//                    if let JSONObject = try NSJSONSerialization.JSONObjectWithData(jsonData, options: .AllowFragments) as? [[String: AnyObject]] {
//                        print(JSONObject[0]["list"])
//                    //}
//                } catch {}
//            } catch {}
        }
}

