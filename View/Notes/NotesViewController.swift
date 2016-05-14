//
// Created by Alina Hambaryan on 5/5/16.
// Copyright (c) 2016 Alina Hambaryan. All rights reserved.
//

import UIKit
import ViewModel

public class NotesViewController : BaseViewController {

    public var viewModel : NoteListViewModeling?

    public override func viewDidLoad() {
        viewModel?.service.read()
        print("hello")
    }
}