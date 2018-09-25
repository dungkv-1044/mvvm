//
//  UIBarButtonItemExtensions.swift
//  Snapshot
//
//  Created by Dao Duy Duong on 12/4/17.
//  Copyright © 2017 Halliburton. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: UITabBarItem {
    
    public var image: Binder<UIImage?> {
        return Binder(self.base) { $0.image = $1 }
    }
    
    public var title: Binder<String?> {
        return Binder(self.base) { $0.title = $1 }
    }
    
    public var badge: Binder<Int> {
        return Binder(self.base) { control, value in
            if value <= 0 {
                control.badgeValue = nil
            } else {
                control.badgeValue = "\(value)"
            }
        }
    }
    
}






