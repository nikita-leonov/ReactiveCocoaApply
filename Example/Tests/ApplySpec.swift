// https://github.com/Quick/Quick

import Quick
import Nimble
import ReactiveCocoaApply
import ReactiveCocoa

class SignalApply: QuickSpec {
    override func spec() {
        describe("apply function") {
            it("executes applied Signal operator for a Signal when it is observed") {
                waitUntil { done in
                    func process(signal: Signal<Void, NoError>) -> Signal<Void, NoError> {
                        return signal.filter { _ in
                            done()
                            return false
                        }
                    }
                    
                    let testPipe = Signal<Void, NoError>.pipe()
                    testPipe.0.apply(process).observeNext {}
                    
                    testPipe.1.sendNext()
                }
            }
            it("executes applied SignalProducer operator for a SignalProducer when it is started") {
                waitUntil { done in
                    func process(signalProducer: SignalProducer<Void, NoError>) -> SignalProducer<Void, NoError> {
                        return signalProducer.on(started: done)
                    }
                    SignalProducer<Void, NoError>.never
                        .apply(process)
                        .start()
                }
            }
            it("executes applied Signal operator for a SignalProducer when it is started") {
                waitUntil { done in
                    func process(signal: Signal<Void, NoError>) -> Signal<Void, NoError> {
                        return signal.filter { _ in
                            done()
                            return false
                        }
                    }
                    SignalProducer<Void, NoError>(value:())
                        .apply(process)
                        .start()
                }
            }
        }
    }
}