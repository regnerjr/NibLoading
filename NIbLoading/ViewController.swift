//
//  ViewController.swift
//  NIbLoading
//
//  Created by John Regner - Vendor on 10/16/17.
//  Copyright © 2017 John Regner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCustomView: MyCustomView!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        print(#function)
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        print("VC")
        print(#function)
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        print("VC")
        print(#function)
        super.awakeFromNib()

    }

    override func viewDidLoad() {
        print("VC")
        print(#function)
        super.viewDidLoad()
        print("Super loaded")
    }

}

