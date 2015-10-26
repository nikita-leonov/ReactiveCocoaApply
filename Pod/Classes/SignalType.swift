//
//  SignalType.swift
//  ReactiveCocoaApply
//
//  Created by Nikita Leonov on 9/26/15.
//
//

import ReactiveCocoa

extension SignalType {
    
    /// Applies a Signal operator to a Signal.
    
    public func apply<X>(@noescape transform: Signal<Value, Error> -> X) -> X {
        return transform(self.signal)
    }
}