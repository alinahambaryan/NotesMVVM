//
// Created by Alina Hambaryan on 5/5/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import UIKit
import ViewModel

public class NotesViewController : BaseViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    public var viewModel : NoteListViewModeling?

    public override func viewDidLoad() {

        setupUI()

        viewModel?.service.read()
        print("hello",  viewModel?.notes)
    }

    func setupUI(){
//        tableView.registerReusableCell(NoteCell)
    }

    override public func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if let vc = segue.destinationViewController as? NoteDetailViewController, let cell = sender as? NoteCell, let note = cell.viewModel as? Note {
//            vc.viewModel?.loan = loan
//        }
    }

    public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            self.performSegueWithIdentifier("NotesToNoteDetailShowSegue", sender: cell)
        }
    }
}