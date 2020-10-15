
@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
final class AnyCancellable : Cancellable, Hashable {
  init(_ cancel: @escaping () -> Void)
  init<C>(_ canceller: C) where C : Cancellable
}

extension AnyCancellable {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  final func store<C>(in collection: inout C) where C : RangeReplaceableCollection, C.Element == AnyCancellable
  final func store(in set: inout Set<AnyCancellable>)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@frozen struct AnyPublisher<Output, Failure> : CustomStringConvertible, CustomPlaygroundDisplayConvertible where Failure : Error {
  @usableFromInline
  let box: PublisherBoxBase<Output, Failure>
  @inlinable init<P>(_ publisher: P) where Output == P.Output, Failure == P.Failure, P : Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AnyPublisher : Publisher {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@frozen struct AnySubscriber<Input, Failure> : Subscriber, CustomStringConvertible, CustomReflectable, CustomPlaygroundDisplayConvertible where Failure : Error {
  @usableFromInline
  let box: AnySubscriberBase<Input, Failure>
  @usableFromInline
  let descriptionThunk: () -> String
  @usableFromInline
  let customMirrorThunk: () -> Mirror
  @usableFromInline
  let playgroundDescriptionThunk: () -> Any
  @inline(__always) @inlinable init<S>(_ s: S) where Input == S.Input, Failure == S.Failure, S : Subscriber
  init<S>(_ s: S) where Input == S.Output, Failure == S.Failure, S : Subject
  @inline(__always) @inlinable init(receiveSubscription: ((Subscription) -> Void)? = nil, receiveValue: ((Input) -> Subscribers.Demand)? = nil, receiveCompletion: ((Subscribers.Completion<Failure>) -> Void)? = nil)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnySubscriberBase<Input, Failure> : Subscriber where Failure : Error {
  @inline(__always) @inlinable init()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
final class AnySubscriberBox<Base> : AnySubscriberBase<Base.Input, Base.Failure> where Base : Subscriber {
  @usableFromInline
  final let base: Base
  @inlinable init(_ base: Base)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol Cancellable {
  func cancel()
}

extension Cancellable {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func store<C>(in collection: inout C) where C : RangeReplaceableCollection, C.Element == AnyCancellable
  func store(in set: inout Set<AnyCancellable>)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
final class ClosureBasedAnySubscriber<Input, Failure> : AnySubscriberBase<Input, Failure> where Failure : Error {
  @usableFromInline
  final let receiveSubscriptionThunk: (Subscription) -> Void
  @usableFromInline
  final let receiveValueThunk: (Input) -> Subscribers.Demand
  @usableFromInline
  final let receiveCompletionThunk: (Subscribers.Completion<Failure>) -> Void
  @inlinable init(_ rcvSubscription: @escaping (Subscription) -> Void, _ rcvValue: @escaping (Input) -> Subscribers.Demand, _ rcvCompletion: @escaping (Subscribers.Completion<Failure>) -> Void)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct CombineIdentifier : Hashable, CustomStringConvertible {
  init()
  init(_ obj: AnyObject)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol ConnectablePublisher : Publisher {
  func connect() -> Cancellable
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ConnectablePublisher {
  func autoconnect() -> Publishers.Autoconnect<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
final class CurrentValueSubject<Output, Failure> : Subject where Failure : Error {
  final var value: Output
  init(_ value: Output)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol CustomCombineIdentifierConvertible {
  var combineIdentifier: CombineIdentifier { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CustomCombineIdentifierConvertible where Self : AnyObject {
  var combineIdentifier: CombineIdentifier { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct Deferred<DeferredPublisher> : Publisher where DeferredPublisher : Publisher {
  let createPublisher: () -> DeferredPublisher
  init(createPublisher: @escaping () -> DeferredPublisher)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct Empty<Output, Failure> : Publisher, Equatable where Failure : Error {
  init(completeImmediately: Bool = true)
  init(completeImmediately: Bool = true, outputType: Output.Type, failureType: Failure.Type)
  let completeImmediately: Bool
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct Fail<Output, Failure> : Publisher where Failure : Error {
  init(error: Failure)
  init(outputType: Output.Type, failure: Failure)
  let error: Failure
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Fail : Equatable where Failure : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
final class Future<Output, Failure> : Publisher where Failure : Error {
  typealias Promise = (Result<Output, Failure>) -> Void
  init(_ attemptToFulfill: @escaping (@escaping Future<Output, Failure>.Promise) -> Void)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct ImmediateScheduler : Scheduler {
  static let shared: ImmediateScheduler
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct Just<Output> : Publisher {
  let output: Output
  init(_ output: Output)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Just : Equatable where Output : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Just where Output : Comparable {
  func min() -> Just<Output>
  func max() -> Just<Output>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Just where Output : Equatable {
  func contains(_ output: Output) -> Just<Bool>
  func removeDuplicates() -> Just<Output>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Just {
  func allSatisfy(_ predicate: (Output) -> Bool) -> Just<Bool>
  func tryAllSatisfy(_ predicate: (Output) throws -> Bool) -> Result<Bool, Error>.Publisher
  func collect() -> Just<[Output]>
  func compactMap<T>(_ transform: (Output) -> T?) -> Optional<T>.Publisher
  func min(by areInIncreasingOrder: (Output, Output) -> Bool) -> Just<Output>
  func max(by areInIncreasingOrder: (Output, Output) -> Bool) -> Just<Output>
  func prepend(_ elements: Output...) -> Publishers.Sequence<[Output], Just<Output>.Failure>
  func prepend<S>(_ elements: S) -> Publishers.Sequence<[Output], Just<Output>.Failure> where Output == S.Element, S : Sequence
  func append(_ elements: Output...) -> Publishers.Sequence<[Output], Just<Output>.Failure>
  func append<S>(_ elements: S) -> Publishers.Sequence<[Output], Just<Output>.Failure> where Output == S.Element, S : Sequence
  func contains(where predicate: (Output) -> Bool) -> Just<Bool>
  func tryContains(where predicate: (Output) throws -> Bool) -> Result<Bool, Error>.Publisher
  func count() -> Just<Int>
  func dropFirst(_ count: Int = 1) -> Optional<Output>.Publisher
  func drop(while predicate: (Output) -> Bool) -> Optional<Output>.Publisher
  func first() -> Just<Output>
  func first(where predicate: (Output) -> Bool) -> Optional<Output>.Publisher
  func last() -> Just<Output>
  func last(where predicate: (Output) -> Bool) -> Optional<Output>.Publisher
  func filter(_ isIncluded: (Output) -> Bool) -> Optional<Output>.Publisher
  func ignoreOutput() -> Empty<Output, Just<Output>.Failure>
  func map<T>(_ transform: (Output) -> T) -> Just<T>
  func tryMap<T>(_ transform: (Output) throws -> T) -> Result<T, Error>.Publisher
  func mapError<E>(_ transform: (Just<Output>.Failure) -> E) -> Result<Output, E>.Publisher where E : Error
  func output(at index: Int) -> Optional<Output>.Publisher
  func output<R>(in range: R) -> Optional<Output>.Publisher where R : RangeExpression, R.Bound == Int
  func prefix(_ maxLength: Int) -> Optional<Output>.Publisher
  func prefix(while predicate: (Output) -> Bool) -> Optional<Output>.Publisher
  func reduce<T>(_ initialResult: T, _ nextPartialResult: (T, Output) -> T) -> Result<T, Just<Output>.Failure>.Publisher
  func tryReduce<T>(_ initialResult: T, _ nextPartialResult: (T, Output) throws -> T) -> Result<T, Error>.Publisher
  func removeDuplicates(by predicate: (Output, Output) -> Bool) -> Just<Output>
  func tryRemoveDuplicates(by predicate: (Output, Output) throws -> Bool) -> Result<Output, Error>.Publisher
  func replaceError(with output: Output) -> Just<Output>
  func replaceEmpty(with output: Output) -> Just<Output>
  func retry(_ times: Int) -> Just<Output>
  func scan<T>(_ initialResult: T, _ nextPartialResult: (T, Output) -> T) -> Result<T, Just<Output>.Failure>.Publisher
  func tryScan<T>(_ initialResult: T, _ nextPartialResult: (T, Output) throws -> T) -> Result<T, Error>.Publisher
  func setFailureType<E>(to failureType: E.Type) -> Result<Output, E>.Publisher where E : Error
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol ObservableObject : AnyObject {
  associatedtype ObjectWillChangePublisher : Publisher = ObservableObjectPublisher where Self.ObjectWillChangePublisher.Failure == Never
  var objectWillChange: Self.ObjectWillChangePublisher { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ObservableObject where Self.ObjectWillChangePublisher == ObservableObjectPublisher {
  var objectWillChange: ObservableObjectPublisher { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
final class ObservableObjectPublisher : Publisher {
  init()
  final func send()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
final class PassthroughSubject<Output, Failure> : Subject where Failure : Error {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@propertyWrapper struct Published<Value> {
  @_alwaysEmitIntoClient init(wrappedValue: Value)
  init(initialValue: Value)
  static subscript<EnclosingSelf>(_enclosingInstance object: EnclosingSelf, wrapped wrappedKeyPath: ReferenceWritableKeyPath<EnclosingSelf, Value>, storage storageKeyPath: ReferenceWritableKeyPath<EnclosingSelf, Published<Value>>) -> Value where EnclosingSelf : AnyObject
  struct Publisher : Publisher {
  }
  var projectedValue: Published<Value>.Publisher { mutating get set }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol Publisher {
  associatedtype Output
  associatedtype Failure : Error
  func receive<S>(subscriber: S) where S : Subscriber, Self.Failure == S.Failure, Self.Output == S.Input
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func multicast<S>(_ createSubject: @escaping () -> S) -> Publishers.Multicast<Self, S> where S : Subject, Self.Failure == S.Failure, Self.Output == S.Output
  func multicast<S>(subject: S) -> Publishers.Multicast<Self, S> where S : Subject, Self.Failure == S.Failure, Self.Output == S.Output
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func subscribe<S>(on scheduler: S, options: S.SchedulerOptions? = nil) -> Publishers.SubscribeOn<Self, S> where S : Scheduler
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func measureInterval<S>(using scheduler: S, options: S.SchedulerOptions? = nil) -> Publishers.MeasureInterval<Self, S> where S : Scheduler
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func drop(while predicate: @escaping (Self.Output) -> Bool) -> Publishers.DropWhile<Self>
  func tryDrop(while predicate: @escaping (Self.Output) throws -> Bool) -> Publishers.TryDropWhile<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func filter(_ isIncluded: @escaping (Self.Output) -> Bool) -> Publishers.Filter<Self>
  func tryFilter(_ isIncluded: @escaping (Self.Output) throws -> Bool) -> Publishers.TryFilter<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func breakpoint(receiveSubscription: ((Subscription) -> Bool)? = nil, receiveOutput: ((Self.Output) -> Bool)? = nil, receiveCompletion: ((Subscribers.Completion<Self.Failure>) -> Bool)? = nil) -> Publishers.Breakpoint<Self>
  func breakpointOnError() -> Publishers.Breakpoint<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func allSatisfy(_ predicate: @escaping (Self.Output) -> Bool) -> Publishers.AllSatisfy<Self>
  func tryAllSatisfy(_ predicate: @escaping (Self.Output) throws -> Bool) -> Publishers.TryAllSatisfy<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func sink(receiveCompletion: @escaping ((Subscribers.Completion<Self.Failure>) -> Void), receiveValue: @escaping ((Self.Output) -> Void)) -> AnyCancellable
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher where Self.Failure == Never {
  func sink(receiveValue: @escaping ((Self.Output) -> Void)) -> AnyCancellable
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher where Self.Output : Equatable {
  func removeDuplicates() -> Publishers.RemoveDuplicates<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func removeDuplicates(by predicate: @escaping (Self.Output, Self.Output) -> Bool) -> Publishers.RemoveDuplicates<Self>
  func tryRemoveDuplicates(by predicate: @escaping (Self.Output, Self.Output) throws -> Bool) -> Publishers.TryRemoveDuplicates<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func decode<Item, Coder>(type: Item.Type, decoder: Coder) -> Publishers.Decode<Self, Item, Coder> where Item : Decodable, Coder : TopLevelDecoder, Self.Output == Coder.Input
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher where Self.Output : Encodable {
  func encode<Coder>(encoder: Coder) -> Publishers.Encode<Self, Coder> where Coder : TopLevelEncoder
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher where Self.Output : Equatable {
  func contains(_ output: Self.Output) -> Publishers.Contains<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func combineLatest<P>(_ other: P) -> Publishers.CombineLatest<Self, P> where P : Publisher, Self.Failure == P.Failure
  func combineLatest<P, T>(_ other: P, _ transform: @escaping (Self.Output, P.Output) -> T) -> Publishers.Map<Publishers.CombineLatest<Self, P>, T> where P : Publisher, Self.Failure == P.Failure
  func combineLatest<P, Q>(_ publisher1: P, _ publisher2: Q) -> Publishers.CombineLatest3<Self, P, Q> where P : Publisher, Q : Publisher, Self.Failure == P.Failure, P.Failure == Q.Failure
  func combineLatest<P, Q, T>(_ publisher1: P, _ publisher2: Q, _ transform: @escaping (Self.Output, P.Output, Q.Output) -> T) -> Publishers.Map<Publishers.CombineLatest3<Self, P, Q>, T> where P : Publisher, Q : Publisher, Self.Failure == P.Failure, P.Failure == Q.Failure
  func combineLatest<P, Q, R>(_ publisher1: P, _ publisher2: Q, _ publisher3: R) -> Publishers.CombineLatest4<Self, P, Q, R> where P : Publisher, Q : Publisher, R : Publisher, Self.Failure == P.Failure, P.Failure == Q.Failure, Q.Failure == R.Failure
  func combineLatest<P, Q, R, T>(_ publisher1: P, _ publisher2: Q, _ publisher3: R, _ transform: @escaping (Self.Output, P.Output, Q.Output, R.Output) -> T) -> Publishers.Map<Publishers.CombineLatest4<Self, P, Q, R>, T> where P : Publisher, Q : Publisher, R : Publisher, Self.Failure == P.Failure, P.Failure == Q.Failure, Q.Failure == R.Failure
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func prefix(_ maxLength: Int) -> Publishers.Output<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func print(_ prefix: String = "", to stream: TextOutputStream? = nil) -> Publishers.Print<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func prefix(while predicate: @escaping (Self.Output) -> Bool) -> Publishers.PrefixWhile<Self>
  func tryPrefix(while predicate: @escaping (Self.Output) throws -> Bool) -> Publishers.TryPrefixWhile<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher where Self.Failure == Never {
  func setFailureType<E>(to failureType: E.Type) -> Publishers.SetFailureType<Self, E> where E : Error
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func contains(where predicate: @escaping (Self.Output) -> Bool) -> Publishers.ContainsWhere<Self>
  func tryContains(where predicate: @escaping (Self.Output) throws -> Bool) -> Publishers.TryContainsWhere<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  @inline(never) func subscribe<S>(_ subscriber: S) where S : Subscriber, Self.Failure == S.Failure, Self.Output == S.Input
}

extension Publisher where Self.Failure == Never {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  func assign(to published: inout Published<Self.Output>.Publisher)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher where Self.Failure == Never {
  func makeConnectable() -> Publishers.MakeConnectable<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func collect() -> Publishers.Collect<Self>
  func collect(_ count: Int) -> Publishers.CollectByCount<Self>
  func collect<S>(_ strategy: Publishers.TimeGroupingStrategy<S>, options: S.SchedulerOptions? = nil) -> Publishers.CollectByTime<Self, S> where S : Scheduler
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func receive<S>(on scheduler: S, options: S.SchedulerOptions? = nil) -> Publishers.ReceiveOn<Self, S> where S : Scheduler
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func map<T>(_ keyPath: KeyPath<Self.Output, T>) -> Publishers.MapKeyPath<Self, T>
  func map<T0, T1>(_ keyPath0: KeyPath<Self.Output, T0>, _ keyPath1: KeyPath<Self.Output, T1>) -> Publishers.MapKeyPath2<Self, T0, T1>
  func map<T0, T1, T2>(_ keyPath0: KeyPath<Self.Output, T0>, _ keyPath1: KeyPath<Self.Output, T1>, _ keyPath2: KeyPath<Self.Output, T2>) -> Publishers.MapKeyPath3<Self, T0, T1, T2>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func prefix<P>(untilOutputFrom publisher: P) -> Publishers.PrefixUntilOutput<Self, P> where P : Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func subscribe<S>(_ subject: S) -> AnyCancellable where S : Subject, Self.Failure == S.Failure, Self.Output == S.Output
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func reduce<T>(_ initialResult: T, _ nextPartialResult: @escaping (T, Self.Output) -> T) -> Publishers.Reduce<Self, T>
  func tryReduce<T>(_ initialResult: T, _ nextPartialResult: @escaping (T, Self.Output) throws -> T) -> Publishers.TryReduce<Self, T>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func compactMap<T>(_ transform: @escaping (Self.Output) -> T?) -> Publishers.CompactMap<Self, T>
  func tryCompactMap<T>(_ transform: @escaping (Self.Output) throws -> T?) -> Publishers.TryCompactMap<Self, T>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func merge<P>(with other: P) -> Publishers.Merge<Self, P> where P : Publisher, Self.Failure == P.Failure, Self.Output == P.Output
  func merge<B, C>(with b: B, _ c: C) -> Publishers.Merge3<Self, B, C> where B : Publisher, C : Publisher, Self.Failure == B.Failure, Self.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output
  func merge<B, C, D>(with b: B, _ c: C, _ d: D) -> Publishers.Merge4<Self, B, C, D> where B : Publisher, C : Publisher, D : Publisher, Self.Failure == B.Failure, Self.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output, C.Failure == D.Failure, C.Output == D.Output
  func merge<B, C, D, E>(with b: B, _ c: C, _ d: D, _ e: E) -> Publishers.Merge5<Self, B, C, D, E> where B : Publisher, C : Publisher, D : Publisher, E : Publisher, Self.Failure == B.Failure, Self.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output, C.Failure == D.Failure, C.Output == D.Output, D.Failure == E.Failure, D.Output == E.Output
  func merge<B, C, D, E, F>(with b: B, _ c: C, _ d: D, _ e: E, _ f: F) -> Publishers.Merge6<Self, B, C, D, E, F> where B : Publisher, C : Publisher, D : Publisher, E : Publisher, F : Publisher, Self.Failure == B.Failure, Self.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output, C.Failure == D.Failure, C.Output == D.Output, D.Failure == E.Failure, D.Output == E.Output, E.Failure == F.Failure, E.Output == F.Output
  func merge<B, C, D, E, F, G>(with b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G) -> Publishers.Merge7<Self, B, C, D, E, F, G> where B : Publisher, C : Publisher, D : Publisher, E : Publisher, F : Publisher, G : Publisher, Self.Failure == B.Failure, Self.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output, C.Failure == D.Failure, C.Output == D.Output, D.Failure == E.Failure, D.Output == E.Output, E.Failure == F.Failure, E.Output == F.Output, F.Failure == G.Failure, F.Output == G.Output
  func merge<B, C, D, E, F, G, H>(with b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H) -> Publishers.Merge8<Self, B, C, D, E, F, G, H> where B : Publisher, C : Publisher, D : Publisher, E : Publisher, F : Publisher, G : Publisher, H : Publisher, Self.Failure == B.Failure, Self.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output, C.Failure == D.Failure, C.Output == D.Output, D.Failure == E.Failure, D.Output == E.Output, E.Failure == F.Failure, E.Output == F.Output, F.Failure == G.Failure, F.Output == G.Output, G.Failure == H.Failure, G.Output == H.Output
  func merge(with other: Self) -> Publishers.MergeMany<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func scan<T>(_ initialResult: T, _ nextPartialResult: @escaping (T, Self.Output) -> T) -> Publishers.Scan<Self, T>
  func tryScan<T>(_ initialResult: T, _ nextPartialResult: @escaping (T, Self.Output) throws -> T) -> Publishers.TryScan<Self, T>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func count() -> Publishers.Count<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func last(where predicate: @escaping (Self.Output) -> Bool) -> Publishers.LastWhere<Self>
  func tryLast(where predicate: @escaping (Self.Output) throws -> Bool) -> Publishers.TryLastWhere<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func ignoreOutput() -> Publishers.IgnoreOutput<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher where Self.Failure == Never {
  func assign<Root>(to keyPath: ReferenceWritableKeyPath<Root, Self.Output>, on object: Root) -> AnyCancellable
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher where Self.Failure == Self.Output.Failure, Self.Output : Publisher {
  func switchToLatest() -> Publishers.SwitchToLatest<Self.Output, Self>
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Publisher where Self.Failure == Never, Self.Output : Publisher {
  func switchToLatest() -> Publishers.SwitchToLatest<Self.Output, Publishers.SetFailureType<Self, Self.Output.Failure>>
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Publisher where Self.Failure == Never, Self.Output : Publisher, Self.Output.Failure == Never {
  func switchToLatest() -> Publishers.SwitchToLatest<Self.Output, Self>
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Publisher where Self.Output : Publisher, Self.Output.Failure == Never {
  func switchToLatest() -> Publishers.SwitchToLatest<Publishers.SetFailureType<Self.Output, Self.Failure>, Publishers.Map<Self, Publishers.SetFailureType<Self.Output, Self.Failure>>>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func retry(_ retries: Int) -> Publishers.Retry<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func mapError<E>(_ transform: @escaping (Self.Failure) -> E) -> Publishers.MapError<Self, E> where E : Error
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func throttle<S>(for interval: S.SchedulerTimeType.Stride, scheduler: S, latest: Bool) -> Publishers.Throttle<Self, S> where S : Scheduler
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func share() -> Publishers.Share<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher where Self.Output : Comparable {
  func min() -> Publishers.Comparison<Self>
  func max() -> Publishers.Comparison<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func min(by areInIncreasingOrder: @escaping (Self.Output, Self.Output) -> Bool) -> Publishers.Comparison<Self>
  func tryMin(by areInIncreasingOrder: @escaping (Self.Output, Self.Output) throws -> Bool) -> Publishers.TryComparison<Self>
  func max(by areInIncreasingOrder: @escaping (Self.Output, Self.Output) -> Bool) -> Publishers.Comparison<Self>
  func tryMax(by areInIncreasingOrder: @escaping (Self.Output, Self.Output) throws -> Bool) -> Publishers.TryComparison<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func replaceNil<T>(with output: T) -> Publishers.Map<Self, T> where Self.Output == T?
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func replaceError(with output: Self.Output) -> Publishers.ReplaceError<Self>
  func replaceEmpty(with output: Self.Output) -> Publishers.ReplaceEmpty<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func assertNoFailure(_ prefix: String = "", file: StaticString = #file, line: UInt = #line) -> Publishers.AssertNoFailure<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func drop<P>(untilOutputFrom publisher: P) -> Publishers.DropUntilOutput<Self, P> where P : Publisher, Self.Failure == P.Failure
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func handleEvents(receiveSubscription: ((Subscription) -> Void)? = nil, receiveOutput: ((Self.Output) -> Void)? = nil, receiveCompletion: ((Subscribers.Completion<Self.Failure>) -> Void)? = nil, receiveCancel: (() -> Void)? = nil, receiveRequest: ((Subscribers.Demand) -> Void)? = nil) -> Publishers.HandleEvents<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func prepend(_ elements: Self.Output...) -> Publishers.Concatenate<Publishers.Sequence<[Self.Output], Self.Failure>, Self>
  func prepend<S>(_ elements: S) -> Publishers.Concatenate<Publishers.Sequence<S, Self.Failure>, Self> where S : Sequence, Self.Output == S.Element
  func prepend<P>(_ publisher: P) -> Publishers.Concatenate<P, Self> where P : Publisher, Self.Failure == P.Failure, Self.Output == P.Output
  func append(_ elements: Self.Output...) -> Publishers.Concatenate<Self, Publishers.Sequence<[Self.Output], Self.Failure>>
  func append<S>(_ elements: S) -> Publishers.Concatenate<Self, Publishers.Sequence<S, Self.Failure>> where S : Sequence, Self.Output == S.Element
  func append<P>(_ publisher: P) -> Publishers.Concatenate<Self, P> where P : Publisher, Self.Failure == P.Failure, Self.Output == P.Output
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func debounce<S>(for dueTime: S.SchedulerTimeType.Stride, scheduler: S, options: S.SchedulerOptions? = nil) -> Publishers.Debounce<Self, S> where S : Scheduler
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func last() -> Publishers.Last<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func map<T>(_ transform: @escaping (Self.Output) -> T) -> Publishers.Map<Self, T>
  func tryMap<T>(_ transform: @escaping (Self.Output) throws -> T) -> Publishers.TryMap<Self, T>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func timeout<S>(_ interval: S.SchedulerTimeType.Stride, scheduler: S, options: S.SchedulerOptions? = nil, customError: (() -> Self.Failure)? = nil) -> Publishers.Timeout<Self, S> where S : Scheduler
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func buffer(size: Int, prefetch: Publishers.PrefetchStrategy, whenFull: Publishers.BufferingStrategy<Self.Failure>) -> Publishers.Buffer<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func zip<P>(_ other: P) -> Publishers.Zip<Self, P> where P : Publisher, Self.Failure == P.Failure
  func zip<P, T>(_ other: P, _ transform: @escaping (Self.Output, P.Output) -> T) -> Publishers.Map<Publishers.Zip<Self, P>, T> where P : Publisher, Self.Failure == P.Failure
  func zip<P, Q>(_ publisher1: P, _ publisher2: Q) -> Publishers.Zip3<Self, P, Q> where P : Publisher, Q : Publisher, Self.Failure == P.Failure, P.Failure == Q.Failure
  func zip<P, Q, T>(_ publisher1: P, _ publisher2: Q, _ transform: @escaping (Self.Output, P.Output, Q.Output) -> T) -> Publishers.Map<Publishers.Zip3<Self, P, Q>, T> where P : Publisher, Q : Publisher, Self.Failure == P.Failure, P.Failure == Q.Failure
  func zip<P, Q, R>(_ publisher1: P, _ publisher2: Q, _ publisher3: R) -> Publishers.Zip4<Self, P, Q, R> where P : Publisher, Q : Publisher, R : Publisher, Self.Failure == P.Failure, P.Failure == Q.Failure, Q.Failure == R.Failure
  func zip<P, Q, R, T>(_ publisher1: P, _ publisher2: Q, _ publisher3: R, _ transform: @escaping (Self.Output, P.Output, Q.Output, R.Output) -> T) -> Publishers.Map<Publishers.Zip4<Self, P, Q, R>, T> where P : Publisher, Q : Publisher, R : Publisher, Self.Failure == P.Failure, P.Failure == Q.Failure, Q.Failure == R.Failure
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func output(at index: Int) -> Publishers.Output<Self>
  func output<R>(in range: R) -> Publishers.Output<Self> where R : RangeExpression, R.Bound == Int
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func `catch`<P>(_ handler: @escaping (Self.Failure) -> P) -> Publishers.Catch<Self, P> where P : Publisher, Self.Output == P.Output
  func tryCatch<P>(_ handler: @escaping (Self.Failure) throws -> P) -> Publishers.TryCatch<Self, P> where P : Publisher, Self.Output == P.Output
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func flatMap<T, P>(maxPublishers: Subscribers.Demand = .unlimited, _ transform: @escaping (Self.Output) -> P) -> Publishers.FlatMap<P, Self> where T == P.Output, P : Publisher, Self.Failure == P.Failure
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Publisher where Self.Failure == Never {
  func flatMap<P>(maxPublishers: Subscribers.Demand = .unlimited, _ transform: @escaping (Self.Output) -> P) -> Publishers.FlatMap<P, Publishers.SetFailureType<Self, P.Failure>> where P : Publisher
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Publisher where Self.Failure == Never {
  func flatMap<P>(maxPublishers: Subscribers.Demand = .unlimited, _ transform: @escaping (Self.Output) -> P) -> Publishers.FlatMap<P, Self> where P : Publisher, P.Failure == Never
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Publisher {
  func flatMap<P>(maxPublishers: Subscribers.Demand = .unlimited, _ transform: @escaping (Self.Output) -> P) -> Publishers.FlatMap<Publishers.SetFailureType<P, Self.Failure>, Self> where P : Publisher, P.Failure == Never
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func delay<S>(for interval: S.SchedulerTimeType.Stride, tolerance: S.SchedulerTimeType.Stride? = nil, scheduler: S, options: S.SchedulerOptions? = nil) -> Publishers.Delay<Self, S> where S : Scheduler
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func dropFirst(_ count: Int = 1) -> Publishers.Drop<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func eraseToAnyPublisher() -> AnyPublisher<Self.Output, Self.Failure>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publisher {
  func first() -> Publishers.First<Self>
  func first(where predicate: @escaping (Self.Output) -> Bool) -> Publishers.FirstWhere<Self>
  func tryFirst(where predicate: @escaping (Self.Output) throws -> Bool) -> Publishers.TryFirstWhere<Self>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
final class PublisherBox<Base> : PublisherBoxBase<Base.Output, Base.Failure> where Base : Publisher {
  @usableFromInline
  final let base: Base
  @inlinable init(_ base: Base)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class PublisherBoxBase<Output, Failure> : Publisher where Failure : Error {
  @inlinable init()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
enum Publishers {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  final class Multicast<Upstream, SubjectType> : ConnectablePublisher where Upstream : Publisher, SubjectType : Subject, Upstream.Failure == SubjectType.Failure, Upstream.Output == SubjectType.Output {
    final let upstream: Upstream
    final let createSubject: () -> SubjectType
    init(upstream: Upstream, createSubject: @escaping () -> SubjectType)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct SubscribeOn<Upstream, Context> : Publisher where Upstream : Publisher, Context : Scheduler {
    let upstream: Upstream
    let scheduler: Context
    let options: Context.SchedulerOptions?
    init(upstream: Upstream, scheduler: Context, options: Context.SchedulerOptions?)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct MeasureInterval<Upstream, Context> : Publisher where Upstream : Publisher, Context : Scheduler {
    let upstream: Upstream
    let scheduler: Context
    init(upstream: Upstream, scheduler: Context)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct DropWhile<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Publishers.DropWhile<Upstream>.Output) -> Bool
    init(upstream: Upstream, predicate: @escaping (Publishers.DropWhile<Upstream>.Output) -> Bool)
  }
  struct TryDropWhile<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Publishers.TryDropWhile<Upstream>.Output) throws -> Bool
    init(upstream: Upstream, predicate: @escaping (Publishers.TryDropWhile<Upstream>.Output) throws -> Bool)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Filter<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let isIncluded: (Upstream.Output) -> Bool
    init(upstream: Upstream, isIncluded: @escaping (Upstream.Output) -> Bool)
  }
  struct TryFilter<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let isIncluded: (Upstream.Output) throws -> Bool
    init(upstream: Upstream, isIncluded: @escaping (Upstream.Output) throws -> Bool)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Breakpoint<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let receiveSubscription: ((Subscription) -> Bool)?
    let receiveOutput: ((Upstream.Output) -> Bool)?
    let receiveCompletion: ((Subscribers.Completion<Publishers.Breakpoint<Upstream>.Failure>) -> Bool)?
    init(upstream: Upstream, receiveSubscription: ((Subscription) -> Bool)? = nil, receiveOutput: ((Upstream.Output) -> Bool)? = nil, receiveCompletion: ((Subscribers.Completion<Publishers.Breakpoint<Upstream>.Failure>) -> Bool)? = nil)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct AllSatisfy<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Upstream.Output) -> Bool
    init(upstream: Upstream, predicate: @escaping (Upstream.Output) -> Bool)
  }
  struct TryAllSatisfy<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Upstream.Output) throws -> Bool
    init(upstream: Upstream, predicate: @escaping (Upstream.Output) throws -> Bool)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct RemoveDuplicates<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Publishers.RemoveDuplicates<Upstream>.Output, Publishers.RemoveDuplicates<Upstream>.Output) -> Bool
    init(upstream: Upstream, predicate: @escaping (Publishers.RemoveDuplicates<Upstream>.Output, Publishers.RemoveDuplicates<Upstream>.Output) -> Bool)
  }
  struct TryRemoveDuplicates<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Publishers.TryRemoveDuplicates<Upstream>.Output, Publishers.TryRemoveDuplicates<Upstream>.Output) throws -> Bool
    init(upstream: Upstream, predicate: @escaping (Publishers.TryRemoveDuplicates<Upstream>.Output, Publishers.TryRemoveDuplicates<Upstream>.Output) throws -> Bool)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Decode<Upstream, Output, Coder> : Publisher where Upstream : Publisher, Output : Decodable, Coder : TopLevelDecoder, Upstream.Output == Coder.Input {
    let upstream: Upstream
    init(upstream: Upstream, decoder: Coder)
  }
  struct Encode<Upstream, Coder> : Publisher where Upstream : Publisher, Coder : TopLevelEncoder, Upstream.Output : Encodable {
    let upstream: Upstream
    init(upstream: Upstream, encoder: Coder)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Contains<Upstream> : Publisher where Upstream : Publisher, Upstream.Output : Equatable {
    let upstream: Upstream
    let output: Upstream.Output
    init(upstream: Upstream, output: Upstream.Output)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct CombineLatest<A, B> : Publisher where A : Publisher, B : Publisher, A.Failure == B.Failure {
    let a: A
    let b: B
    init(_ a: A, _ b: B)
  }
  struct CombineLatest3<A, B, C> : Publisher where A : Publisher, B : Publisher, C : Publisher, A.Failure == B.Failure, B.Failure == C.Failure {
    let a: A
    let b: B
    let c: C
    init(_ a: A, _ b: B, _ c: C)
  }
  struct CombineLatest4<A, B, C, D> : Publisher where A : Publisher, B : Publisher, C : Publisher, D : Publisher, A.Failure == B.Failure, B.Failure == C.Failure, C.Failure == D.Failure {
    let a: A
    let b: B
    let c: C
    let d: D
    init(_ a: A, _ b: B, _ c: C, _ d: D)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  class Autoconnect<Upstream> : Publisher where Upstream : ConnectablePublisher {
    final let upstream: Upstream
    init(upstream: Upstream)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Print<Upstream> : Publisher where Upstream : Publisher {
    let prefix: String
    let upstream: Upstream
    let stream: TextOutputStream?
    init(upstream: Upstream, prefix: String, to stream: TextOutputStream? = nil)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct PrefixWhile<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Publishers.PrefixWhile<Upstream>.Output) -> Bool
    init(upstream: Upstream, predicate: @escaping (Publishers.PrefixWhile<Upstream>.Output) -> Bool)
  }
  struct TryPrefixWhile<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Publishers.TryPrefixWhile<Upstream>.Output) throws -> Bool
    init(upstream: Upstream, predicate: @escaping (Publishers.TryPrefixWhile<Upstream>.Output) throws -> Bool)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct SetFailureType<Upstream, Failure> : Publisher where Upstream : Publisher, Failure : Error, Upstream.Failure == Never {
    let upstream: Upstream
    init(upstream: Upstream)
    func setFailureType<E>(to failure: E.Type) -> Publishers.SetFailureType<Upstream, E> where E : Error
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct ContainsWhere<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Upstream.Output) -> Bool
    init(upstream: Upstream, predicate: @escaping (Upstream.Output) -> Bool)
  }
  struct TryContainsWhere<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Upstream.Output) throws -> Bool
    init(upstream: Upstream, predicate: @escaping (Upstream.Output) throws -> Bool)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct MakeConnectable<Upstream> : ConnectablePublisher where Upstream : Publisher {
    init(upstream: Upstream)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  enum TimeGroupingStrategy<Context> where Context : Scheduler {
    case byTime(Context, Context.SchedulerTimeType.Stride)
    case byTimeOrCount(Context, Context.SchedulerTimeType.Stride, Int)
  }
  struct CollectByTime<Upstream, Context> : Publisher where Upstream : Publisher, Context : Scheduler {
    let upstream: Upstream
    let strategy: Publishers.TimeGroupingStrategy<Context>
    let options: Context.SchedulerOptions?
    init(upstream: Upstream, strategy: Publishers.TimeGroupingStrategy<Context>, options: Context.SchedulerOptions?)
  }
  struct Collect<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    init(upstream: Upstream)
  }
  struct CollectByCount<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let count: Int
    init(upstream: Upstream, count: Int)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct ReceiveOn<Upstream, Context> : Publisher where Upstream : Publisher, Context : Scheduler {
    let upstream: Upstream
    let scheduler: Context
    let options: Context.SchedulerOptions?
    init(upstream: Upstream, scheduler: Context, options: Context.SchedulerOptions?)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct MapKeyPath<Upstream, Output> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let keyPath: KeyPath<Upstream.Output, Output>
  }
  struct MapKeyPath2<Upstream, Output0, Output1> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let keyPath0: KeyPath<Upstream.Output, Output0>
    let keyPath1: KeyPath<Upstream.Output, Output1>
  }
  struct MapKeyPath3<Upstream, Output0, Output1, Output2> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let keyPath0: KeyPath<Upstream.Output, Output0>
    let keyPath1: KeyPath<Upstream.Output, Output1>
    let keyPath2: KeyPath<Upstream.Output, Output2>
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct PrefixUntilOutput<Upstream, Other> : Publisher where Upstream : Publisher, Other : Publisher {
    let upstream: Upstream
    let other: Other
    init(upstream: Upstream, other: Other)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Reduce<Upstream, Output> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let initial: Output
    let nextPartialResult: (Output, Upstream.Output) -> Output
    init(upstream: Upstream, initial: Output, nextPartialResult: @escaping (Output, Upstream.Output) -> Output)
  }
  struct TryReduce<Upstream, Output> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let initial: Output
    let nextPartialResult: (Output, Upstream.Output) throws -> Output
    init(upstream: Upstream, initial: Output, nextPartialResult: @escaping (Output, Upstream.Output) throws -> Output)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct CompactMap<Upstream, Output> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let transform: (Upstream.Output) -> Output?
    init(upstream: Upstream, transform: @escaping (Upstream.Output) -> Output?)
  }
  struct TryCompactMap<Upstream, Output> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let transform: (Upstream.Output) throws -> Output?
    init(upstream: Upstream, transform: @escaping (Upstream.Output) throws -> Output?)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Merge<A, B> : Publisher where A : Publisher, B : Publisher, A.Failure == B.Failure, A.Output == B.Output {
    let a: A
    let b: B
    init(_ a: A, _ b: B)
    func merge<P>(with other: P) -> Publishers.Merge3<A, B, P> where P : Publisher, B.Failure == P.Failure, B.Output == P.Output
    func merge<Z, Y>(with z: Z, _ y: Y) -> Publishers.Merge4<A, B, Z, Y> where Z : Publisher, Y : Publisher, B.Failure == Z.Failure, B.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output
    func merge<Z, Y, X>(with z: Z, _ y: Y, _ x: X) -> Publishers.Merge5<A, B, Z, Y, X> where Z : Publisher, Y : Publisher, X : Publisher, B.Failure == Z.Failure, B.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output, Y.Failure == X.Failure, Y.Output == X.Output
    func merge<Z, Y, X, W>(with z: Z, _ y: Y, _ x: X, _ w: W) -> Publishers.Merge6<A, B, Z, Y, X, W> where Z : Publisher, Y : Publisher, X : Publisher, W : Publisher, B.Failure == Z.Failure, B.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output, Y.Failure == X.Failure, Y.Output == X.Output, X.Failure == W.Failure, X.Output == W.Output
    func merge<Z, Y, X, W, V>(with z: Z, _ y: Y, _ x: X, _ w: W, _ v: V) -> Publishers.Merge7<A, B, Z, Y, X, W, V> where Z : Publisher, Y : Publisher, X : Publisher, W : Publisher, V : Publisher, B.Failure == Z.Failure, B.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output, Y.Failure == X.Failure, Y.Output == X.Output, X.Failure == W.Failure, X.Output == W.Output, W.Failure == V.Failure, W.Output == V.Output
    func merge<Z, Y, X, W, V, U>(with z: Z, _ y: Y, _ x: X, _ w: W, _ v: V, _ u: U) -> Publishers.Merge8<A, B, Z, Y, X, W, V, U> where Z : Publisher, Y : Publisher, X : Publisher, W : Publisher, V : Publisher, U : Publisher, B.Failure == Z.Failure, B.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output, Y.Failure == X.Failure, Y.Output == X.Output, X.Failure == W.Failure, X.Output == W.Output, W.Failure == V.Failure, W.Output == V.Output, V.Failure == U.Failure, V.Output == U.Output
  }
  struct Merge3<A, B, C> : Publisher where A : Publisher, B : Publisher, C : Publisher, A.Failure == B.Failure, A.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output {
    let a: A
    let b: B
    let c: C
    init(_ a: A, _ b: B, _ c: C)
    func merge<P>(with other: P) -> Publishers.Merge4<A, B, C, P> where P : Publisher, C.Failure == P.Failure, C.Output == P.Output
    func merge<Z, Y>(with z: Z, _ y: Y) -> Publishers.Merge5<A, B, C, Z, Y> where Z : Publisher, Y : Publisher, C.Failure == Z.Failure, C.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output
    func merge<Z, Y, X>(with z: Z, _ y: Y, _ x: X) -> Publishers.Merge6<A, B, C, Z, Y, X> where Z : Publisher, Y : Publisher, X : Publisher, C.Failure == Z.Failure, C.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output, Y.Failure == X.Failure, Y.Output == X.Output
    func merge<Z, Y, X, W>(with z: Z, _ y: Y, _ x: X, _ w: W) -> Publishers.Merge7<A, B, C, Z, Y, X, W> where Z : Publisher, Y : Publisher, X : Publisher, W : Publisher, C.Failure == Z.Failure, C.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output, Y.Failure == X.Failure, Y.Output == X.Output, X.Failure == W.Failure, X.Output == W.Output
    func merge<Z, Y, X, W, V>(with z: Z, _ y: Y, _ x: X, _ w: W, _ v: V) -> Publishers.Merge8<A, B, C, Z, Y, X, W, V> where Z : Publisher, Y : Publisher, X : Publisher, W : Publisher, V : Publisher, C.Failure == Z.Failure, C.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output, Y.Failure == X.Failure, Y.Output == X.Output, X.Failure == W.Failure, X.Output == W.Output, W.Failure == V.Failure, W.Output == V.Output
  }
  struct Merge4<A, B, C, D> : Publisher where A : Publisher, B : Publisher, C : Publisher, D : Publisher, A.Failure == B.Failure, A.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output, C.Failure == D.Failure, C.Output == D.Output {
    let a: A
    let b: B
    let c: C
    let d: D
    init(_ a: A, _ b: B, _ c: C, _ d: D)
    func merge<P>(with other: P) -> Publishers.Merge5<A, B, C, D, P> where P : Publisher, D.Failure == P.Failure, D.Output == P.Output
    func merge<Z, Y>(with z: Z, _ y: Y) -> Publishers.Merge6<A, B, C, D, Z, Y> where Z : Publisher, Y : Publisher, D.Failure == Z.Failure, D.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output
    func merge<Z, Y, X>(with z: Z, _ y: Y, _ x: X) -> Publishers.Merge7<A, B, C, D, Z, Y, X> where Z : Publisher, Y : Publisher, X : Publisher, D.Failure == Z.Failure, D.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output, Y.Failure == X.Failure, Y.Output == X.Output
    func merge<Z, Y, X, W>(with z: Z, _ y: Y, _ x: X, _ w: W) -> Publishers.Merge8<A, B, C, D, Z, Y, X, W> where Z : Publisher, Y : Publisher, X : Publisher, W : Publisher, D.Failure == Z.Failure, D.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output, Y.Failure == X.Failure, Y.Output == X.Output, X.Failure == W.Failure, X.Output == W.Output
  }
  struct Merge5<A, B, C, D, E> : Publisher where A : Publisher, B : Publisher, C : Publisher, D : Publisher, E : Publisher, A.Failure == B.Failure, A.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output, C.Failure == D.Failure, C.Output == D.Output, D.Failure == E.Failure, D.Output == E.Output {
    let a: A
    let b: B
    let c: C
    let d: D
    let e: E
    init(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E)
    func merge<P>(with other: P) -> Publishers.Merge6<A, B, C, D, E, P> where P : Publisher, E.Failure == P.Failure, E.Output == P.Output
    func merge<Z, Y>(with z: Z, _ y: Y) -> Publishers.Merge7<A, B, C, D, E, Z, Y> where Z : Publisher, Y : Publisher, E.Failure == Z.Failure, E.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output
    func merge<Z, Y, X>(with z: Z, _ y: Y, _ x: X) -> Publishers.Merge8<A, B, C, D, E, Z, Y, X> where Z : Publisher, Y : Publisher, X : Publisher, E.Failure == Z.Failure, E.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output, Y.Failure == X.Failure, Y.Output == X.Output
  }
  struct Merge6<A, B, C, D, E, F> : Publisher where A : Publisher, B : Publisher, C : Publisher, D : Publisher, E : Publisher, F : Publisher, A.Failure == B.Failure, A.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output, C.Failure == D.Failure, C.Output == D.Output, D.Failure == E.Failure, D.Output == E.Output, E.Failure == F.Failure, E.Output == F.Output {
    let a: A
    let b: B
    let c: C
    let d: D
    let e: E
    let f: F
    init(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F)
    func merge<P>(with other: P) -> Publishers.Merge7<A, B, C, D, E, F, P> where P : Publisher, F.Failure == P.Failure, F.Output == P.Output
    func merge<Z, Y>(with z: Z, _ y: Y) -> Publishers.Merge8<A, B, C, D, E, F, Z, Y> where Z : Publisher, Y : Publisher, F.Failure == Z.Failure, F.Output == Z.Output, Z.Failure == Y.Failure, Z.Output == Y.Output
  }
  struct Merge7<A, B, C, D, E, F, G> : Publisher where A : Publisher, B : Publisher, C : Publisher, D : Publisher, E : Publisher, F : Publisher, G : Publisher, A.Failure == B.Failure, A.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output, C.Failure == D.Failure, C.Output == D.Output, D.Failure == E.Failure, D.Output == E.Output, E.Failure == F.Failure, E.Output == F.Output, F.Failure == G.Failure, F.Output == G.Output {
    let a: A
    let b: B
    let c: C
    let d: D
    let e: E
    let f: F
    let g: G
    init(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G)
    func merge<P>(with other: P) -> Publishers.Merge8<A, B, C, D, E, F, G, P> where P : Publisher, G.Failure == P.Failure, G.Output == P.Output
  }
  struct Merge8<A, B, C, D, E, F, G, H> : Publisher where A : Publisher, B : Publisher, C : Publisher, D : Publisher, E : Publisher, F : Publisher, G : Publisher, H : Publisher, A.Failure == B.Failure, A.Output == B.Output, B.Failure == C.Failure, B.Output == C.Output, C.Failure == D.Failure, C.Output == D.Output, D.Failure == E.Failure, D.Output == E.Output, E.Failure == F.Failure, E.Output == F.Output, F.Failure == G.Failure, F.Output == G.Output, G.Failure == H.Failure, G.Output == H.Output {
    let a: A
    let b: B
    let c: C
    let d: D
    let e: E
    let f: F
    let g: G
    let h: H
    init(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H)
  }
  struct MergeMany<Upstream> : Publisher where Upstream : Publisher {
    let publishers: [Upstream]
    init(_ upstream: Upstream...)
    init<S>(_ upstream: S) where Upstream == S.Element, S : Sequence
    func merge(with other: Upstream) -> Publishers.MergeMany<Upstream>
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Scan<Upstream, Output> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let initialResult: Output
    let nextPartialResult: (Output, Upstream.Output) -> Output
    init(upstream: Upstream, initialResult: Output, nextPartialResult: @escaping (Output, Upstream.Output) -> Output)
  }
  struct TryScan<Upstream, Output> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let initialResult: Output
    let nextPartialResult: (Output, Upstream.Output) throws -> Output
    init(upstream: Upstream, initialResult: Output, nextPartialResult: @escaping (Output, Upstream.Output) throws -> Output)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Count<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    init(upstream: Upstream)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct LastWhere<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Publishers.LastWhere<Upstream>.Output) -> Bool
    init(upstream: Upstream, predicate: @escaping (Publishers.LastWhere<Upstream>.Output) -> Bool)
  }
  struct TryLastWhere<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Publishers.TryLastWhere<Upstream>.Output) throws -> Bool
    init(upstream: Upstream, predicate: @escaping (Publishers.TryLastWhere<Upstream>.Output) throws -> Bool)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct IgnoreOutput<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    init(upstream: Upstream)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct SwitchToLatest<P, Upstream> : Publisher where P : Publisher, P == Upstream.Output, Upstream : Publisher, P.Failure == Upstream.Failure {
    let upstream: Upstream
    init(upstream: Upstream)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Retry<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let retries: Int?
    init(upstream: Upstream, retries: Int?)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct MapError<Upstream, Failure> : Publisher where Upstream : Publisher, Failure : Error {
    let upstream: Upstream
    let transform: (Upstream.Failure) -> Failure
    init(upstream: Upstream, transform: @escaping (Upstream.Failure) -> Failure)
    init(upstream: Upstream, _ map: @escaping (Upstream.Failure) -> Failure)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Throttle<Upstream, Context> : Publisher where Upstream : Publisher, Context : Scheduler {
    let upstream: Upstream
    let interval: Context.SchedulerTimeType.Stride
    let scheduler: Context
    let latest: Bool
    init(upstream: Upstream, interval: Context.SchedulerTimeType.Stride, scheduler: Context, latest: Bool)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  final class Share<Upstream> : Publisher, Equatable where Upstream : Publisher {
    final let upstream: Upstream
    init(upstream: Upstream)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Comparison<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let areInIncreasingOrder: (Upstream.Output, Upstream.Output) -> Bool
    init(upstream: Upstream, areInIncreasingOrder: @escaping (Upstream.Output, Upstream.Output) -> Bool)
  }
  struct TryComparison<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let areInIncreasingOrder: (Upstream.Output, Upstream.Output) throws -> Bool
    init(upstream: Upstream, areInIncreasingOrder: @escaping (Upstream.Output, Upstream.Output) throws -> Bool)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct ReplaceEmpty<Upstream> : Publisher where Upstream : Publisher {
    let output: Publishers.ReplaceEmpty<Upstream>.Output
    let upstream: Upstream
    init(upstream: Upstream, output: Publishers.ReplaceEmpty<Upstream>.Output)
  }
  struct ReplaceError<Upstream> : Publisher where Upstream : Publisher {
    let output: Publishers.ReplaceError<Upstream>.Output
    let upstream: Upstream
    init(upstream: Upstream, output: Publishers.ReplaceError<Upstream>.Output)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct AssertNoFailure<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let prefix: String
    let file: StaticString
    let line: UInt
    init(upstream: Upstream, prefix: String, file: StaticString, line: UInt)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct DropUntilOutput<Upstream, Other> : Publisher where Upstream : Publisher, Other : Publisher, Upstream.Failure == Other.Failure {
    let upstream: Upstream
    let other: Other
    init(upstream: Upstream, other: Other)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct HandleEvents<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    var receiveSubscription: ((Subscription) -> Void)?
    var receiveOutput: ((Publishers.HandleEvents<Upstream>.Output) -> Void)?
    var receiveCompletion: ((Subscribers.Completion<Publishers.HandleEvents<Upstream>.Failure>) -> Void)?
    var receiveCancel: (() -> Void)?
    var receiveRequest: ((Subscribers.Demand) -> Void)?
    init(upstream: Upstream, receiveSubscription: ((Subscription) -> Void)? = nil, receiveOutput: ((Publishers.HandleEvents<Upstream>.Output) -> Void)? = nil, receiveCompletion: ((Subscribers.Completion<Publishers.HandleEvents<Upstream>.Failure>) -> Void)? = nil, receiveCancel: (() -> Void)? = nil, receiveRequest: ((Subscribers.Demand) -> Void)?)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Concatenate<Prefix, Suffix> : Publisher where Prefix : Publisher, Suffix : Publisher, Prefix.Failure == Suffix.Failure, Prefix.Output == Suffix.Output {
    let prefix: Prefix
    let suffix: Suffix
    init(prefix: Prefix, suffix: Suffix)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Debounce<Upstream, Context> : Publisher where Upstream : Publisher, Context : Scheduler {
    let upstream: Upstream
    let dueTime: Context.SchedulerTimeType.Stride
    let scheduler: Context
    let options: Context.SchedulerOptions?
    init(upstream: Upstream, dueTime: Context.SchedulerTimeType.Stride, scheduler: Context, options: Context.SchedulerOptions?)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Last<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    init(upstream: Upstream)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Map<Upstream, Output> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let transform: (Upstream.Output) -> Output
    init(upstream: Upstream, transform: @escaping (Upstream.Output) -> Output)
  }
  struct TryMap<Upstream, Output> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let transform: (Upstream.Output) throws -> Output
    init(upstream: Upstream, transform: @escaping (Upstream.Output) throws -> Output)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Timeout<Upstream, Context> : Publisher where Upstream : Publisher, Context : Scheduler {
    let upstream: Upstream
    let interval: Context.SchedulerTimeType.Stride
    let scheduler: Context
    let options: Context.SchedulerOptions?
    let customError: (() -> Publishers.Timeout<Upstream, Context>.Failure)?
    init(upstream: Upstream, interval: Context.SchedulerTimeType.Stride, scheduler: Context, options: Context.SchedulerOptions?, customError: (() -> Publishers.Timeout<Upstream, Context>.Failure)?)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  enum PrefetchStrategy {
    case keepFull
    case byRequest
  }
  enum BufferingStrategy<Failure> where Failure : Error {
    case dropNewest
    case dropOldest
    case customError(() -> Failure)
  }
  struct Buffer<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let size: Int
    let prefetch: Publishers.PrefetchStrategy
    let whenFull: Publishers.BufferingStrategy<Publishers.Buffer<Upstream>.Failure>
    init(upstream: Upstream, size: Int, prefetch: Publishers.PrefetchStrategy, whenFull: Publishers.BufferingStrategy<Publishers.Buffer<Upstream>.Failure>)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Sequence<Elements, Failure> : Publisher where Elements : Sequence, Failure : Error {
    let sequence: Elements
    init(sequence: Elements)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Zip<A, B> : Publisher where A : Publisher, B : Publisher, A.Failure == B.Failure {
    let a: A
    let b: B
    init(_ a: A, _ b: B)
  }
  struct Zip3<A, B, C> : Publisher where A : Publisher, B : Publisher, C : Publisher, A.Failure == B.Failure, B.Failure == C.Failure {
    let a: A
    let b: B
    let c: C
    init(_ a: A, _ b: B, _ c: C)
  }
  struct Zip4<A, B, C, D> : Publisher where A : Publisher, B : Publisher, C : Publisher, D : Publisher, A.Failure == B.Failure, B.Failure == C.Failure, C.Failure == D.Failure {
    let a: A
    let b: B
    let c: C
    let d: D
    init(_ a: A, _ b: B, _ c: C, _ d: D)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Output<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let range: CountableRange<Int>
    init(upstream: Upstream, range: CountableRange<Int>)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Catch<Upstream, NewPublisher> : Publisher where Upstream : Publisher, NewPublisher : Publisher, Upstream.Output == NewPublisher.Output {
    let upstream: Upstream
    let handler: (Upstream.Failure) -> NewPublisher
    init(upstream: Upstream, handler: @escaping (Upstream.Failure) -> NewPublisher)
  }
  struct TryCatch<Upstream, NewPublisher> : Publisher where Upstream : Publisher, NewPublisher : Publisher, Upstream.Output == NewPublisher.Output {
    let upstream: Upstream
    let handler: (Upstream.Failure) throws -> NewPublisher
    init(upstream: Upstream, handler: @escaping (Upstream.Failure) throws -> NewPublisher)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct FlatMap<NewPublisher, Upstream> : Publisher where NewPublisher : Publisher, Upstream : Publisher, NewPublisher.Failure == Upstream.Failure {
    let upstream: Upstream
    let maxPublishers: Subscribers.Demand
    let transform: (Upstream.Output) -> NewPublisher
    init(upstream: Upstream, maxPublishers: Subscribers.Demand, transform: @escaping (Upstream.Output) -> NewPublisher)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Delay<Upstream, Context> : Publisher where Upstream : Publisher, Context : Scheduler {
    let upstream: Upstream
    let interval: Context.SchedulerTimeType.Stride
    let tolerance: Context.SchedulerTimeType.Stride
    let scheduler: Context
    let options: Context.SchedulerOptions?
    init(upstream: Upstream, interval: Context.SchedulerTimeType.Stride, tolerance: Context.SchedulerTimeType.Stride, scheduler: Context, options: Context.SchedulerOptions? = nil)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct Drop<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let count: Int
    init(upstream: Upstream, count: Int)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers {
  struct First<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    init(upstream: Upstream)
  }
  struct FirstWhere<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Publishers.FirstWhere<Upstream>.Output) -> Bool
    init(upstream: Upstream, predicate: @escaping (Publishers.FirstWhere<Upstream>.Output) -> Bool)
  }
  struct TryFirstWhere<Upstream> : Publisher where Upstream : Publisher {
    let upstream: Upstream
    let predicate: (Publishers.TryFirstWhere<Upstream>.Output) throws -> Bool
    init(upstream: Upstream, predicate: @escaping (Publishers.TryFirstWhere<Upstream>.Output) throws -> Bool)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Filter {
  func filter(_ isIncluded: @escaping (Publishers.Filter<Upstream>.Output) -> Bool) -> Publishers.Filter<Upstream>
  func tryFilter(_ isIncluded: @escaping (Publishers.Filter<Upstream>.Output) throws -> Bool) -> Publishers.TryFilter<Upstream>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.TryFilter {
  func filter(_ isIncluded: @escaping (Publishers.TryFilter<Upstream>.Output) -> Bool) -> Publishers.TryFilter<Upstream>
  func tryFilter(_ isIncluded: @escaping (Publishers.TryFilter<Upstream>.Output) throws -> Bool) -> Publishers.TryFilter<Upstream>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Contains : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.CombineLatest : Equatable where A : Equatable, B : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.CombineLatest3 : Equatable where A : Equatable, B : Equatable, C : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.CombineLatest4 : Equatable where A : Equatable, B : Equatable, C : Equatable, D : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.SetFailureType : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Collect : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.CollectByCount : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.CompactMap {
  func compactMap<T>(_ transform: @escaping (Output) -> T?) -> Publishers.CompactMap<Upstream, T>
  func map<T>(_ transform: @escaping (Output) -> T) -> Publishers.CompactMap<Upstream, T>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.TryCompactMap {
  func compactMap<T>(_ transform: @escaping (Output) throws -> T?) -> Publishers.TryCompactMap<Upstream, T>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Merge : Equatable where A : Equatable, B : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Merge3 : Equatable where A : Equatable, B : Equatable, C : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Merge4 : Equatable where A : Equatable, B : Equatable, C : Equatable, D : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Merge5 : Equatable where A : Equatable, B : Equatable, C : Equatable, D : Equatable, E : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Merge6 : Equatable where A : Equatable, B : Equatable, C : Equatable, D : Equatable, E : Equatable, F : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Merge7 : Equatable where A : Equatable, B : Equatable, C : Equatable, D : Equatable, E : Equatable, F : Equatable, G : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Merge8 : Equatable where A : Equatable, B : Equatable, C : Equatable, D : Equatable, E : Equatable, F : Equatable, G : Equatable, H : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.MergeMany : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Count : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.IgnoreOutput : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Retry : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.ReplaceEmpty : Equatable where Upstream : Equatable, Upstream.Output : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.ReplaceError : Equatable where Upstream : Equatable, Upstream.Output : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.DropUntilOutput : Equatable where Upstream : Equatable, Other : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Concatenate : Equatable where Prefix : Equatable, Suffix : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Last : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Map {
  func map<T>(_ transform: @escaping (Output) -> T) -> Publishers.Map<Upstream, T>
  func tryMap<T>(_ transform: @escaping (Output) throws -> T) -> Publishers.TryMap<Upstream, T>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.TryMap {
  func map<T>(_ transform: @escaping (Output) -> T) -> Publishers.TryMap<Upstream, T>
  func tryMap<T>(_ transform: @escaping (Output) throws -> T) -> Publishers.TryMap<Upstream, T>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.PrefetchStrategy : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.PrefetchStrategy : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Failure == Never {
  func min(by areInIncreasingOrder: (Publishers.Sequence<Elements, Failure>.Output, Publishers.Sequence<Elements, Failure>.Output) -> Bool) -> Optional<Publishers.Sequence<Elements, Failure>.Output>.Publisher
  func max(by areInIncreasingOrder: (Publishers.Sequence<Elements, Failure>.Output, Publishers.Sequence<Elements, Failure>.Output) -> Bool) -> Optional<Publishers.Sequence<Elements, Failure>.Output>.Publisher
  func first(where predicate: (Publishers.Sequence<Elements, Failure>.Output) -> Bool) -> Optional<Publishers.Sequence<Elements, Failure>.Output>.Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence {
  func allSatisfy(_ predicate: (Publishers.Sequence<Elements, Failure>.Output) -> Bool) -> Result<Bool, Failure>.Publisher
  func tryAllSatisfy(_ predicate: (Publishers.Sequence<Elements, Failure>.Output) throws -> Bool) -> Result<Bool, Error>.Publisher
  func collect() -> Result<[Publishers.Sequence<Elements, Failure>.Output], Failure>.Publisher
  func compactMap<T>(_ transform: (Publishers.Sequence<Elements, Failure>.Output) -> T?) -> Publishers.Sequence<[T], Failure>
  func contains(where predicate: (Publishers.Sequence<Elements, Failure>.Output) -> Bool) -> Result<Bool, Failure>.Publisher
  func tryContains(where predicate: (Publishers.Sequence<Elements, Failure>.Output) throws -> Bool) -> Result<Bool, Error>.Publisher
  func drop(while predicate: (Elements.Element) -> Bool) -> Publishers.Sequence<DropWhileSequence<Elements>, Failure>
  func dropFirst(_ count: Int = 1) -> Publishers.Sequence<DropFirstSequence<Elements>, Failure>
  func filter(_ isIncluded: (Publishers.Sequence<Elements, Failure>.Output) -> Bool) -> Publishers.Sequence<[Publishers.Sequence<Elements, Failure>.Output], Failure>
  func ignoreOutput() -> Empty<Publishers.Sequence<Elements, Failure>.Output, Failure>
  func map<T>(_ transform: (Elements.Element) -> T) -> Publishers.Sequence<[T], Failure>
  func prefix(_ maxLength: Int) -> Publishers.Sequence<PrefixSequence<Elements>, Failure>
  func prefix(while predicate: (Elements.Element) -> Bool) -> Publishers.Sequence<[Elements.Element], Failure>
  func reduce<T>(_ initialResult: T, _ nextPartialResult: @escaping (T, Publishers.Sequence<Elements, Failure>.Output) -> T) -> Result<T, Failure>.Publisher
  func tryReduce<T>(_ initialResult: T, _ nextPartialResult: @escaping (T, Publishers.Sequence<Elements, Failure>.Output) throws -> T) -> Result<T, Error>.Publisher
  func replaceNil<T>(with output: T) -> Publishers.Sequence<[Publishers.Sequence<Elements, Failure>.Output], Failure> where Elements.Element == T?
  func scan<T>(_ initialResult: T, _ nextPartialResult: @escaping (T, Publishers.Sequence<Elements, Failure>.Output) -> T) -> Publishers.Sequence<[T], Failure>
  func setFailureType<E>(to error: E.Type) -> Publishers.Sequence<Elements, E> where E : Error
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Elements.Element : Equatable {
  func removeDuplicates() -> Publishers.Sequence<[Publishers.Sequence<Elements, Failure>.Output], Failure>
  func contains(_ output: Elements.Element) -> Result<Bool, Failure>.Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Failure == Never, Elements.Element : Comparable {
  func min() -> Optional<Publishers.Sequence<Elements, Failure>.Output>.Publisher
  func max() -> Optional<Publishers.Sequence<Elements, Failure>.Output>.Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Elements : Collection, Failure == Never {
  func first() -> Optional<Publishers.Sequence<Elements, Failure>.Output>.Publisher
  func output(at index: Elements.Index) -> Optional<Publishers.Sequence<Elements, Failure>.Output>.Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Elements : Collection {
  func count() -> Result<Int, Failure>.Publisher
  func output(in range: Range<Elements.Index>) -> Publishers.Sequence<[Publishers.Sequence<Elements, Failure>.Output], Failure>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Elements : BidirectionalCollection, Failure == Never {
  func last() -> Optional<Publishers.Sequence<Elements, Failure>.Output>.Publisher
  func last(where predicate: (Publishers.Sequence<Elements, Failure>.Output) -> Bool) -> Optional<Publishers.Sequence<Elements, Failure>.Output>.Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Elements : RandomAccessCollection, Failure == Never {
  func output(at index: Elements.Index) -> Optional<Publishers.Sequence<Elements, Failure>.Output>.Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Elements : RandomAccessCollection {
  func output(in range: Range<Elements.Index>) -> Publishers.Sequence<[Publishers.Sequence<Elements, Failure>.Output], Failure>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Elements : RandomAccessCollection, Failure == Never {
  func count() -> Just<Int>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Elements : RandomAccessCollection {
  func count() -> Result<Int, Failure>.Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence where Elements : RangeReplaceableCollection {
  func prepend(_ elements: Publishers.Sequence<Elements, Failure>.Output...) -> Publishers.Sequence<Elements, Failure>
  func prepend<S>(_ elements: S) -> Publishers.Sequence<Elements, Failure> where S : Sequence, Elements.Element == S.Element
  func prepend(_ publisher: Publishers.Sequence<Elements, Failure>) -> Publishers.Sequence<Elements, Failure>
  func append(_ elements: Publishers.Sequence<Elements, Failure>.Output...) -> Publishers.Sequence<Elements, Failure>
  func append<S>(_ elements: S) -> Publishers.Sequence<Elements, Failure> where S : Sequence, Elements.Element == S.Element
  func append(_ publisher: Publishers.Sequence<Elements, Failure>) -> Publishers.Sequence<Elements, Failure>
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Sequence : Equatable where Elements : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Zip : Equatable where A : Equatable, B : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Zip3 : Equatable where A : Equatable, B : Equatable, C : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Zip4 : Equatable where A : Equatable, B : Equatable, C : Equatable, D : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Output : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.Drop : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.First : Equatable where Upstream : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct Record<Output, Failure> : Publisher where Failure : Error {
  let recording: Record<Output, Failure>.Recording
  init(record: (inout Record<Output, Failure>.Recording) -> Void)
  init(recording: Record<Output, Failure>.Recording)
  init(output: [Output], completion: Subscribers.Completion<Failure>)
  struct Recording {
    typealias Input = Output
    var output: [Output] { get }
    var completion: Subscribers.Completion<Failure> { get }
    init()
    init(output: [Output], completion: Subscribers.Completion<Failure> = .finished)
    mutating func receive(_ input: Record<Output, Failure>.Recording.Input)
    mutating func receive(completion: Subscribers.Completion<Failure>)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Record : Codable where Output : Decodable, Output : Encodable, Failure : Decodable, Failure : Encodable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Record.Recording : Codable where Output : Decodable, Output : Encodable, Failure : Decodable, Failure : Encodable {
  func encode(into encoder: Encoder) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol Scheduler {
  associatedtype SchedulerTimeType : Strideable where Self.SchedulerTimeType.Stride : SchedulerTimeIntervalConvertible
  associatedtype SchedulerOptions
  var now: Self.SchedulerTimeType { get }
  var minimumTolerance: Self.SchedulerTimeType.Stride { get }
  func schedule(options: Self.SchedulerOptions?, _ action: @escaping () -> Void)
  func schedule(after date: Self.SchedulerTimeType, tolerance: Self.SchedulerTimeType.Stride, options: Self.SchedulerOptions?, _ action: @escaping () -> Void)
  func schedule(after date: Self.SchedulerTimeType, interval: Self.SchedulerTimeType.Stride, tolerance: Self.SchedulerTimeType.Stride, options: Self.SchedulerOptions?, _ action: @escaping () -> Void) -> Cancellable
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Scheduler {
  func schedule(after date: Self.SchedulerTimeType, _ action: @escaping () -> Void)
  func schedule(_ action: @escaping () -> Void)
  func schedule(after date: Self.SchedulerTimeType, tolerance: Self.SchedulerTimeType.Stride, _ action: @escaping () -> Void)
  func schedule(after date: Self.SchedulerTimeType, interval: Self.SchedulerTimeType.Stride, tolerance: Self.SchedulerTimeType.Stride, _ action: @escaping () -> Void) -> Cancellable
  func schedule(after date: Self.SchedulerTimeType, interval: Self.SchedulerTimeType.Stride, _ action: @escaping () -> Void) -> Cancellable
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol SchedulerTimeIntervalConvertible {
  static func seconds(_ s: Int) -> Self
  static func seconds(_ s: Double) -> Self
  static func milliseconds(_ ms: Int) -> Self
  static func microseconds(_ us: Int) -> Self
  static func nanoseconds(_ ns: Int) -> Self
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol Subject : AnyObject, Publisher {
  func send(_ value: Self.Output)
  func send(completion: Subscribers.Completion<Self.Failure>)
  func send(subscription: Subscription)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subject where Self.Output == Void {
  func send()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol Subscriber : CustomCombineIdentifierConvertible {
  associatedtype Input
  associatedtype Failure : Error
  func receive(subscription: Subscription)
  func receive(_ input: Self.Input) -> Subscribers.Demand
  func receive(completion: Subscribers.Completion<Self.Failure>)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subscriber where Self.Input == Void {
  func receive() -> Subscribers.Demand
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
enum Subscribers {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subscribers {
  final class Sink<Input, Failure> : Subscriber, Cancellable, CustomStringConvertible, CustomReflectable, CustomPlaygroundDisplayConvertible where Failure : Error {
    final var receiveValue: (Input) -> Void { get }
    final var receiveCompletion: (Subscribers.Completion<Failure>) -> Void { get }
    init(receiveCompletion: @escaping ((Subscribers.Completion<Failure>) -> Void), receiveValue: @escaping ((Input) -> Void))
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subscribers {
  @frozen enum Completion<Failure> where Failure : Error {
    case finished
    case failure(Failure)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subscribers {
  @frozen struct Demand : Equatable, Comparable, Hashable, Codable, CustomStringConvertible {
    @usableFromInline
    let rawValue: UInt
    @inline(__always) @inlinable init(rawValue: UInt)
    static let unlimited: Subscribers.Demand
    static let none: Subscribers.Demand
    @inline(__always) @inlinable static func max(_ value: Int) -> Subscribers.Demand
    @inline(__always) @inlinable static func + (lhs: Subscribers.Demand, rhs: Subscribers.Demand) -> Subscribers.Demand
    @inline(__always) @inlinable static func += (lhs: inout Subscribers.Demand, rhs: Subscribers.Demand)
    @inline(__always) @inlinable static func + (lhs: Subscribers.Demand, rhs: Int) -> Subscribers.Demand
    @inline(__always) @inlinable static func += (lhs: inout Subscribers.Demand, rhs: Int)
    static func * (lhs: Subscribers.Demand, rhs: Int) -> Subscribers.Demand
    @inline(__always) @inlinable static func *= (lhs: inout Subscribers.Demand, rhs: Int)
    @inline(__always) @inlinable static func - (lhs: Subscribers.Demand, rhs: Subscribers.Demand) -> Subscribers.Demand
    @inline(__always) @inlinable static func -= (lhs: inout Subscribers.Demand, rhs: Subscribers.Demand)
    @inline(__always) @inlinable static func - (lhs: Subscribers.Demand, rhs: Int) -> Subscribers.Demand
    @inline(__always) @inlinable static func -= (lhs: inout Subscribers.Demand, rhs: Int)
    @inline(__always) @inlinable static func > (lhs: Subscribers.Demand, rhs: Int) -> Bool
    @inline(__always) @inlinable static func >= (lhs: Subscribers.Demand, rhs: Int) -> Bool
    @inline(__always) @inlinable static func > (lhs: Int, rhs: Subscribers.Demand) -> Bool
    @inline(__always) @inlinable static func >= (lhs: Int, rhs: Subscribers.Demand) -> Bool
    @inline(__always) @inlinable static func < (lhs: Subscribers.Demand, rhs: Int) -> Bool
    @inline(__always) @inlinable static func < (lhs: Int, rhs: Subscribers.Demand) -> Bool
    @inline(__always) @inlinable static func <= (lhs: Subscribers.Demand, rhs: Int) -> Bool
    @inline(__always) @inlinable static func <= (lhs: Int, rhs: Subscribers.Demand) -> Bool
    @inline(__always) @inlinable static func == (lhs: Subscribers.Demand, rhs: Int) -> Bool
    @inline(__always) @inlinable static func != (lhs: Subscribers.Demand, rhs: Int) -> Bool
    @inline(__always) @inlinable static func == (lhs: Int, rhs: Subscribers.Demand) -> Bool
    @inline(__always) @inlinable static func != (lhs: Int, rhs: Subscribers.Demand) -> Bool
    @inline(__always) @inlinable var max: Int? { get }
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subscribers {
  final class Assign<Root, Input> : Subscriber, Cancellable, CustomStringConvertible, CustomReflectable, CustomPlaygroundDisplayConvertible {
    final var object: Root? { get }
    final let keyPath: ReferenceWritableKeyPath<Root, Input>
    init(object: Root, keyPath: ReferenceWritableKeyPath<Root, Input>)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subscribers.Completion : Equatable where Failure : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subscribers.Completion : Hashable where Failure : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subscribers.Completion : Encodable where Failure : Encodable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subscribers.Completion : Decodable where Failure : Decodable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol Subscription : Cancellable, CustomCombineIdentifierConvertible {
  func request(_ demand: Subscribers.Demand)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
enum Subscriptions {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Subscriptions {
  static var empty: Subscription { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol TopLevelDecoder {
  associatedtype Input
  func decode<T>(_ type: T.Type, from: Self.Input) throws -> T where T : Decodable
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol TopLevelEncoder {
  associatedtype Output
  func encode<T>(_ value: T) throws -> Self.Output where T : Encodable
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
protocol _Introspection : AnyObject {
  func willReceive<P, S>(publisher: P, subscriber: S) where P : Publisher, S : Subscriber, P.Failure == S.Failure, P.Output == S.Input
  func didReceive<P, S>(publisher: P, subscriber: S) where P : Publisher, S : Subscriber, P.Failure == S.Failure, P.Output == S.Input
  func willReceive<S>(subscriber: S, subscription: Subscription) where S : Subscriber
  func didReceive<S>(subscriber: S, subscription: Subscription) where S : Subscriber
  func willReceive<S>(subscriber: S, input: S.Input) where S : Subscriber
  func didReceive<S>(subscriber: S, input: S.Input, resultingDemand: Subscribers.Demand) where S : Subscriber
  func willReceive<S>(subscriber: S, completion: Subscribers.Completion<S.Failure>) where S : Subscriber
  func didReceive<S>(subscriber: S, completion: Subscribers.Completion<S.Failure>) where S : Subscriber
  func willRequest(subscription: Subscription, _ demand: Subscribers.Demand)
  func didRequest(subscription: Subscription, _ demand: Subscribers.Demand)
  func willCancel(subscription: Subscription)
  func didCancel(subscription: Subscription)
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension _Introspection {
  func willReceive<P, S>(publisher: P, subscriber: S) where P : Publisher, S : Subscriber, P.Failure == S.Failure, P.Output == S.Input
  func didReceive<P, S>(publisher: P, subscriber: S) where P : Publisher, S : Subscriber, P.Failure == S.Failure, P.Output == S.Input
  func willReceive<S>(subscriber: S, subscription: Subscription) where S : Subscriber
  func didReceive<S>(subscriber: S, subscription: Subscription) where S : Subscriber
  func willReceive<S>(subscriber: S, input: S.Input) where S : Subscriber
  func didReceive<S>(subscriber: S, input: S.Input, resultingDemand: Subscribers.Demand) where S : Subscriber
  func willReceive<S>(subscriber: S, completion: Subscribers.Completion<S.Failure>) where S : Subscriber
  func didReceive<S>(subscriber: S, completion: Subscribers.Completion<S.Failure>) where S : Subscriber
  func willRequest(subscription: Subscription, _ demand: Subscribers.Demand)
  func didRequest(subscription: Subscription, _ demand: Subscribers.Demand)
  func willCancel(subscription: Subscription)
  func didCancel(subscription: Subscription)
  func enable()
  func disable()
  var isEnabled: Bool { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Optional {
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  var publisher: Optional<Wrapped>.Publisher { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Publisher : Publisher {
    let output: Optional<Wrapped>.Publisher.Output?
    init(_ output: Optional<Wrapped>.Publisher.Output?)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Result {
  var publisher: Result<Success, Failure>.Publisher { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Publisher : Publisher {
    let result: Result<Result<Success, Failure>.Publisher.Output, Failure>
    init(_ result: Result<Result<Success, Failure>.Publisher.Output, Failure>)
    init(_ output: Result<Success, Failure>.Publisher.Output)
    init(_ failure: Failure)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Sequence {
  var publisher: Publishers.Sequence<Self, Never> { get }
}

