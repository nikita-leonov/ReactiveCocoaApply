//
//  SignalType.swift
//  ReactiveCocoaApply
//
//  Created by Nikita Leonov on 9/26/15.
//
//

import ReactiveSwift

extension SignalProtocol {
    
    /// Applies a Signal operator to a Signal.    
    public func apply<X>(_ transform: @noescape (Signal<Value, Error>) -> X) -> X {
        return transform(self.signal)
    }
}
