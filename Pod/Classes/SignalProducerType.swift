//
//  SignalProducerType.swift
//  ReactiveCocoaApply
//
//  Created by Nikita Leonov on 9/26/15.
//
//

import ReactiveCocoa

extension SignalProducerType {
    
    /// Applies a Signal operator to a SignalProducer (equivalent to
    /// SignalProducer.lift).
    ///
    /// This will create a new SignalProducer which will apply the given Signal
    /// operator to _every_ created Signal, just as if the operator had been applied
    /// to each Signal yielded from start().
    
    public func apply<U, F>(transform: Signal<Value, Error> -> Signal<U, F>) -> SignalProducer<U, F> {
        return self.producer.lift(transform)
    }
    
    /// Applies a SignalProducer operator to a SignalProducer.
    
    public func apply<X>(@noescape transform: SignalProducer<Value, Error> -> X) -> X {
        return transform(self.producer)
    }
}