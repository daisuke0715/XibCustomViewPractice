//
//  FooView.swift
//  Practice_XibCustomView
//
//  Created by 河村大介 on 2021/03/27.
//

import UIKit

final class FooView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadNib()
        
    }
    
    fileprivate func loadNib() {
        guard let fooView = UINib(nibName: "FooView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else{
            return
        }
        
        fooView.frame = self.bounds
        self.addSubview(fooView)
    }
    
}
