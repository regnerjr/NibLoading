//
//  Copyright © 2017 John Regner. All rights reserved.
//

import UIKit

@IBDesignable
class MyCustomView: UIView {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!

    // MARK: - Lifecycle

    override init(frame: CGRect) {
        print(#function)
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder decoder: NSCoder) {
        print(#function)
        super.init(coder: decoder)
        commonInit()
    }

    private func commonInit() {
        print(#function)
        let view = Bundle(for:MyCustomView.self).loadNibNamed(String(describing: MyCustomView.self), owner: self)!.first as! UIView
        self.addSubview(view)
        view.frame = self.bounds
    }

    override func awakeFromNib() {
        print(#function)
        super.awakeFromNib()
        topLabel.backgroundColor = .purple
        bottomLabel.backgroundColor = .green
    }

}
