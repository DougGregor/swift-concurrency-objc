
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct AccessibilityActionKind : Equatable {
  static let `default`: AccessibilityActionKind
  static let escape: AccessibilityActionKind
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  @available(macOS, unavailable)
  static let magicTap: AccessibilityActionKind
  init(named name: Text)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum AccessibilityAdjustmentDirection {
  case increment
  case decrement
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AccessibilityAdjustmentDirection : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AccessibilityAdjustmentDirection : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct AccessibilityAttachmentModifier : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct AccessibilityChildBehavior : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AccessibilityChildBehavior {
  static let ignore: AccessibilityChildBehavior
  static let contain: AccessibilityChildBehavior
  static let combine: AccessibilityChildBehavior
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen enum AccessibilityLabeledPairRole {
  case label
  case content
}

extension AccessibilityLabeledPairRole : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct AccessibilityTraits : SetAlgebra {
  static let isButton: AccessibilityTraits
  static let isHeader: AccessibilityTraits
  static let isSelected: AccessibilityTraits
  static let isLink: AccessibilityTraits
  static let isSearchField: AccessibilityTraits
  static let isImage: AccessibilityTraits
  static let playsSound: AccessibilityTraits
  static let isKeyboardKey: AccessibilityTraits
  static let isStaticText: AccessibilityTraits
  static let isSummaryElement: AccessibilityTraits
  static let updatesFrequently: AccessibilityTraits
  static let startsMediaSession: AccessibilityTraits
  static let allowsDirectInteraction: AccessibilityTraits
  static let causesPageTurn: AccessibilityTraits
  static let isModal: AccessibilityTraits
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
struct ActionSheet {
  init(title: Text, message: Text? = nil, buttons: [ActionSheet.Button] = [.cancel()])
  typealias Button = Alert.Button
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct Alert {
  init(title: Text, message: Text? = nil, dismissButton: Alert.Button? = nil)
  init(title: Text, message: Text? = nil, primaryButton: Alert.Button, secondaryButton: Alert.Button)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(macOS, unavailable)
  static func sideBySideButtons(title: Text, message: Text? = nil, primaryButton: Alert.Button, secondaryButton: Alert.Button) -> Alert
  struct Button {
    static func `default`(_ label: Text, action: (() -> Void)? = {}) -> Alert.Button
    static func cancel(_ label: Text, action: (() -> Void)? = {}) -> Alert.Button
    static func cancel(_ action: (() -> Void)? = {}) -> Alert.Button
    static func destructive(_ label: Text, action: (() -> Void)? = {}) -> Alert.Button
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Alignment : Equatable {
  var horizontal: HorizontalAlignment
  var vertical: VerticalAlignment
  @inlinable init(horizontal: HorizontalAlignment, vertical: VerticalAlignment)
  static let center: Alignment
  static let leading: Alignment
  static let trailing: Alignment
  static let top: Alignment
  static let bottom: Alignment
  static let topLeading: Alignment
  static let topTrailing: Alignment
  static let bottomLeading: Alignment
  static let bottomTrailing: Alignment
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol AlignmentID {
  static func defaultValue(in context: ViewDimensions) -> CGFloat
  static func _combineExplicit(childValue: CGFloat, _ n: Int, into parentValue: inout CGFloat?)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AlignmentID {
  static func _combineExplicit(childValue: CGFloat, _ n: Int, into parentValue: inout CGFloat?)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
@frozen struct AlignmentKey : Hashable, Comparable {
  let bits: UInt
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Anchor<Value> {
  let box: AnchorValueBoxBase<Value>
  @frozen struct Source {
    var box: AnchorBoxBase<Value>
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Anchor.Source {
  init<T>(_ array: [Anchor<T>.Source]) where Value == [T]
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Anchor.Source {
  init<T>(_ anchor: Anchor<T>.Source?) where Value == T?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Anchor.Source where Value == CGPoint {
  static func point(_ p: CGPoint) -> Anchor<Value>.Source
  static func unitPoint(_ p: UnitPoint) -> Anchor<Value>.Source
  static var topLeading: Anchor<CGPoint>.Source { get }
  static var top: Anchor<CGPoint>.Source { get }
  static var topTrailing: Anchor<CGPoint>.Source { get }
  static var leading: Anchor<CGPoint>.Source { get }
  static var center: Anchor<CGPoint>.Source { get }
  static var trailing: Anchor<CGPoint>.Source { get }
  static var bottomLeading: Anchor<CGPoint>.Source { get }
  static var bottom: Anchor<CGPoint>.Source { get }
  static var bottomTrailing: Anchor<CGPoint>.Source { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Anchor.Source where Value == CGRect {
  static func rect(_ r: CGRect) -> Anchor<Value>.Source
  static var bounds: Anchor<CGRect>.Source { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnchorBoxBase<T> {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnchorValueBoxBase<T> {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Angle {
  var radians: Double
  @inlinable var degrees: Double
  @inlinable init()
  @inlinable init(radians: Double)
  @inlinable init(degrees: Double)
  @inlinable static func radians(_ radians: Double) -> Angle
  @inlinable static func degrees(_ degrees: Double) -> Angle
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Angle : Hashable, Comparable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Angle : Animatable, _VectorMath {
  @inlinable static var zero: Angle { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct AngularGradient : ShapeStyle, View {
  var gradient: Gradient
  var center: UnitPoint
  var startAngle: Angle
  var endAngle: Angle
  init(gradient: Gradient, center: UnitPoint, startAngle: Angle = .zero, endAngle: Angle = .zero)
  init(gradient: Gradient, center: UnitPoint, angle: Angle = .zero)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol Animatable {
  associatedtype AnimatableData : VectorArithmetic
  var animatableData: Self.AnimatableData { get set }
  static func _makeAnimatable(value: inout _GraphValue<Self>, inputs: _GraphInputs)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animatable where Self : VectorArithmetic {
  var animatableData: Self
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animatable where Self.AnimatableData == EmptyAnimatableData {
  var animatableData: EmptyAnimatableData
  static func _makeAnimatable(value: inout _GraphValue<Self>, inputs: _GraphInputs)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animatable {
  static func _makeAnimatable(value: inout _GraphValue<Self>, inputs: _GraphInputs)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol AnimatableModifier : Animatable, ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnimatableModifier {
  static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct AnimatablePair<First, Second> : VectorArithmetic where First : VectorArithmetic, Second : VectorArithmetic {
  var first: First
  var second: Second
  @inlinable init(_ first: First, _ second: Second)
  @inlinable subscript() -> (First, Second)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Animation : Equatable {
  var box: AnimationBoxBase
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  static let `default`: Animation
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  func repeatCount(_ repeatCount: Int, autoreverses: Bool = true) -> Animation
  func repeatForever(autoreverses: Bool = true) -> Animation
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  static func easeInOut(duration: Double) -> Animation
  static var easeInOut: Animation { get }
  static func easeIn(duration: Double) -> Animation
  static var easeIn: Animation { get }
  static func easeOut(duration: Double) -> Animation
  static var easeOut: Animation { get }
  static func linear(duration: Double) -> Animation
  static var linear: Animation { get }
  static func timingCurve(_ c0x: Double, _ c0y: Double, _ c1x: Double, _ c1y: Double, duration: Double = 0.35) -> Animation
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  static func interpolatingSpring(mass: Double = 1.0, stiffness: Double, damping: Double, initialVelocity: Double = 0.0) -> Animation
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  func delay(_ delay: Double) -> Animation
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  func speed(_ speed: Double) -> Animation
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Animation {
  static func spring(response: Double = 0.55, dampingFraction: Double = 0.825, blendDuration: Double = 0) -> Animation
  static func interactiveSpring(response: Double = 0.15, dampingFraction: Double = 0.86, blendDuration: Double = 0.25) -> Animation
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnimationBoxBase {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnyColorBox {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnyFontBox {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct AnyGesture<Value> : Gesture {
  var storage: AnyGestureStorageBase<Value>
  init<T>(_ gesture: T) where Value == T.Value, T : Gesture
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnyGestureStorageBase<Value> {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnyImageProviderBox {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnyLocation<Value> : AnyLocationBase {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnyLocationBase {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnyTextModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnyTextStorage {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct AnyTransition {
  let box: AnyTransitionBox
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  static var slide: AnyTransition { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  static func offset(_ offset: CGSize) -> AnyTransition
  static func offset(x: CGFloat = 0, y: CGFloat = 0) -> AnyTransition
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  static var scale: AnyTransition { get }
  static func scale(scale: CGFloat, anchor: UnitPoint = .center) -> AnyTransition
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  static let opacity: AnyTransition
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  func combined(with other: AnyTransition) -> AnyTransition
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  static func modifier<E>(active: E, identity: E) -> AnyTransition where E : ViewModifier
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  static let identity: AnyTransition
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  static func move(edge: Edge) -> AnyTransition
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  static func asymmetric(insertion: AnyTransition, removal: AnyTransition) -> AnyTransition
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension AnyTransition {
  func animation(_ animation: Animation?) -> AnyTransition
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnyTransitionBox {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct AnyView : View {
  var storage: AnyViewStorageBase
  init<V>(_ view: V) where V : View
  @_alwaysEmitIntoClient init<V>(erasing view: V) where V : View
  init?(_fromValue value: Any)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
class AnyViewStorageBase {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol App {
  associatedtype Body : Scene
  @SceneBuilder var body: Self.Body { get }
  init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension App {
  static func main()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen @propertyWrapper struct AppStorage<Value> : DynamicProperty {
  @usableFromInline
  var location: UserDefaultLocation<Value>
  var wrappedValue: Value { get nonmutating set }
  var projectedValue: Binding<Value> { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension AppStorage {
  init(wrappedValue: Value, _ key: String, store: UserDefaults? = nil) where Value == Bool
  init(wrappedValue: Value, _ key: String, store: UserDefaults? = nil) where Value == Int
  init(wrappedValue: Value, _ key: String, store: UserDefaults? = nil) where Value == Double
  init(wrappedValue: Value, _ key: String, store: UserDefaults? = nil) where Value == String
  init(wrappedValue: Value, _ key: String, store: UserDefaults? = nil) where Value == URL
  init(wrappedValue: Value, _ key: String, store: UserDefaults? = nil) where Value == Data
  init(wrappedValue: Value, _ key: String, store: UserDefaults? = nil) where Value : RawRepresentable, Value.RawValue == Int
  init(wrappedValue: Value, _ key: String, store: UserDefaults? = nil) where Value : RawRepresentable, Value.RawValue == String
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension AppStorage where Value : ExpressibleByNilLiteral {
  init(_ key: String, store: UserDefaults? = nil) where Value == Bool?
  init(_ key: String, store: UserDefaults? = nil) where Value == Int?
  init(_ key: String, store: UserDefaults? = nil) where Value == Double?
  init(_ key: String, store: UserDefaults? = nil) where Value == String?
  init(_ key: String, store: UserDefaults? = nil) where Value == URL?
  init(_ key: String, store: UserDefaults? = nil) where Value == Data?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen enum Axis : Int8, CaseIterable {
  case horizontal
  case vertical
  @frozen struct Set : OptionSet {
    static let horizontal: Axis.Set
    static let vertical: Axis.Set
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Axis : CustomStringConvertible {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Axis : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Axis : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Axis : RawRepresentable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct BackgroundStyle {
  @inlinable init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension BackgroundStyle : ShapeStyle {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen @propertyWrapper @dynamicMemberLookup struct Binding<Value> {
  var transaction: Transaction
  var location: AnyLocation<Value>
  var _value: Value
  init(get: @escaping () -> Value, set: @escaping (Value) -> Void)
  init(get: @escaping () -> Value, set: @escaping (Value, Transaction) -> Void)
  static func constant(_ value: Value) -> Binding<Value>
  var wrappedValue: Value { get nonmutating set }
  var projectedValue: Binding<Value> { get }
  subscript<Subject>(dynamicMember keyPath: WritableKeyPath<Value, Subject>) -> Binding<Subject> { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Binding {
  init<V>(_ base: Binding<V>) where Value == V?
  init?(_ base: Binding<Value?>)
  init<V>(_ base: Binding<V>) where Value == AnyHashable, V : Hashable
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Binding {
  func transaction(_ transaction: Transaction) -> Binding<Value>
  func animation(_ animation: Animation? = .default) -> Binding<Value>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Binding : DynamicProperty {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum BlendMode {
  case normal
  case multiply
  case screen
  case overlay
  case darken
  case lighten
  case colorDodge
  case colorBurn
  case softLight
  case hardLight
  case difference
  case exclusion
  case hue
  case saturation
  case color
  case luminosity
  case sourceAtop
  case destinationOver
  case destinationOut
  case plusDarker
  case plusLighter
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension BlendMode : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension BlendMode : Hashable {
}

@available(macOS 10.15, tvOS 13.0, watchOS 7.0, *)
@available(iOS, unavailable)
struct BorderedButtonStyle : PrimitiveButtonStyle {
  init()
  @available(watchOS 7.0, *)
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  init(tint: Color)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct Button<Label> : View where Label : View {
  init(action: @escaping () -> Void, @ViewBuilder label: () -> Label)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Button where Label == Text {
  init(_ titleKey: LocalizedStringKey, action: @escaping () -> Void)
  @_disfavoredOverload init<S>(_ title: S, action: @escaping () -> Void) where S : StringProtocol
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Button where Label == PrimitiveButtonStyleConfiguration.Label {
  @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
  init(_ configuration: PrimitiveButtonStyleConfiguration)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol ButtonStyle {
  associatedtype Body : View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = ButtonStyleConfiguration
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct ButtonStyleConfiguration {
  struct Label : View {
  }
  let label: ButtonStyleConfiguration.Label
  let isPressed: Bool
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct CanTransitionTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Capsule : Shape {
  var style: RoundedCornerStyle
  @inlinable init(style: RoundedCornerStyle = .circular)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Capsule : InsettableShape {
  @usableFromInline
  @frozen struct _Inset : InsettableShape {
    @usableFromInline
    var amount: CGFloat
    @inlinable init(amount: CGFloat)
  }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct CarouselListStyle : ListStyle {
  init()
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct CarouselTabViewStyle : TabViewStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Circle : Shape {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Circle : InsettableShape {
  @usableFromInline
  @frozen struct _Inset : InsettableShape {
    @usableFromInline
    var amount: CGFloat
    @inlinable init(amount: CGFloat)
  }
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct CircularGaugeStyle : GaugeStyle {
  init()
  init(tint: Color)
  init(tint: Gradient)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct CircularProgressViewStyle : ProgressViewStyle {
  init()
  init(tint: Color)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Color : Hashable, CustomStringConvertible {
  var provider: AnyColorBox
  @available(iOS 14.0, macOS 11, tvOS 14.0, watchOS 7.0, *)
  var cgColor: CGColor? { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Color {
  init(_ cgColor: CGColor)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  init(_ name: String, bundle: Bundle? = nil)
  static var _mainNamedBundle: Bundle?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  static var accentColor: Color { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  enum RGBColorSpace {
    case sRGB
    case sRGBLinear
    case displayP3
  }
  init(_ colorSpace: Color.RGBColorSpace = .sRGB, red: Double, green: Double, blue: Double, opacity: Double = 1)
  init(_ colorSpace: Color.RGBColorSpace = .sRGB, white: Double, opacity: Double = 1)
  init(hue: Double, saturation: Double, brightness: Double, opacity: Double = 1)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  static var _background: Color { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  func opacity(_ opacity: Double) -> Color
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color : ShapeStyle {
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension Color {
  init(_ color: UIColor)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  static let clear: Color
  static let black: Color
  static let white: Color
  static let gray: Color
  static let red: Color
  static let green: Color
  static let blue: Color
  static let orange: Color
  static let yellow: Color
  static let pink: Color
  static let purple: Color
  static let primary: Color
  static let secondary: Color
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color.RGBColorSpace : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color.RGBColorSpace : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum ColorRenderingMode {
  case nonLinear
  case linear
  case extendedLinear
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ColorRenderingMode : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ColorRenderingMode : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum ColorScheme : CaseIterable {
  case light
  case dark
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ColorScheme : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ColorScheme : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum ColorSchemeContrast : CaseIterable {
  case standard
  case increased
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ColorSchemeContrast : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ColorSchemeContrast : Hashable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct ContainerRelativeShape : Shape {
  @inlinable init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ContainerRelativeShape : InsettableShape {
  @usableFromInline
  @frozen struct _Inset : InsettableShape {
    @usableFromInline
    var amount: CGFloat
    @inlinable init(amount: CGFloat)
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen enum ContentMode : Hashable, CaseIterable {
  case fit
  case fill
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum ContentSizeCategory : Hashable, CaseIterable {
  case extraSmall
  case small
  case medium
  case large
  case extraLarge
  case extraExtraLarge
  case extraExtraExtraLarge
  case accessibilityMedium
  case accessibilityLarge
  case accessibilityExtraLarge
  case accessibilityExtraExtraLarge
  case accessibilityExtraExtraExtraLarge
  @available(iOS 13.4, macOS 10.15.4, tvOS 13.4, watchOS 6.2, *)
  var isAccessibilityCategory: Bool { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ContentSizeCategory {
  @_alwaysEmitIntoClient static func < (lhs: ContentSizeCategory, rhs: ContentSizeCategory) -> Bool
  @_alwaysEmitIntoClient static func <= (lhs: ContentSizeCategory, rhs: ContentSizeCategory) -> Bool
  @_alwaysEmitIntoClient static func > (lhs: ContentSizeCategory, rhs: ContentSizeCategory) -> Bool
  @_alwaysEmitIntoClient static func >= (lhs: ContentSizeCategory, rhs: ContentSizeCategory) -> Bool
}

@available(iOS, introduced: 13.0, deprecated: 100000.0, message: "Use `contextMenu(menuItems:)` instead.")
@available(macOS, introduced: 10.15, deprecated: 100000.0, message: "Use `contextMenu(menuItems:)` instead.")
@available(tvOS, unavailable)
@available(watchOS, introduced: 6.0, deprecated: 7.0)
struct ContextMenu<MenuItems> where MenuItems : View {
  init(@ViewBuilder menuItems: () -> MenuItems)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum CoordinateSpace {
  case global
  case local
  case named(AnyHashable)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension CoordinateSpace {
  var isGlobal: Bool { get }
  var isLocal: Bool { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension CoordinateSpace : Equatable, Hashable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol CustomizableToolbarContent : ToolbarContent where Self.Body : CustomizableToolbarContent {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct DefaultButtonStyle : PrimitiveButtonStyle {
  init()
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct DefaultGaugeStyle : GaugeStyle {
  init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct DefaultLabelStyle : LabelStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct DefaultListStyle : ListStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
struct DefaultNavigationViewStyle : NavigationViewStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct DefaultPickerStyle : PickerStyle {
  init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct DefaultProgressViewStyle : ProgressViewStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
struct DefaultTabViewStyle : TabViewStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct DefaultTextFieldStyle : TextFieldStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct DefaultToggleStyle : ToggleStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct DepthTraitKey : _ViewTraitKey {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
enum DigitalCrownRotationalSensitivity {
  case low
  case medium
  case high
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension DigitalCrownRotationalSensitivity : Equatable {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension DigitalCrownRotationalSensitivity : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct Divider : View {
  init()
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
struct DragGesture : Gesture {
  var minimumDistance: CGFloat
  var coordinateSpace: CoordinateSpace
  init(minimumDistance: CGFloat = 10, coordinateSpace: CoordinateSpace = .local)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol DynamicProperty {
  static func _makeProperty<V>(in buffer: inout _DynamicPropertyBuffer, container: _GraphValue<V>, fieldOffset: Int, inputs: inout _GraphInputs)
  mutating func update()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension DynamicProperty {
  static func _makeProperty<V>(in buffer: inout _DynamicPropertyBuffer, container: _GraphValue<V>, fieldOffset: Int, inputs: inout _GraphInputs)
  mutating func update()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol DynamicViewContent : View {
  associatedtype Data : Collection
  var data: Self.Data { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension DynamicViewContent {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  func onInsert(of supportedContentTypes: [UTType], perform action: @escaping (Int, [NSItemProvider]) -> Void) -> some DynamicViewContent
  
  @available(iOS, introduced: 13.0, deprecated: 100000.0, message: "Provide `UTType`s as the `supportedContentTypes` instead.")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, message: "Provide `UTType`s as the `supportedContentTypes` instead.")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, message: "Provide `UTType`s as the `supportedContentTypes` instead.")
  @available(watchOS, introduced: 6.0, deprecated: 100000.0, message: "Provide `UTType`s as the `supportedContentTypes` instead.")
  func onInsert(of acceptedTypeIdentifiers: [String], perform action: @escaping (Int, [NSItemProvider]) -> Void) -> some DynamicViewContent
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension DynamicViewContent {
  @inlinable func onMove(perform action: Optional<(IndexSet, Int) -> Void>) -> some DynamicViewContent
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension DynamicViewContent {
  @inlinable func onDelete(perform action: Optional<(IndexSet) -> Void>) -> some DynamicViewContent
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen enum Edge : Int8, CaseIterable {
  case top
  case leading
  case bottom
  case trailing
  @frozen struct Set : OptionSet {
    static let top: Edge.Set
    static let leading: Edge.Set
    static let bottom: Edge.Set
    static let trailing: Edge.Set
    static let all: Edge.Set
    static let horizontal: Edge.Set
    static let vertical: Edge.Set
    init(_ e: Edge)
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Edge : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Edge : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Edge : RawRepresentable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct EdgeInsets : Equatable {
  var top: CGFloat
  var leading: CGFloat
  var bottom: CGFloat
  var trailing: CGFloat
  @inlinable init(top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat)
  @inlinable init()
}

extension EdgeInsets {
  @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
  @usableFromInline
  init(_all: CGFloat)
}

extension EdgeInsets {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EdgeInsets : Animatable, _VectorMath {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Ellipse : Shape {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Ellipse : InsettableShape {
  @usableFromInline
  @frozen struct _Inset : InsettableShape {
    @usableFromInline
    var amount: CGFloat
    @inlinable init(amount: CGFloat)
  }
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct EllipticalListStyle : ListStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct EmptyAnimatableData : VectorArithmetic {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct EmptyModifier : ViewModifier {
  static let identity: EmptyModifier
  @inlinable init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension EmptyModifier : _SceneModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct EmptyView : View {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen @propertyWrapper struct Environment<Value> : DynamicProperty {
  @usableFromInline
  @frozen enum Content {
    case keyPath(KeyPath<EnvironmentValues, Value>)
    case value(Value)
  }
  @usableFromInline
  var content: Environment<Value>.Content
  @inlinable init(_ keyPath: KeyPath<EnvironmentValues, Value>)
  @inlinable var wrappedValue: Value { get }
  @usableFromInline
  func error() -> Never
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol EnvironmentKey {
  associatedtype Value
  static var defaultValue: Self.Value { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen @propertyWrapper struct EnvironmentObject<ObjectType> : DynamicProperty where ObjectType : ObservableObject {
  @dynamicMemberLookup @frozen struct Wrapper {
    let root: ObjectType
    subscript<Subject>(dynamicMember keyPath: ReferenceWritableKeyPath<ObjectType, Subject>) -> Binding<Subject> { get }
  }
  @inlinable var wrappedValue: ObjectType { get }
  @usableFromInline
  var _store: ObjectType?
  @usableFromInline
  var _seed: Int
  var projectedValue: EnvironmentObject<ObjectType>.Wrapper { get }
  @usableFromInline
  func error() -> Never
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct EnvironmentValues : CustomStringConvertible {
  init()
  subscript<K>(key: K.Type) -> K.Value where K : EnvironmentKey
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension EnvironmentValues {
  var redactionReasons: RedactionReasons
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var accessibilityDifferentiateWithoutColor: Bool { get }
  var _accessibilityDifferentiateWithoutColor: Bool
  var accessibilityReduceTransparency: Bool { get }
  var _accessibilityReduceTransparency: Bool
  var accessibilityReduceMotion: Bool { get }
  var _accessibilityReduceMotion: Bool
  var accessibilityInvertColors: Bool { get }
  var _accessibilityInvertColors: Bool
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension EnvironmentValues {
  var accessibilityShowButtonShapes: Bool { get }
  var _accessibilityShowButtonShapes: Bool
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var multilineTextAlignment: TextAlignment
  var truncationMode: Text.TruncationMode
  var lineSpacing: CGFloat
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  @available(*, deprecated, renamed: "lineHeightMultiple")
  var _lineHeightMultiple: CGFloat
  var allowsTightening: Bool
  var lineLimit: Int?
  var minimumScaleFactor: CGFloat
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  var textCase: Text.Case?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var sizeCategory: ContentSizeCategory
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  @usableFromInline
  var accentColor: Color?
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension EnvironmentValues {
  var scenePhase: ScenePhase
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var defaultMinListRowHeight: CGFloat
  var defaultMinListHeaderHeight: CGFloat?
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  var _plainListSectionSpacing: CGFloat?
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension EnvironmentValues {
  var openURL: OpenURLAction { get }
  var _openURL: OpenURLAction
}

extension EnvironmentValues {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  var _openSensitiveURL: OpenURLAction
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var layoutDirection: LayoutDirection
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  @usableFromInline
  var defaultAppStorageDefaults: UserDefaults
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
  var presentationMode: Binding<PresentationMode> { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var _layoutCorrectnessAtTheExpenseOfSpeed: Bool
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var font: Font?
  var displayScale: CGFloat
  @available(macOS 11.0, *)
  var imageScale: Image.Scale
  var pixelLength: CGFloat { get }
  var legibilityWeight: LegibilityWeight?
  var locale: Locale
  var calendar: Calendar
  var timeZone: TimeZone
  var colorScheme: ColorScheme
  var colorSchemeContrast: ColorSchemeContrast { get }
  var _colorSchemeContrast: ColorSchemeContrast
}

extension EnvironmentValues {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  var _deviceVariant: _DeviceVariant
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var undoManager: UndoManager? { get }
}

@available(tvOS 14.0, watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
extension EnvironmentValues {
  var resetFocus: ResetFocusAction { get }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension EnvironmentValues {
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  var defaultWheelPickerItemHeight: CGFloat
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  @usableFromInline
  var textContentType: String?
}

extension EnvironmentValues {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var managedObjectContext: NSManagedObjectContext
}

extension EnvironmentValues {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  var isFocused: Bool { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var accessibilityEnabled: Bool
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  @usableFromInline
  var foregroundColor: Color?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentValues {
  var isEnabled: Bool
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol EnvironmentalModifier : ViewModifier where Self.Body == Never {
  associatedtype ResolvedModifier : ViewModifier
  func resolve(in environment: EnvironmentValues) -> Self.ResolvedModifier
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension EnvironmentalModifier {
  static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct EquatableView<Content> : View where Content : Equatable, Content : View {
  var content: Content
  @inlinable init(content: Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct EventModifiers : OptionSet {
  static let capsLock: EventModifiers
  static let shift: EventModifiers
  static let control: EventModifiers
  static let option: EventModifiers
  static let command: EventModifiers
  static let numericPad: EventModifiers
  static let function: EventModifiers
  static let all: EventModifiers
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct ExclusiveGesture<First, Second> : Gesture where First : Gesture, Second : Gesture {
  var first: First
  var second: Second
  @inlinable init(_ first: First, _ second: Second)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ExclusiveGesture.Value : Equatable where First.Value : Equatable, Second.Value : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@propertyWrapper struct FetchRequest<Result> : DynamicProperty where Result : NSFetchRequestResult {
  var wrappedValue: FetchedResults<Result> { get }
  init(entity: NSEntityDescription, sortDescriptors: [NSSortDescriptor], predicate: NSPredicate? = nil, animation: Animation? = nil)
  init(fetchRequest: NSFetchRequest<Result>, animation: Animation? = nil)
  init(fetchRequest: NSFetchRequest<Result>, transaction: Transaction)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension FetchRequest where Result : NSManagedObject {
  init(sortDescriptors: [NSSortDescriptor], predicate: NSPredicate? = nil, animation: Animation? = nil)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct FetchedResults<Result> : RandomAccessCollection where Result : NSFetchRequestResult {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct FillStyle : Equatable {
  var isEOFilled: Bool
  var isAntialiased: Bool
  init(eoFill: Bool = false, antialiased: Bool = true)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct FixedRoundedRect : Equatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@propertyWrapper struct FocusedBinding<Value> : DynamicProperty {
  @usableFromInline
  @frozen enum Content {
    case keyPath(KeyPath<FocusedValues, Binding<Value>?>)
    case value(Binding<Value>?)
  }
  @usableFromInline
  var content: FocusedBinding<Value>.Content
  init(_ keyPath: KeyPath<FocusedValues, Binding<Value>?>)
  @inlinable var wrappedValue: Value? { get nonmutating set }
  var projectedValue: Binding<Value?> { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@propertyWrapper struct FocusedValue<Value> : DynamicProperty {
  @usableFromInline
  @frozen enum Content {
    case keyPath(KeyPath<FocusedValues, Value?>)
    case value(Value?)
  }
  @usableFromInline
  var content: FocusedValue<Value>.Content
  init(_ keyPath: KeyPath<FocusedValues, Value?>)
  @inlinable var wrappedValue: Value? { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol FocusedValueKey {
  associatedtype Value
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct FocusedValues {
  @usableFromInline
  init()
  subscript<Key>(key: Key.Type) -> Key.Value? where Key : FocusedValueKey
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Font : Hashable {
  var provider: AnyFontBox
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Font {
  static func system(size: CGFloat, weight: Font.Weight = .regular, design: Font.Design = .default) -> Font
  enum Design : Hashable {
    case `default`
    @available(watchOS 7.0, *)
    case serif
    case rounded
    @available(watchOS 7.0, *)
    case monospaced
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Font {
  static let largeTitle: Font
  static let title: Font
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static let title2: Font
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static let title3: Font
  static let headline: Font
  static let subheadline: Font
  static let body: Font
  static let callout: Font
  static let footnote: Font
  static let caption: Font
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static let caption2: Font
  static func system(_ style: Font.TextStyle, design: Font.Design = .default) -> Font
  enum TextStyle : CaseIterable {
    case largeTitle
    case title
    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    case title2
    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    case title3
    case headline
    case subheadline
    case body
    case callout
    case footnote
    case caption
    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    case caption2
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Font {
  func italic() -> Font
  func smallCaps() -> Font
  func lowercaseSmallCaps() -> Font
  func uppercaseSmallCaps() -> Font
  func monospacedDigit() -> Font
  func weight(_ weight: Font.Weight) -> Font
  func bold() -> Font
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  func leading(_ leading: Font.Leading) -> Font
  @available(iOS, introduced: 14.0, deprecated: 14.0, renamed: "leading")
  @available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "leading")
  @available(tvOS, introduced: 14.0, deprecated: 14.0, renamed: "leading")
  @available(watchOS, introduced: 7.0, deprecated: 7.0, renamed: "leading")
  func _leading(_ leading: Font._Leading) -> Font
  func _stylisticAlternative(_ alternative: Font._StylisticAlternative) -> Font
  @frozen struct Weight : Hashable {
    var value: CGFloat
    static let ultraLight: Font.Weight
    static let thin: Font.Weight
    static let light: Font.Weight
    static let regular: Font.Weight
    static let medium: Font.Weight
    static let semibold: Font.Weight
    static let bold: Font.Weight
    static let heavy: Font.Weight
    static let black: Font.Weight
  }
  enum _StylisticAlternative : Int, Hashable {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case eleven
    case twelve
    case thirteen
    case fourteen
    case fifteen
    case sixteen
    case seventeen
    case eighteen
    case nineteen
    case twenty
  }
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  enum Leading {
    case standard
    case tight
    case loose
  }
  enum _Leading : Hashable {
    case tight
    case loose
    case standard
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Font {
  static func custom(_ name: String, size: CGFloat) -> Font
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func custom(_ name: String, size: CGFloat, relativeTo textStyle: Font.TextStyle) -> Font
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  @available(*, deprecated, renamed: "custom(_:size:textStyle:)")
  static func _custom(_ name: String, size: CGFloat, textStyle: Font.TextStyle) -> Font
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func custom(_ name: String, fixedSize: CGFloat) -> Font
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  @available(*, deprecated, renamed: "custom(_:fixedSize:)")
  static func _custom(_ name: String, verbatimSize: CGFloat) -> Font
  init(_ font: CTFont)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Font.TextStyle : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Font.TextStyle : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Font._StylisticAlternative : RawRepresentable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Font.Leading : Equatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Font.Leading : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct ForEach<Data, ID, Content> where Data : RandomAccessCollection, ID : Hashable {
  var content: (Data.Element) -> Content
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForEach : DynamicViewContent where Content : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForEach : View where Content : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForEach where ID == Data.Element.ID, Content : View, Data.Element : Identifiable {
  init(_ data: Data, @ViewBuilder content: @escaping (Data.Element) -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForEach where Content : View {
  init(_ data: Data, id: KeyPath<Data.Element, ID>, @ViewBuilder content: @escaping (Data.Element) -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForEach where Data == Range<Int>, ID == Int, Content : View {
  init(_ data: Range<Int>, @ViewBuilder content: @escaping (Int) -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct ForegroundStyle {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ForegroundStyle : ShapeStyle {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct Form<Content> : View where Content : View {
  init(@ViewBuilder content: () -> Content)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct Gauge<Label, CurrentValueLabel, BoundsLabel, MarkedValueLabels> : View where Label : View, CurrentValueLabel : View, BoundsLabel : View, MarkedValueLabels : View {
  init<V>(value: V, in bounds: ClosedRange<V> = 0...1, @ViewBuilder label: () -> Label) where CurrentValueLabel == EmptyView, BoundsLabel == EmptyView, MarkedValueLabels == EmptyView, V : BinaryFloatingPoint
  init<V>(value: V, in bounds: ClosedRange<V> = 0...1, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> CurrentValueLabel) where BoundsLabel == EmptyView, MarkedValueLabels == EmptyView, V : BinaryFloatingPoint
  init<V>(value: V, in bounds: ClosedRange<V> = 0...1, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> CurrentValueLabel, @ViewBuilder minimumValueLabel: () -> BoundsLabel, @ViewBuilder maximumValueLabel: () -> BoundsLabel) where MarkedValueLabels == EmptyView, V : BinaryFloatingPoint
  init<V>(value: V, in bounds: ClosedRange<V> = 0...1, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> CurrentValueLabel, @ViewBuilder markedValueLabels: () -> MarkedValueLabels) where BoundsLabel == EmptyView, V : BinaryFloatingPoint
  init<V>(value: V, in bounds: ClosedRange<V> = 0...1, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> CurrentValueLabel, @ViewBuilder minimumValueLabel: () -> BoundsLabel, @ViewBuilder maximumValueLabel: () -> BoundsLabel, @ViewBuilder markedValueLabels: () -> MarkedValueLabels) where V : BinaryFloatingPoint
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
protocol GaugeStyle {
  associatedtype Body : View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = GaugeStyleConfiguration
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct GaugeStyleConfiguration {
  struct Label : View {
  }
  struct CurrentValueLabel : View {
  }
  struct MinimumValueLabel : View {
  }
  struct MaximumValueLabel : View {
  }
  struct MarkedValueLabel : View {
  }
  var value: Double
  var label: GaugeStyleConfiguration.Label
  var currentValueLabel: GaugeStyleConfiguration.CurrentValueLabel?
  var minimumValueLabel: GaugeStyleConfiguration.MinimumValueLabel?
  var maximumValueLabel: GaugeStyleConfiguration.MaximumValueLabel?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol GeometryEffect : Animatable, ViewModifier where Self.Body == Never {
  func effectValue(size: CGSize) -> ProjectionTransform
  static var _affectsLayout: Bool { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension GeometryEffect {
  static var _affectsLayout: Bool { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension GeometryEffect {
  static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension GeometryEffect {
  @inlinable func ignoredByLayout() -> _IgnoredByLayoutEffect<Self>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct GeometryProxy {
  var size: CGSize { get }
  subscript<T>(anchor: Anchor<T>) -> T { get }
  var safeAreaInsets: EdgeInsets { get }
  func frame(in coordinateSpace: CoordinateSpace) -> CGRect
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct GeometryReader<Content> : View where Content : View {
  var content: (GeometryProxy) -> Content
  @inlinable init(@ViewBuilder content: @escaping (GeometryProxy) -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol Gesture {
  associatedtype Value
  static func _makeGesture(gesture: _GraphValue<Self>, inputs: _GestureInputs) -> _GestureOutputs<Self.Value>
  associatedtype Body : Gesture
  var body: Self.Body { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  @inlinable func sequenced<Other>(before other: Other) -> SequenceGesture<Self, Other> where Other : Gesture
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  @inlinable func updating<State>(_ state: GestureState<State>, body: @escaping (Self.Value, inout State, inout Transaction) -> Void) -> GestureStateGesture<Self, State>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  @inlinable func simultaneously<Other>(with other: Other) -> SimultaneousGesture<Self, Other> where Other : Gesture
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture where Self.Value == Self.Body.Value {
  static func _makeGesture(gesture: _GraphValue<Self>, inputs: _GestureInputs) -> _GestureOutputs<Self.Body.Value>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  func onEnded(_ action: @escaping (Self.Value) -> Void) -> _EndedGesture<Self>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture where Self.Value : Equatable {
  func onChanged(_ action: @escaping (Self.Value) -> Void) -> _ChangedGesture<Self>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  func map<T>(_ body: @escaping (Self.Value) -> T) -> _MapGesture<Self, T>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Gesture {
  @inlinable func exclusively<Other>(before other: Other) -> ExclusiveGesture<Self, Other> where Other : Gesture
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct GestureMask : OptionSet {
  static let none: GestureMask
  static let gesture: GestureMask
  static let subviews: GestureMask
  static let all: GestureMask
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@propertyWrapper @frozen struct GestureState<Value> : DynamicProperty {
  var state: State<Value>
  let reset: (Binding<Value>) -> Void
  init(wrappedValue: Value)
  @_alwaysEmitIntoClient init(initialValue: Value)
  init(wrappedValue: Value, resetTransaction: Transaction)
  @_alwaysEmitIntoClient init(initialValue: Value, resetTransaction: Transaction)
  init(wrappedValue: Value, reset: @escaping (Value, inout Transaction) -> Void)
  @_alwaysEmitIntoClient init(initialValue: Value, reset: @escaping (Value, inout Transaction) -> Void)
  var wrappedValue: Value { get }
  var projectedValue: GestureState<Value> { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension GestureState where Value : ExpressibleByNilLiteral {
  init(resetTransaction: Transaction = Transaction())
  init(reset: @escaping (Value, inout Transaction) -> Void)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct GestureStateGesture<Base, State> : Gesture where Base : Gesture {
  var base: Base
  var state: GestureState<State>
  var body: (GestureStateGesture<Base, State>.Value, inout State, inout Transaction) -> Void
  @inlinable init(base: Base, state: GestureState<State>, body: @escaping (GestureStateGesture<Base, State>.Value, inout State, inout Transaction) -> Void)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Gradient : Equatable {
  @frozen struct Stop : Equatable {
    var color: Color
    var location: CGFloat
    init(color: Color, location: CGFloat)
  }
  var stops: [Gradient.Stop]
  init(stops: [Gradient.Stop])
  init(colors: [Color])
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct GridItem {
  enum Size {
    case fixed(CGFloat)
    case flexible(minimum: CGFloat = 10, maximum: CGFloat = .infinity)
    case adaptive(minimum: CGFloat, maximum: CGFloat = .infinity)
  }
  var size: GridItem.Size
  var spacing: CGFloat?
  var alignment: Alignment?
  init(_ size: GridItem.Size = .flexible(), spacing: CGFloat? = nil, alignment: Alignment? = nil)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Group<Content> {
  @usableFromInline
  var content: Content
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Group : View where Content : View {
  @inlinable init(@ViewBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Group : Scene where Content : Scene {
  @inlinable init(@SceneBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Group : ToolbarContent where Content : ToolbarContent {
  init(@ToolbarContentBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Group : CustomizableToolbarContent where Content : CustomizableToolbarContent {
  init(@ToolbarContentBuilder content: () -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct HStack<Content> : View where Content : View {
  @usableFromInline
  var _tree: _VariadicView.Tree<_HStackLayout, Content>
  @inlinable init(alignment: VerticalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: () -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct HorizontalAlignment : Equatable {
  init(_ id: AlignmentID.Type)
  @usableFromInline
  let key: AlignmentKey
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension HorizontalAlignment {
  static let leading: HorizontalAlignment
  static let center: HorizontalAlignment
  static let trailing: HorizontalAlignment
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
@frozen struct IDView<Content, ID> : View where Content : View, ID : Hashable {
  @usableFromInline
  var content: Content
  @usableFromInline
  var id: ID
  @inlinable init(_ content: Content, id: ID)
}

extension IDView {
}

extension IDView {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct IconOnlyLabelStyle : LabelStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Image : Equatable {
  var provider: AnyImageProviderBox
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  @frozen enum Orientation : UInt8, CaseIterable, Hashable {
    case up
    case upMirrored
    case down
    case downMirrored
    case left
    case leftMirrored
    case right
    case rightMirrored
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  static var _mainNamedBundle: Bundle?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  init(_ name: String, bundle: Bundle? = nil)
  init(_ name: String, bundle: Bundle? = nil, label: Text)
  init(decorative name: String, bundle: Bundle? = nil)
  @available(macOS 11.0, *)
  init(systemName: String)
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  init(_internalSystemName systemName: String)
}

extension Image {
  @available(*, deprecated, message: "Use .renderingMode(.original)")
  init(_systemName systemName: String, colorPalette: [Color]? = nil)
  @available(*, deprecated, message: "Use .renderingMode(.original)")
  init(_internalSystemName systemName: String, colorPalette: [Color]? = nil)
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension Image {
  init(uiImage: UIImage)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  enum ResizingMode {
    case tile
    case stretch
  }
  func resizable(capInsets: EdgeInsets = EdgeInsets(), resizingMode: Image.ResizingMode = .stretch) -> Image
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  enum TemplateRenderingMode {
    case template
    case original
  }
  @available(macOS 11.0, *)
  enum Scale {
    case small
    case medium
    case large
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  func renderingMode(_ renderingMode: Image.TemplateRenderingMode?) -> Image
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  enum Interpolation {
    case none
    case low
    case medium
    case high
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  func interpolation(_ interpolation: Image.Interpolation) -> Image
  func antialiased(_ isAntialiased: Bool) -> Image
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  init(_ cgImage: CGImage, scale: CGFloat, orientation: Image.Orientation = .up, label: Text)
  init(decorative cgImage: CGImage, scale: CGFloat, orientation: Image.Orientation = .up)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image.Orientation : RawRepresentable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image.ResizingMode : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image.ResizingMode : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image.TemplateRenderingMode : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image.TemplateRenderingMode : Hashable {
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 11.0, *)
extension Image.Scale : Equatable {
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 11.0, *)
extension Image.Scale : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image.Interpolation : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image.Interpolation : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct ImagePaint : ShapeStyle {
  var image: Image
  var sourceRect: CGRect
  var scale: CGFloat
  init(image: Image, sourceRect: CGRect = CGRect(x: 0, y: 0, width: 1, height: 1), scale: CGFloat = 1)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct InlinePickerStyle : PickerStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol InsettableShape : Shape {
  associatedtype InsetShape : InsettableShape
  func inset(by amount: CGFloat) -> Self.InsetShape
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension InsettableShape {
  @inlinable func strokeBorder<S>(_ content: S, style: StrokeStyle, antialiased: Bool = true) -> some View where S : ShapeStyle
  
  @inlinable func strokeBorder(style: StrokeStyle, antialiased: Bool = true) -> some View
  
  @inlinable func strokeBorder<S>(_ content: S, lineWidth: CGFloat = 1, antialiased: Bool = true) -> some View where S : ShapeStyle
  
  @inlinable func strokeBorder(lineWidth: CGFloat = 1, antialiased: Bool = true) -> some View
  
}

@usableFromInline
struct IsAuxiliaryContentTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct IsCollapsibleTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct IsDeleteDisabledTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct IsEmptyViewTraitKey : _ViewTraitKey {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@usableFromInline
struct IsLinkedGroupTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct IsMoveDisabledTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct IsSectionFooterTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct IsSectionedTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct ItemProviderTraitKey : _ViewTraitKey {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct Label<Title, Icon> : View where Title : View, Icon : View {
  init(@ViewBuilder title: () -> Title, @ViewBuilder icon: () -> Icon)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Label where Title == Text, Icon == Image {
  init(_ titleKey: LocalizedStringKey, image name: String)
  init(_ titleKey: LocalizedStringKey, systemImage name: String)
  @_disfavoredOverload init<S>(_ title: S, image name: String) where S : StringProtocol
  @_disfavoredOverload init<S>(_ title: S, systemImage name: String) where S : StringProtocol
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Label where Title == LabelStyleConfiguration.Title, Icon == LabelStyleConfiguration.Icon {
  init(_ configuration: LabelStyleConfiguration)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol LabelStyle {
  associatedtype Body : View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = LabelStyleConfiguration
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct LabelStyleConfiguration {
  struct Title {
  }
  struct Icon {
  }
  var title: LabelStyleConfiguration.Title { get }
  var icon: LabelStyleConfiguration.Icon { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension LabelStyleConfiguration.Title : View {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension LabelStyleConfiguration.Icon : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum LayoutDirection : Hashable, CaseIterable {
  case leftToRight
  case rightToLeft
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct LayoutPriorityTraitKey : _ViewTraitKey {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct LazyHGrid<Content> : View where Content : View {
  init(rows: [GridItem], alignment: VerticalAlignment = .center, spacing: CGFloat? = nil, pinnedViews: PinnedScrollableViews = .init(), @ViewBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct LazyHStack<Content> : View where Content : View {
  init(alignment: VerticalAlignment = .center, spacing: CGFloat? = nil, pinnedViews: PinnedScrollableViews = .init(), @ViewBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct LazyVGrid<Content> : View where Content : View {
  init(columns: [GridItem], alignment: HorizontalAlignment = .center, spacing: CGFloat? = nil, pinnedViews: PinnedScrollableViews = .init(), @ViewBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct LazyVStack<Content> : View where Content : View {
  init(alignment: HorizontalAlignment = .center, spacing: CGFloat? = nil, pinnedViews: PinnedScrollableViews = .init(), @ViewBuilder content: () -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum LegibilityWeight : Hashable {
  case regular
  case bold
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct LinearGaugeStyle : GaugeStyle {
  init()
  init(tint: Color)
  init(tint: Gradient)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct LinearGradient : ShapeStyle, View {
  var gradient: Gradient
  var startPoint: UnitPoint
  var endPoint: UnitPoint
  init(gradient: Gradient, startPoint: UnitPoint, endPoint: UnitPoint)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct LinearProgressViewStyle : ProgressViewStyle {
  init()
  init(tint: Color)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct Link<Label> : View where Label : View {
  init(destination: URL, @ViewBuilder label: () -> Label)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Link where Label == Text {
  init(_ titleKey: LocalizedStringKey, destination: URL)
  @_disfavoredOverload init<S>(_ title: S, destination: URL) where S : StringProtocol
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct List<SelectionValue, Content> : View where SelectionValue : Hashable, Content : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension List {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension List where SelectionValue == Never {
  init(@ViewBuilder content: () -> Content)
  init<Data, RowContent>(_ data: Data, @ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == ForEach<Data, Data.Element.ID, HStack<RowContent>>, Data : RandomAccessCollection, RowContent : View, Data.Element : Identifiable
  init<Data, ID, RowContent>(_ data: Data, id: KeyPath<Data.Element, ID>, @ViewBuilder rowContent: @escaping (Data.Element) -> RowContent) where Content == ForEach<Data, ID, HStack<RowContent>>, Data : RandomAccessCollection, ID : Hashable, RowContent : View
  init<RowContent>(_ data: Range<Int>, @ViewBuilder rowContent: @escaping (Int) -> RowContent) where Content == ForEach<Range<Int>, Int, HStack<RowContent>>, RowContent : View
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@usableFromInline
struct ListItemReuseIdentifierTrait : _ViewTraitKey {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct ListItemTint {
  static func fixed(_ tint: Color) -> ListItemTint
  static func preferred(_ tint: Color) -> ListItemTint
  static let monochrome: ListItemTint
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@usableFromInline
struct ListItemTintTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct ListRowBackgroundTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct ListRowInsetsTraitKey : _ViewTraitKey {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@usableFromInline
struct ListRowPlatterColorTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol ListStyle {
  static func _makeView<SelectionValue>(value: _GraphValue<_ListValue<Self, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  static func _makeViewList<SelectionValue>(value: _GraphValue<_ListValue<Self, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct LocalizedStringKey : Equatable, ExpressibleByStringInterpolation {
  var key: String
  var hasFormatting: Bool
  var arguments: [LocalizedStringKey.FormatArgument]
  init(_ value: String)
  @usableFromInline
  struct FormatArgument : Equatable {
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension LocalizedStringKey.StringInterpolation {
  mutating func appendInterpolation(_ image: Image)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension LocalizedStringKey.StringInterpolation {
  mutating func appendInterpolation(_ date: Date, style: Text.DateStyle)
  mutating func appendInterpolation(_ dates: ClosedRange<Date>)
  mutating func appendInterpolation(_ interval: DateInterval)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
enum Log {
  @usableFromInline
  static var runtimeIssuesLog: OSLog
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 14.0, *)
struct LongPressGesture : Gesture {
  var minimumDuration: Double
  @available(tvOS, unavailable)
  var maximumDistance: CGFloat
  @available(tvOS, unavailable)
  init(minimumDuration: Double = 0.5, maximumDistance: CGFloat = 10)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct MatchedGeometryProperties : OptionSet {
  static let position: MatchedGeometryProperties
  static let size: MatchedGeometryProperties
  static let frame: MatchedGeometryProperties
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct ModifiedContent<Content, Modifier> {
  var content: Content
  var modifier: Modifier
  @inlinable init(content: Content, modifier: Modifier)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  func accessibilityAdjustableAction(_ handler: @escaping (AccessibilityAdjustmentDirection) -> Void) -> ModifiedContent<Content, Modifier>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent : Equatable where Content : Equatable, Modifier : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent : View where Content : View, Modifier : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent : ViewModifier where Content : ViewModifier, Modifier : ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  func accessibilityHidden(_ hidden: Bool) -> ModifiedContent<Content, Modifier>
  func accessibilityLabel(_ label: Text) -> ModifiedContent<Content, Modifier>
  func accessibilityValue(_ value: Text) -> ModifiedContent<Content, Modifier>
  func accessibilityHint(_ hint: Text) -> ModifiedContent<Content, Modifier>
  func accessibilityInputLabels(_ inputLabels: [Text]) -> ModifiedContent<Content, Modifier>
  func accessibilityAddTraits(_ traits: AccessibilityTraits) -> ModifiedContent<Content, Modifier>
  func accessibilityRemoveTraits(_ traits: AccessibilityTraits) -> ModifiedContent<Content, Modifier>
  func accessibilityIdentifier(_ identifier: String) -> ModifiedContent<Content, Modifier>
  func accessibilitySortPriority(_ sortPriority: Double) -> ModifiedContent<Content, Modifier>
  func accessibilityActivationPoint(_ activationPoint: CGPoint) -> ModifiedContent<Content, Modifier>
  func accessibilityActivationPoint(_ activationPoint: UnitPoint) -> ModifiedContent<Content, Modifier>
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  func accessibilityLabel(_ labelKey: LocalizedStringKey) -> ModifiedContent<Content, Modifier>
  @_disfavoredOverload func accessibilityLabel<S>(_ label: S) -> ModifiedContent<Content, Modifier> where S : StringProtocol
  func accessibilityValue(_ valueKey: LocalizedStringKey) -> ModifiedContent<Content, Modifier>
  @_disfavoredOverload func accessibilityValue<S>(_ value: S) -> ModifiedContent<Content, Modifier> where S : StringProtocol
  func accessibilityHint(_ hintKey: LocalizedStringKey) -> ModifiedContent<Content, Modifier>
  @_disfavoredOverload func accessibilityHint<S>(_ hint: S) -> ModifiedContent<Content, Modifier> where S : StringProtocol
  func accessibilityInputLabels(_ inputLabelKeys: [LocalizedStringKey]) -> ModifiedContent<Content, Modifier>
  @_disfavoredOverload func accessibilityInputLabels<S>(_ inputLabels: [S]) -> ModifiedContent<Content, Modifier> where S : StringProtocol
}

extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityHidden(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityHidden(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityHidden(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityHidden(_:)")
  func accessibility(hidden: Bool) -> ModifiedContent<Content, Modifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityLabel(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityLabel(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityLabel(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityLabel(_:)")
  func accessibility(label: Text) -> ModifiedContent<Content, Modifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityValue(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityValue(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityValue(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityValue(_:)")
  func accessibility(value: Text) -> ModifiedContent<Content, Modifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityHint(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityHint(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityHint(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityHint(_:)")
  func accessibility(hint: Text) -> ModifiedContent<Content, Modifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityInputLabels(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityInputLabels(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityInputLabels(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityInputLabels(_:)")
  func accessibility(inputLabels: [Text]) -> ModifiedContent<Content, Modifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityAddTraits(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityAddTraits(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityAddTraits(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityAddTraits(_:)")
  func accessibility(addTraits traits: AccessibilityTraits) -> ModifiedContent<Content, Modifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityRemoveTraits(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityRemoveTraits(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityRemoveTraits(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityRemoveTraits(_:)")
  func accessibility(removeTraits traits: AccessibilityTraits) -> ModifiedContent<Content, Modifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityIdentifier(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityIdentifier(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityIdentifier(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityIdentifier(_:)")
  func accessibility(identifier: String) -> ModifiedContent<Content, Modifier>
  @available(iOS, deprecated, introduced: 13.0)
  @available(macOS, deprecated, introduced: 10.15)
  @available(tvOS, deprecated, introduced: 13.0)
  @available(watchOS, deprecated, introduced: 6)
  func accessibility(selectionIdentifier: AnyHashable) -> ModifiedContent<Content, Modifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilitySortPriority(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilitySortPriority(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilitySortPriority(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilitySortPriority(_:)")
  func accessibility(sortPriority: Double) -> ModifiedContent<Content, Modifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  func accessibility(activationPoint: CGPoint) -> ModifiedContent<Content, Modifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  func accessibility(activationPoint: UnitPoint) -> ModifiedContent<Content, Modifier>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent : DynamicViewContent where Content : DynamicViewContent, Modifier : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  func accessibilityScrollAction(_ handler: @escaping (Edge) -> Void) -> ModifiedContent<Content, Modifier>
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ModifiedContent : Scene where Content : Scene, Modifier : _SceneModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ModifiedContent : _SceneModifier where Content : _SceneModifier, Modifier : _SceneModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  func accessibilityAction(_ actionKind: AccessibilityActionKind = .default, _ handler: @escaping () -> Void) -> ModifiedContent<Content, Modifier>
  func accessibilityAction(named name: Text, _ handler: @escaping () -> Void) -> ModifiedContent<Content, Modifier>
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ModifiedContent where Modifier == AccessibilityAttachmentModifier {
  func accessibilityAction(named nameKey: LocalizedStringKey, _ handler: @escaping () -> Void) -> ModifiedContent<Content, Modifier>
  @_disfavoredOverload func accessibilityAction<S>(named name: S, _ handler: @escaping () -> Void) -> ModifiedContent<Content, Modifier> where S : StringProtocol
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen @propertyWrapper struct Namespace : DynamicProperty {
  @usableFromInline
  var id: Int
  @inlinable init()
  var wrappedValue: Namespace.ID { get }
  @frozen struct ID : Hashable {
    var id: Int
  }
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
struct NavigationBarItem {
  enum TitleDisplayMode {
    case automatic
    case inline
  }
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension NavigationBarItem.TitleDisplayMode : Equatable {
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension NavigationBarItem.TitleDisplayMode : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct NavigationLink<Label, Destination> : View where Label : View, Destination : View {
  init(destination: Destination, @ViewBuilder label: () -> Label)
  init(destination: Destination, isActive: Binding<Bool>, @ViewBuilder label: () -> Label)
  init<V>(destination: Destination, tag: V, selection: Binding<V?>, @ViewBuilder label: () -> Label) where V : Hashable
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension NavigationLink where Label == Text {
  init(_ titleKey: LocalizedStringKey, destination: Destination)
  @_disfavoredOverload init<S>(_ title: S, destination: Destination) where S : StringProtocol
  init(_ titleKey: LocalizedStringKey, destination: Destination, isActive: Binding<Bool>)
  @_disfavoredOverload init<S>(_ title: S, destination: Destination, isActive: Binding<Bool>) where S : StringProtocol
  init<V>(_ titleKey: LocalizedStringKey, destination: Destination, tag: V, selection: Binding<V?>) where V : Hashable
  @_disfavoredOverload init<S, V>(_ title: S, destination: Destination, tag: V, selection: Binding<V?>) where S : StringProtocol, V : Hashable
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension NavigationLink where Destination == _WKStoryboardContent {
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  init(destinationName: String, @ViewBuilder label: () -> Label)
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  init(destinationName: String, isActive: Binding<Bool>, @ViewBuilder label: () -> Label)
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  init<V>(destinationName: String, tag: V, selection: Binding<V?>, @ViewBuilder label: () -> Label) where V : Hashable
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
struct NavigationView<Content> : View where Content : View {
  init(@ViewBuilder content: () -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
protocol NavigationViewStyle {
  associatedtype _Body : View
  func _body(configuration: _NavigationViewStyleConfiguration) -> Self._Body
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@propertyWrapper @frozen struct ObservedObject<ObjectType> : DynamicProperty where ObjectType : ObservableObject {
  @dynamicMemberLookup @frozen struct Wrapper {
    let root: ObjectType
    subscript<Subject>(dynamicMember keyPath: ReferenceWritableKeyPath<ObjectType, Subject>) -> Binding<Subject> { get }
  }
  @usableFromInline
  var _seed: Int
  @_alwaysEmitIntoClient init(initialValue: ObjectType)
  init(wrappedValue: ObjectType)
  var wrappedValue: ObjectType
  var projectedValue: ObservedObject<ObjectType>.Wrapper { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ObservedObject {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct OffsetShape<Content> : Shape where Content : Shape {
  var shape: Content
  var offset: CGSize
  @inlinable init(shape: Content, offset: CGSize)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension OffsetShape : InsettableShape where Content : InsettableShape {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct OnDeleteTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct OnMoveTraitKey : _ViewTraitKey {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct OpenURLAction {
  func callAsFunction(_ url: URL)
}

@available(iOS 14.0, tvOS 14.0, watchOS 7.0, *)
@available(macOS, unavailable)
struct PageTabViewStyle : TabViewStyle {
  struct IndexDisplayMode {
    static let automatic: PageTabViewStyle.IndexDisplayMode
  }
  init(indexDisplayMode: PageTabViewStyle.IndexDisplayMode = .automatic)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Path : Equatable, LosslessStringConvertible {
  @usableFromInline
  final class PathBox : Equatable {
  }
  @usableFromInline
  @frozen enum Storage : Equatable {
    case empty
    case rect(CGRect)
    case ellipse(CGRect)
    indirect case roundedRect(FixedRoundedRect)
    indirect case stroked(StrokedPath)
    indirect case trimmed(TrimmedPath)
    case path(Path.PathBox)
  }
  var storage: Path.Storage
  init()
  init(_ path: CGPath)
  init(_ path: CGMutablePath)
  init(_ rect: CGRect)
  init(roundedRect rect: CGRect, cornerSize: CGSize, style: RoundedCornerStyle = .circular)
  init(roundedRect rect: CGRect, cornerRadius: CGFloat, style: RoundedCornerStyle = .circular)
  init(ellipseIn rect: CGRect)
  init(_ callback: (inout Path) -> ())
  var cgPath: CGPath { get }
  var isEmpty: Bool { get }
  var boundingRect: CGRect { get }
  func contains(_ p: CGPoint, eoFill: Bool = false) -> Bool
  @frozen enum Element : Equatable {
    case move(to: CGPoint)
    case line(to: CGPoint)
    case quadCurve(to: CGPoint, control: CGPoint)
    case curve(to: CGPoint, control1: CGPoint, control2: CGPoint)
    case closeSubpath
  }
  func forEach(_ body: (Path.Element) -> Void)
  func strokedPath(_ style: StrokeStyle) -> Path
  func trimmedPath(from: CGFloat, to: CGFloat) -> Path
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Path : Shape {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Path {
  mutating func move(to p: CGPoint)
  mutating func addLine(to p: CGPoint)
  mutating func addQuadCurve(to p: CGPoint, control cp: CGPoint)
  mutating func addCurve(to p: CGPoint, control1 cp1: CGPoint, control2 cp2: CGPoint)
  mutating func closeSubpath()
  mutating func addRect(_ rect: CGRect, transform: CGAffineTransform = .identity)
  mutating func addRoundedRect(in rect: CGRect, cornerSize: CGSize, style: RoundedCornerStyle = .circular, transform: CGAffineTransform = .identity)
  mutating func addEllipse(in rect: CGRect, transform: CGAffineTransform = .identity)
  mutating func addRects(_ rects: [CGRect], transform: CGAffineTransform = .identity)
  mutating func addLines(_ lines: [CGPoint])
  mutating func addRelativeArc(center: CGPoint, radius: CGFloat, startAngle: Angle, delta: Angle, transform: CGAffineTransform = .identity)
  mutating func addArc(center: CGPoint, radius: CGFloat, startAngle: Angle, endAngle: Angle, clockwise: Bool, transform: CGAffineTransform = .identity)
  mutating func addArc(tangent1End p1: CGPoint, tangent2End p2: CGPoint, radius: CGFloat, transform: CGAffineTransform = .identity)
  mutating func addPath(_ path: Path, transform: CGAffineTransform = .identity)
  var currentPoint: CGPoint? { get }
  func applying(_ transform: CGAffineTransform) -> Path
  func offsetBy(dx: CGFloat, dy: CGFloat) -> Path
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct Picker<Label, SelectionValue, Content> : View where Label : View, SelectionValue : Hashable, Content : View {
  init(selection: Binding<SelectionValue>, label: Label, @ViewBuilder content: () -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Picker where Label == Text {
  init(_ titleKey: LocalizedStringKey, selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content)
  @_disfavoredOverload init<S>(_ title: S, selection: Binding<SelectionValue>, @ViewBuilder content: () -> Content) where S : StringProtocol
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol PickerStyle {
  static func _makeView<SelectionValue>(value: _GraphValue<_PickerValue<Self, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  static func _makeViewList<SelectionValue>(value: _GraphValue<_PickerValue<Self, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct PinnedScrollableViews : OptionSet {
  static let sectionHeaders: PinnedScrollableViews
  static let sectionFooters: PinnedScrollableViews
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct PlainButtonStyle : PrimitiveButtonStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct PlainListStyle : ListStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct PlainTextFieldStyle : TextFieldStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum PopoverAttachmentAnchor {
  case rect(Anchor<CGRect>.Source)
  case point(UnitPoint)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol PreferenceKey {
  associatedtype Value
  static var defaultValue: Self.Value { get }
  static func reduce(value: inout Self.Value, nextValue: () -> Self.Value)
  static var _includesRemovedValues: Bool { get }
  static var _isReadableByHost: Bool { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension PreferenceKey {
  @inlinable static func _delay<T>(_ transform: @escaping (_PreferenceValue<Self>) -> T) -> some View where T : View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension PreferenceKey where Self.Value : ExpressibleByNilLiteral {
  static var defaultValue: Self.Value { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension PreferenceKey {
  static var _includesRemovedValues: Bool { get }
  static var _isReadableByHost: Bool { get }
}

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
struct PreferredColorSchemeKey : PreferenceKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct PresentationMode {
  var isPresented: Bool { get }
  mutating func dismiss()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol PreviewContext {
  subscript<Key>(key: Key.Type) -> Key.Value where Key : PreviewContextKey { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol PreviewContextKey {
  associatedtype Value
  static var defaultValue: Self.Value { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@usableFromInline
struct PreviewContextTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct PreviewDevice : RawRepresentable, ExpressibleByStringLiteral {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct PreviewDeviceTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct PreviewDisplayNameTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum PreviewLayout {
  case device
  case sizeThatFits
  case fixed(width: CGFloat, height: CGFloat)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct PreviewLayoutTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum PreviewPlatform {
  case iOS
  case macOS
  case tvOS
  case watchOS
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension PreviewPlatform : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension PreviewPlatform : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol PreviewProvider : _PreviewProvider {
  associatedtype Previews : View
  @ViewBuilder static var previews: Self.Previews { get }
  static var platform: PreviewPlatform? { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension PreviewProvider {
  static var platform: PreviewPlatform? { get }
  static var _previews: Any { get }
  static var _platform: PreviewPlatform? { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol PrimitiveButtonStyle {
  associatedtype Body : View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = PrimitiveButtonStyleConfiguration
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct PrimitiveButtonStyleConfiguration {
  struct Label : View {
  }
  let label: PrimitiveButtonStyleConfiguration.Label
  func trigger()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct ProgressView<Label, CurrentValueLabel> : View where Label : View, CurrentValueLabel : View {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ProgressView where CurrentValueLabel == EmptyView {
  init() where Label == EmptyView
  init(@ViewBuilder label: () -> Label)
  init(_ titleKey: LocalizedStringKey) where Label == Text
  @_disfavoredOverload init<S>(_ title: S) where Label == Text, S : StringProtocol
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ProgressView {
  init<V>(value: V?, total: V = 1.0) where Label == EmptyView, CurrentValueLabel == EmptyView, V : BinaryFloatingPoint
  init<V>(value: V?, total: V = 1.0, @ViewBuilder label: () -> Label) where CurrentValueLabel == EmptyView, V : BinaryFloatingPoint
  init<V>(value: V?, total: V = 1.0, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> CurrentValueLabel) where V : BinaryFloatingPoint
  init<V>(_ titleKey: LocalizedStringKey, value: V?, total: V = 1.0) where Label == Text, CurrentValueLabel == EmptyView, V : BinaryFloatingPoint
  @_disfavoredOverload init<S, V>(_ title: S, value: V?, total: V = 1.0) where Label == Text, CurrentValueLabel == EmptyView, S : StringProtocol, V : BinaryFloatingPoint
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ProgressView {
  init(_ progress: Progress) where Label == EmptyView, CurrentValueLabel == EmptyView
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ProgressView {
  init(_ configuration: ProgressViewStyleConfiguration) where Label == ProgressViewStyleConfiguration.Label, CurrentValueLabel == ProgressViewStyleConfiguration.CurrentValueLabel
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol ProgressViewStyle {
  associatedtype Body : View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = ProgressViewStyleConfiguration
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct ProgressViewStyleConfiguration {
  struct Label : View {
  }
  struct CurrentValueLabel : View {
  }
  let fractionCompleted: Double?
  var label: ProgressViewStyleConfiguration.Label?
  var currentValueLabel: ProgressViewStyleConfiguration.CurrentValueLabel?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct ProjectionTransform {
  var m11: CGFloat
  var m12: CGFloat
  var m13: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var m23: CGFloat
  var m31: CGFloat
  var m32: CGFloat
  var m33: CGFloat
  @inlinable init()
  @inlinable init(_ m: CGAffineTransform)
  @inlinable var isIdentity: Bool { get }
  @inlinable var isAffine: Bool { get }
  mutating func invert() -> Bool
  func inverted() -> ProjectionTransform
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ProjectionTransform : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ProjectionTransform {
  @inline(__always) @inlinable func dot(_ a: (CGFloat, CGFloat, CGFloat), _ b: (CGFloat, CGFloat, CGFloat)) -> CGFloat
  @inlinable func concatenating(_ rhs: ProjectionTransform) -> ProjectionTransform
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
@frozen struct PropertyList : CustomStringConvertible {
  @usableFromInline
  var elements: PropertyList.Element?
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension PropertyList {
  @usableFromInline
  class Tracker {
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension PropertyList {
  @usableFromInline
  class Element : CustomStringConvertible {
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct RadialGradient : ShapeStyle, View {
  var gradient: Gradient
  var center: UnitPoint
  var startRadius: CGFloat
  var endRadius: CGFloat
  init(gradient: Gradient, center: UnitPoint, startRadius: CGFloat, endRadius: CGFloat)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Rectangle : Shape {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Rectangle : InsettableShape {
  @usableFromInline
  @frozen struct _Inset : InsettableShape {
    @usableFromInline
    var amount: CGFloat
    @inlinable init(amount: CGFloat)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct RedactionReasons : OptionSet {
  static let placeholder: RedactionReasons
}

@available(tvOS 14.0, watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
struct ResetFocusAction {
  func callAsFunction(in namespace: Namespace.ID)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct RotatedShape<Content> : Shape where Content : Shape {
  var shape: Content
  var angle: Angle
  var anchor: UnitPoint
  @inlinable init(shape: Content, angle: Angle, anchor: UnitPoint = .center)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension RotatedShape : InsettableShape where Content : InsettableShape {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum RoundedCornerStyle {
  case circular
  case continuous
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension RoundedCornerStyle : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension RoundedCornerStyle : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct RoundedRectangle : Shape {
  var cornerSize: CGSize
  var style: RoundedCornerStyle
  @inlinable init(cornerSize: CGSize, style: RoundedCornerStyle = .circular)
  @inlinable init(cornerRadius: CGFloat, style: RoundedCornerStyle = .circular)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension RoundedRectangle : InsettableShape {
  @usableFromInline
  @frozen struct _Inset : InsettableShape {
    @usableFromInline
    var base: RoundedRectangle
    @usableFromInline
    var amount: CGFloat
    @inlinable init(base: RoundedRectangle, amount: CGFloat)
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct SafeAreaRegions : OptionSet {
  static let container: SafeAreaRegions
  static let keyboard: SafeAreaRegions
  static let all: SafeAreaRegions
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@propertyWrapper struct ScaledMetric<Value> : DynamicProperty where Value : BinaryFloatingPoint {
  init(wrappedValue: Value, relativeTo textStyle: Font.TextStyle)
  init(wrappedValue: Value)
  var wrappedValue: Value { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct ScaledShape<Content> : Shape where Content : Shape {
  var shape: Content
  var scale: CGSize
  var anchor: UnitPoint
  @inlinable init(shape: Content, scale: CGSize, anchor: UnitPoint = .center)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol Scene {
  associatedtype Body : Scene
  @SceneBuilder var body: Self.Body { get }
  static func _makeScene(scene: _GraphValue<Self>, inputs: _SceneInputs) -> _SceneOutputs
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Scene {
  @inlinable func environment<V>(_ keyPath: WritableKeyPath<EnvironmentValues, V>, _ value: V) -> some Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Scene {
  func defaultAppStorage(_ store: UserDefaults) -> some Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Scene {
  @inlinable func modifier<T>(_ modifier: T) -> ModifiedContent<Self, T>
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Scene {
  static func _makeScene(scene: _GraphValue<Self>, inputs: _SceneInputs) -> _SceneOutputs
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Scene {
  @inlinable func onChange<V>(of value: V, perform action: @escaping (V) -> Void) -> some Scene where V : Equatable
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@resultBuilder struct SceneBuilder {
  static func buildBlock<Content>(_ content: Content) -> Content where Content : Scene
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> some Scene where C0 : Scene, C1 : Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> some Scene where C0 : Scene, C1 : Scene, C2 : Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> some Scene where C0 : Scene, C1 : Scene, C2 : Scene, C3 : Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> some Scene where C0 : Scene, C1 : Scene, C2 : Scene, C3 : Scene, C4 : Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> some Scene where C0 : Scene, C1 : Scene, C2 : Scene, C3 : Scene, C4 : Scene, C5 : Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> some Scene where C0 : Scene, C1 : Scene, C2 : Scene, C3 : Scene, C4 : Scene, C5 : Scene, C6 : Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> some Scene where C0 : Scene, C1 : Scene, C2 : Scene, C3 : Scene, C4 : Scene, C5 : Scene, C6 : Scene, C7 : Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> some Scene where C0 : Scene, C1 : Scene, C2 : Scene, C3 : Scene, C4 : Scene, C5 : Scene, C6 : Scene, C7 : Scene, C8 : Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> some Scene where C0 : Scene, C1 : Scene, C2 : Scene, C3 : Scene, C4 : Scene, C5 : Scene, C6 : Scene, C7 : Scene, C8 : Scene, C9 : Scene
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
enum ScenePhase : Comparable {
  case background
  case inactive
  case active
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ScenePhase : Hashable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen @propertyWrapper struct SceneStorage<Value> : DynamicProperty {
  @usableFromInline
  var _key: String
  @usableFromInline
  var _domain: String?
  @usableFromInline
  var _value: Value
  @usableFromInline
  var _location: AnyLocation<Value>?
  @usableFromInline
  var _transformBox: SceneStorageTransformBox
  var wrappedValue: Value { get nonmutating set }
  var projectedValue: Binding<Value> { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneStorage {
  init(wrappedValue: Value, _ key: String) where Value == Bool
  init(wrappedValue: Value, _ key: String) where Value == Int
  init(wrappedValue: Value, _ key: String) where Value == Double
  init(wrappedValue: Value, _ key: String) where Value == String
  init(wrappedValue: Value, _ key: String) where Value == URL
  init(wrappedValue: Value, _ key: String) where Value == Data
  init(wrappedValue: Value, _ key: String) where Value : RawRepresentable, Value.RawValue == Int
  init(wrappedValue: Value, _ key: String) where Value : RawRepresentable, Value.RawValue == String
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SceneStorage where Value : ExpressibleByNilLiteral {
  init(_ key: String) where Value == Bool?
  init(_ key: String) where Value == Int?
  init(_ key: String) where Value == Double?
  init(_ key: String) where Value == String?
  init(_ key: String) where Value == URL?
  init(_ key: String) where Value == Data?
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@usableFromInline
class SceneStorageTransformBox {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct ScrollView<Content> : View where Content : View {
  var content: Content
  var axes: Axis.Set
  var showsIndicators: Bool
  init(_ axes: Axis.Set = .vertical, showsIndicators: Bool = true, @ViewBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ScrollView {
  var _alwaysBounceAxes: Axis.Set
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct ScrollViewProxy {
  func scrollTo<ID>(_ id: ID, anchor: UnitPoint? = nil) where ID : Hashable
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct ScrollViewReader<Content> : View where Content : View {
  var content: (ScrollViewProxy) -> Content
  @inlinable init(@ViewBuilder content: @escaping (ScrollViewProxy) -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct Section<Parent, Content, Footer> {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Section : View where Parent : View, Content : View, Footer : View {
  init(header: Parent, footer: Footer, @ViewBuilder content: () -> Content)
  var internalBody: some View { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Section where Parent == EmptyView, Content : View, Footer : View {
  init(footer: Footer, @ViewBuilder content: () -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Section where Parent : View, Content : View, Footer == EmptyView {
  init(header: Parent, @ViewBuilder content: () -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Section where Parent == EmptyView, Content : View, Footer == EmptyView {
  init(@ViewBuilder content: () -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct SecureField<Label> : View where Label : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SecureField where Label == Text {
  init(_ titleKey: LocalizedStringKey, text: Binding<String>, onCommit: @escaping () -> Void = {})
  @_disfavoredOverload init<S>(_ title: S, text: Binding<String>, onCommit: @escaping () -> Void = {}) where S : StringProtocol
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct SequenceGesture<First, Second> : Gesture where First : Gesture, Second : Gesture {
  var first: First
  var second: Second
  @inlinable init(_ first: First, _ second: Second)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SequenceGesture.Value : Equatable where First.Value : Equatable, Second.Value : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol Shape : Animatable, View {
  func path(in rect: CGRect) -> Path
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  @inlinable func offset(_ offset: CGSize) -> OffsetShape<Self>
  @inlinable func offset(_ offset: CGPoint) -> OffsetShape<Self>
  @inlinable func offset(x: CGFloat = 0, y: CGFloat = 0) -> OffsetShape<Self>
  @inlinable func scale(x: CGFloat = 1, y: CGFloat = 1, anchor: UnitPoint = .center) -> ScaledShape<Self>
  @inlinable func scale(_ scale: CGFloat, anchor: UnitPoint = .center) -> ScaledShape<Self>
  @inlinable func rotation(_ angle: Angle, anchor: UnitPoint = .center) -> RotatedShape<Self>
  @inlinable func transform(_ transform: CGAffineTransform) -> TransformedShape<Self>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  @inlinable func size(_ size: CGSize) -> some Shape
  
  @inlinable func size(width: CGFloat, height: CGFloat) -> some Shape
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  @inlinable func stroke(style: StrokeStyle) -> some Shape
  
  @inlinable func stroke(lineWidth: CGFloat = 1) -> some Shape
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  @inlinable func fill<S>(_ content: S, style: FillStyle = FillStyle()) -> some View where S : ShapeStyle
  
  @inlinable func fill(style: FillStyle = FillStyle()) -> some View
  
  @inlinable func stroke<S>(_ content: S, style: StrokeStyle) -> some View where S : ShapeStyle
  
  @inlinable func stroke<S>(_ content: S, lineWidth: CGFloat = 1) -> some View where S : ShapeStyle
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  var body: _ShapeView<Self, ForegroundStyle> { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Shape {
  @inlinable func trim(from startFraction: CGFloat = 0, to endFraction: CGFloat = 1) -> some Shape
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol ShapeStyle {
  static func _makeView<S>(view: _GraphValue<_ShapeView<S, Self>>, inputs: _ViewInputs) -> _ViewOutputs where S : Shape
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ShapeStyle {
  @inlinable func `in`(_ rect: CGRect) -> some ShapeStyle
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ShapeStyle {
  func _fillingContainerShape() -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ShapeStyle where Self : View, Self.Body == _ShapeView<Rectangle, Self> {
  var body: _ShapeView<Rectangle, Self> { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct SimultaneousGesture<First, Second> : Gesture where First : Gesture, Second : Gesture {
  var first: First
  var second: Second
  @inlinable init(_ first: First, _ second: Second)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SimultaneousGesture.Value : Equatable where First.Value : Equatable, Second.Value : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SimultaneousGesture.Value : Hashable where First.Value : Hashable, Second.Value : Hashable {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
struct Slider<Label, ValueLabel> : View where Label : View, ValueLabel : View {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension Slider {
  @available(tvOS, unavailable)
  init<V>(value: Binding<V>, in bounds: ClosedRange<V> = 0...1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, minimumValueLabel: ValueLabel, maximumValueLabel: ValueLabel, @ViewBuilder label: () -> Label) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
  init<V>(value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, minimumValueLabel: ValueLabel, maximumValueLabel: ValueLabel, @ViewBuilder label: () -> Label) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension Slider where ValueLabel == EmptyView {
  @available(tvOS, unavailable)
  init<V>(value: Binding<V>, in bounds: ClosedRange<V> = 0...1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
  @available(tvOS, unavailable)
  init<V>(value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }, @ViewBuilder label: () -> Label) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension Slider where Label == EmptyView, ValueLabel == EmptyView {
  @available(tvOS, unavailable)
  init<V>(value: Binding<V>, in bounds: ClosedRange<V> = 0...1, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
  @available(tvOS, unavailable)
  init<V>(value: Binding<V>, in bounds: ClosedRange<V>, step: V.Stride = 1, onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Spacer {
  var minLength: CGFloat?
  @inlinable init(minLength: CGFloat? = nil)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Spacer : View {
}

@available(iOS 13.0, tvOS 13.0, watchOS 7.0, *)
@available(macOS, unavailable)
struct StackNavigationViewStyle : NavigationViewStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen @propertyWrapper struct State<Value> : DynamicProperty {
  @usableFromInline
  var _value: Value
  @usableFromInline
  var _location: AnyLocation<Value>?
  init(wrappedValue value: Value)
  @_alwaysEmitIntoClient init(initialValue value: Value)
  var wrappedValue: Value { get nonmutating set }
  var projectedValue: Binding<Value> { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension State where Value : ExpressibleByNilLiteral {
  @inlinable init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen @propertyWrapper struct StateObject<ObjectType> : DynamicProperty where ObjectType : ObservableObject {
  @usableFromInline
  @frozen enum Storage {
    case initially(() -> ObjectType)
    case object(ObservedObject<ObjectType>)
  }
  @usableFromInline
  var storage: StateObject<ObjectType>.Storage
  @inlinable init(wrappedValue thunk: @autoclosure @escaping () -> ObjectType)
  var wrappedValue: ObjectType { get }
  var projectedValue: ObservedObject<ObjectType>.Wrapper { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct StrokeStyle : Equatable {
  var lineWidth: CGFloat
  var lineCap: CGLineCap
  var lineJoin: CGLineJoin
  var miterLimit: CGFloat
  var dash: [CGFloat]
  var dashPhase: CGFloat
  init(lineWidth: CGFloat = 1, lineCap: CGLineCap = .butt, lineJoin: CGLineJoin = .miter, miterLimit: CGFloat = 10, dash: [CGFloat] = [CGFloat](), dashPhase: CGFloat = 0)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension StrokeStyle : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct StrokedPath : Equatable {
  init(path: Path, style: StrokeStyle)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct SubscriptionView<PublisherType, Content> : View where PublisherType : Publisher, Content : View, PublisherType.Failure == Never {
  var content: Content
  var publisher: PublisherType
  var action: (PublisherType.Output) -> Void
  @inlinable init(content: Content, publisher: PublisherType, action: @escaping (PublisherType.Output) -> Void)
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
struct SwitchToggleStyle : ToggleStyle {
  init()
  @available(iOS 14.0, macOS 11.0, watchOS 7.0, *)
  @available(tvOS, unavailable)
  init(tint: Color)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
struct TabView<SelectionValue, Content> : View where SelectionValue : Hashable, Content : View {
  init(selection: Binding<SelectionValue>?, @ViewBuilder content: () -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
extension TabView where SelectionValue == Int {
  init(@ViewBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol TabViewStyle {
  static func _makeView<SelectionValue>(value: _GraphValue<_TabViewValue<Self, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable
  static func _makeViewList<SelectionValue>(value: _GraphValue<_TabViewValue<Self, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct TagValueTraitKey<V> : _ViewTraitKey where V : Hashable {
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
struct TapGesture : Gesture {
  var count: Int
  init(count: Int = 1)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Text : Equatable {
  @usableFromInline
  @frozen enum Storage : Equatable {
    case verbatim(String)
    case anyTextStorage(AnyTextStorage)
  }
  @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
  @usableFromInline
  @frozen enum Modifier : Equatable {
    case color(Color?)
    case font(Font?)
    case italic
    case weight(Font.Weight?)
    case kerning(CGFloat)
    case tracking(CGFloat)
    case baseline(CGFloat)
    case rounded
    case anyTextModifier(AnyTextModifier)
  }
  @usableFromInline
  var storage: Text.Storage
  @usableFromInline
  var modifiers: [Text.Modifier]
  @inlinable init(verbatim content: String)
  @_disfavoredOverload init<S>(_ content: S) where S : StringProtocol
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text {
  enum TruncationMode {
    case head
    case tail
    case middle
  }
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  enum Case {
    case uppercase
    case lowercase
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text : View {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Text {
  init<Subject>(_ subject: Subject, formatter: Formatter) where Subject : ReferenceConvertible
  init<Subject>(_ subject: Subject, formatter: Formatter) where Subject : NSObject
}

extension Text {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  init(_ image: Image)
}

extension Text {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  func _resolveText(in environment: EnvironmentValues) -> String
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Text {
  var _localizationInfo: _LocalizationInfo { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text {
  init(_ key: LocalizedStringKey, tableName: String? = nil, bundle: Bundle? = nil, comment: StaticString? = nil)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Text {
  struct DateStyle {
    static let time: Text.DateStyle
    static let date: Text.DateStyle
    static let relative: Text.DateStyle
    static let offset: Text.DateStyle
    static let timer: Text.DateStyle
  }
  init(_ date: Date, style: Text.DateStyle)
  init(_ dates: ClosedRange<Date>)
  init(_ interval: DateInterval)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text {
  func foregroundColor(_ color: Color?) -> Text
  func font(_ font: Font?) -> Text
  func fontWeight(_ weight: Font.Weight?) -> Text
  func bold() -> Text
  func italic() -> Text
  func strikethrough(_ active: Bool = true, color: Color? = nil) -> Text
  func underline(_ active: Bool = true, color: Color? = nil) -> Text
  func kerning(_ kerning: CGFloat) -> Text
  func tracking(_ tracking: CGFloat) -> Text
  func baselineOffset(_ baselineOffset: CGFloat) -> Text
  func _stylisticAlternative(_ alternative: Font._StylisticAlternative) -> Text
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text {
  static func + (lhs: Text, rhs: Text) -> Text
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text.TruncationMode : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Text.TruncationMode : Hashable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Text.Case : Equatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Text.Case : Hashable {
}

extension Text.DateStyle : Equatable {
}

extension Text.DateStyle : Codable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen enum TextAlignment : Hashable, CaseIterable {
  case leading
  case center
  case trailing
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct TextField<Label> : View where Label : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension TextField where Label == Text {
  init(_ titleKey: LocalizedStringKey, text: Binding<String>, onEditingChanged: @escaping (Bool) -> Void = { _ in }, onCommit: @escaping () -> Void = {})
  @_disfavoredOverload init<S>(_ title: S, text: Binding<String>, onEditingChanged: @escaping (Bool) -> Void = { _ in }, onCommit: @escaping () -> Void = {}) where S : StringProtocol
  init<T>(_ titleKey: LocalizedStringKey, value: Binding<T>, formatter: Formatter, onEditingChanged: @escaping (Bool) -> Void = { _ in }, onCommit: @escaping () -> Void = {})
  @_disfavoredOverload init<S, T>(_ title: S, value: Binding<T>, formatter: Formatter, onEditingChanged: @escaping (Bool) -> Void = { _ in }, onCommit: @escaping () -> Void = {}) where S : StringProtocol
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol TextFieldStyle {
  associatedtype _Body : View
  func _body(configuration: TextField<Self._Label>) -> Self._Body
  typealias _Label = _TextFieldStyleLabel
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct TitleOnlyLabelStyle : LabelStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct Toggle<Label> : View where Label : View {
  init(isOn: Binding<Bool>, @ViewBuilder label: () -> Label)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Toggle where Label == ToggleStyleConfiguration.Label {
  @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
  init(_ configuration: ToggleStyleConfiguration)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Toggle where Label == Text {
  init(_ titleKey: LocalizedStringKey, isOn: Binding<Bool>)
  @_disfavoredOverload init<S>(_ title: S, isOn: Binding<Bool>) where S : StringProtocol
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol ToggleStyle {
  associatedtype Body : View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = ToggleStyleConfiguration
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct ToggleStyleConfiguration {
  struct Label : View {
  }
  let label: ToggleStyleConfiguration.Label
  @Binding @_projectedValueProperty($isOn) var isOn: Bool { get nonmutating set }
  var _isOn: Binding<Bool>
  var $isOn: Binding<Bool> { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol ToolbarContent {
  associatedtype Body : ToolbarContent
  @ToolbarContentBuilder var body: Self.Body { get }
  static func _makeContent(content: _GraphValue<Self>, inputs: _GraphInputs, resolved: inout _ToolbarItemList)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContent {
  static func _makeContent(content: _GraphValue<Self>, inputs: _GraphInputs, resolved: inout _ToolbarItemList)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@resultBuilder struct ToolbarContentBuilder {
  static func buildBlock<Content>(_ content: Content) -> some ToolbarContent where Content : ToolbarContent
  
  static func buildBlock<Content>(_ content: Content) -> some CustomizableToolbarContent where Content : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> some ToolbarContent where C0 : ToolbarContent, C1 : ToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> some ToolbarContent where C0 : ToolbarContent, C1 : ToolbarContent, C2 : ToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> some ToolbarContent where C0 : ToolbarContent, C1 : ToolbarContent, C2 : ToolbarContent, C3 : ToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> some ToolbarContent where C0 : ToolbarContent, C1 : ToolbarContent, C2 : ToolbarContent, C3 : ToolbarContent, C4 : ToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> some ToolbarContent where C0 : ToolbarContent, C1 : ToolbarContent, C2 : ToolbarContent, C3 : ToolbarContent, C4 : ToolbarContent, C5 : ToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> some ToolbarContent where C0 : ToolbarContent, C1 : ToolbarContent, C2 : ToolbarContent, C3 : ToolbarContent, C4 : ToolbarContent, C5 : ToolbarContent, C6 : ToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> some ToolbarContent where C0 : ToolbarContent, C1 : ToolbarContent, C2 : ToolbarContent, C3 : ToolbarContent, C4 : ToolbarContent, C5 : ToolbarContent, C6 : ToolbarContent, C7 : ToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> some ToolbarContent where C0 : ToolbarContent, C1 : ToolbarContent, C2 : ToolbarContent, C3 : ToolbarContent, C4 : ToolbarContent, C5 : ToolbarContent, C6 : ToolbarContent, C7 : ToolbarContent, C8 : ToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> some ToolbarContent where C0 : ToolbarContent, C1 : ToolbarContent, C2 : ToolbarContent, C3 : ToolbarContent, C4 : ToolbarContent, C5 : ToolbarContent, C6 : ToolbarContent, C7 : ToolbarContent, C8 : ToolbarContent, C9 : ToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> some CustomizableToolbarContent where C0 : CustomizableToolbarContent, C1 : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> some CustomizableToolbarContent where C0 : CustomizableToolbarContent, C1 : CustomizableToolbarContent, C2 : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> some CustomizableToolbarContent where C0 : CustomizableToolbarContent, C1 : CustomizableToolbarContent, C2 : CustomizableToolbarContent, C3 : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> some CustomizableToolbarContent where C0 : CustomizableToolbarContent, C1 : CustomizableToolbarContent, C2 : CustomizableToolbarContent, C3 : CustomizableToolbarContent, C4 : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> some CustomizableToolbarContent where C0 : CustomizableToolbarContent, C1 : CustomizableToolbarContent, C2 : CustomizableToolbarContent, C3 : CustomizableToolbarContent, C4 : CustomizableToolbarContent, C5 : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> some CustomizableToolbarContent where C0 : CustomizableToolbarContent, C1 : CustomizableToolbarContent, C2 : CustomizableToolbarContent, C3 : CustomizableToolbarContent, C4 : CustomizableToolbarContent, C5 : CustomizableToolbarContent, C6 : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> some CustomizableToolbarContent where C0 : CustomizableToolbarContent, C1 : CustomizableToolbarContent, C2 : CustomizableToolbarContent, C3 : CustomizableToolbarContent, C4 : CustomizableToolbarContent, C5 : CustomizableToolbarContent, C6 : CustomizableToolbarContent, C7 : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> some CustomizableToolbarContent where C0 : CustomizableToolbarContent, C1 : CustomizableToolbarContent, C2 : CustomizableToolbarContent, C3 : CustomizableToolbarContent, C4 : CustomizableToolbarContent, C5 : CustomizableToolbarContent, C6 : CustomizableToolbarContent, C7 : CustomizableToolbarContent, C8 : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarContentBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> some CustomizableToolbarContent where C0 : CustomizableToolbarContent, C1 : CustomizableToolbarContent, C2 : CustomizableToolbarContent, C3 : CustomizableToolbarContent, C4 : CustomizableToolbarContent, C5 : CustomizableToolbarContent, C6 : CustomizableToolbarContent, C7 : CustomizableToolbarContent, C8 : CustomizableToolbarContent, C9 : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct ToolbarItem<ID, Content> : ToolbarContent where Content : View {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarItem where ID == Void {
  init(placement: ToolbarItemPlacement = .automatic, @ViewBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarItem : CustomizableToolbarContent where ID == String {
  init(id: String, placement: ToolbarItemPlacement = .automatic, showsByDefault: Bool = true, @ViewBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ToolbarItem : Identifiable where ID : Hashable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct ToolbarItemGroup<Content> : ToolbarContent where Content : View {
  init(placement: ToolbarItemPlacement = .automatic, @ViewBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct ToolbarItemPlacement {
  static let automatic: ToolbarItemPlacement
  static let primaryAction: ToolbarItemPlacement
  static let confirmationAction: ToolbarItemPlacement
  static let cancellationAction: ToolbarItemPlacement
  static let destructiveAction: ToolbarItemPlacement
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct Transaction {
  @usableFromInline
  var plist: PropertyList
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Transaction {
  var isContinuous: Bool
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Transaction {
  init(animation: Animation?)
  var animation: Animation?
  var disablesAnimations: Bool
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Transaction {
  var _scrollViewAnimates: _ScrollViewAnimationMode
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct TransformedShape<Content> : Shape where Content : Shape {
  var shape: Content
  var transform: CGAffineTransform
  @inlinable init(shape: Content, transform: CGAffineTransform)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct TransitionTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct TrimmedPath : Equatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@usableFromInline
struct TupleToolbarContent<T> : ToolbarContent, CustomizableToolbarContent {
  @usableFromInline
  init(_ value: T)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct TupleView<T> : View {
  var value: T
  @inlinable init(_ value: T)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct UnitPoint : Hashable {
  var x: CGFloat
  var y: CGFloat
  @inlinable init()
  @inlinable init(x: CGFloat, y: CGFloat)
  static let zero: UnitPoint
  static let center: UnitPoint
  static let leading: UnitPoint
  static let trailing: UnitPoint
  static let top: UnitPoint
  static let bottom: UnitPoint
  static let topLeading: UnitPoint
  static let topTrailing: UnitPoint
  static let bottomLeading: UnitPoint
  static let bottomTrailing: UnitPoint
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension UnitPoint : Animatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@usableFromInline
class UserDefaultLocation<Value> {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct VStack<Content> : View where Content : View {
  @usableFromInline
  var _tree: _VariadicView.Tree<_VStackLayout, Content>
  @inlinable init(alignment: HorizontalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: () -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol VectorArithmetic : AdditiveArithmetic {
  mutating func scale(by rhs: Double)
  var magnitudeSquared: Double { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct VerticalAlignment : Equatable {
  init(_ id: AlignmentID.Type)
  @usableFromInline
  let key: AlignmentKey
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension VerticalAlignment {
  static let top: VerticalAlignment
  static let center: VerticalAlignment
  static let bottom: VerticalAlignment
  static let firstTextBaseline: VerticalAlignment
  static let lastTextBaseline: VerticalAlignment
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@_typeEraser(AnyView) protocol View {
  static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs) -> Int?
  associatedtype Body : View
  @ViewBuilder var body: Self.Body { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func accessibilityLinkedGroup<ID>(id: ID, in namespace: Namespace.ID) -> some View where ID : Hashable
  
  func accessibilityLabeledPair<ID>(role: AccessibilityLabeledPairRole, id: ID, in namespace: Namespace.ID) -> some View where ID : Hashable
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func redacted(reason: RedactionReasons) -> some View
  
  func unredacted() -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func listStyle<S>(_ style: S) -> some View where S : ListStyle
  
}

extension View {
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  @available(macOS, unavailable)
  func actionSheet<T>(item: Binding<T?>, content: (T) -> ActionSheet) -> some View where T : Identifiable
  
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  @available(macOS, unavailable)
  func actionSheet(isPresented: Binding<Bool>, content: () -> ActionSheet) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func listRowInsets(_ insets: EdgeInsets?) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func alert<Item>(item: Binding<Item?>, content: (Item) -> Alert) -> some View where Item : Identifiable
  
  func alert(isPresented: Binding<Bool>, content: () -> Alert) -> some View
  
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(watchOS, introduced: 6.0, deprecated: 100000.0, renamed: "listItemTint(_:)")
  @available(tvOS, unavailable)
  @inlinable func listRowPlatterColor(_ color: Color?) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func accessibilityAdjustableAction(_ handler: @escaping (AccessibilityAdjustmentDirection) -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func multilineTextAlignment(_ alignment: TextAlignment) -> some View
  
  @inlinable func truncationMode(_ mode: Text.TruncationMode) -> some View
  
  @inlinable func lineSpacing(_ lineSpacing: CGFloat) -> some View
  
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  @available(*, deprecated, renamed: "lineHeightMultiple")
  @inlinable func _lineHeightMultiple(_ multiple: CGFloat) -> some View
  
  @inlinable func allowsTightening(_ flag: Bool) -> some View
  
  @inlinable func lineLimit(_ number: Int?) -> some View
  
  @inlinable func minimumScaleFactor(_ factor: CGFloat) -> some View
  
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  @inlinable func textCase(_ textCase: Text.Case?) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func zIndex(_ value: Double) -> some View
  
}

extension View {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  func _onEnvironmentChange<Value>(_ keyPath: KeyPath<EnvironmentValues, Value>, perform action: @escaping (Value) -> Void) -> some View where Value : Equatable
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func alignmentGuide(_ g: HorizontalAlignment, computeValue: @escaping (ViewDimensions) -> CGFloat) -> some View
  
  @inlinable func alignmentGuide(_ g: VerticalAlignment, computeValue: @escaping (ViewDimensions) -> CGFloat) -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func userActivity(_ activityType: String, isActive: Bool = true, _ update: @escaping (NSUserActivity) -> ()) -> some View
  
  func userActivity<P>(_ activityType: String, element: P?, _ update: @escaping (P, NSUserActivity) -> ()) -> some View
  
  func onContinueUserActivity(_ activityType: String, perform action: @escaping (NSUserActivity) -> ()) -> some View
  
  func onOpenURL(perform action: @escaping (URL) -> ()) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func transformEnvironment<V>(_ keyPath: WritableKeyPath<EnvironmentValues, V>, transform: @escaping (inout V) -> Void) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func transformPreference<K>(_ key: K.Type = K.self, _ callback: @escaping (inout K.Value) -> Void) -> some View where K : PreferenceKey
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func onReceive<P>(_ publisher: P, perform action: @escaping (P.Output) -> Void) -> some View where P : Publisher, P.Failure == Never
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func fixedSize(horizontal: Bool, vertical: Bool) -> some View
  
  @inlinable func fixedSize() -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func flipsForRightToLeftLayoutDirection(_ enabled: Bool) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func toggleStyle<S>(_ style: S) -> some View where S : ToggleStyle
  
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension View {
  @available(macOS, unavailable)
  func navigationBarHidden(_ hidden: Bool) -> some View
  
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "navigationTitle(_:)")
  @available(macOS, unavailable)
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "navigationTitle(_:)")
  @available(watchOS, introduced: 6.0, deprecated: 100000.0, renamed: "navigationTitle(_:)")
  func navigationBarTitle(_ title: Text) -> some View
  
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "navigationTitle(_:)")
  @available(macOS, unavailable)
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "navigationTitle(_:)")
  @available(watchOS, introduced: 6.0, deprecated: 100000.0, renamed: "navigationTitle(_:)")
  func navigationBarTitle(_ titleKey: LocalizedStringKey) -> some View
  
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "navigationTitle(_:)")
  @available(macOS, unavailable)
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "navigationTitle(_:)")
  @available(watchOS, introduced: 6.0, deprecated: 100000.0, renamed: "navigationTitle(_:)")
  @_disfavoredOverload func navigationBarTitle<S>(_ title: S) -> some View where S : StringProtocol
  
  @available(macOS, unavailable)
  func navigationBarBackButtonHidden(_ hidesBackButton: Bool) -> some View
  
}

@available(iOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  func _statusBar(hidden: Bool) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs) -> Int?
}

extension View {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  func _safeAreaInsets(_ insets: EdgeInsets) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func modifier<T>(_ modifier: T) -> ModifiedContent<Self, T>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
  @inlinable func accentColor(_ accentColor: Color?) -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func tabViewStyle<S>(_ style: S) -> some View where S : TabViewStyle
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func contentShape<S>(_ shape: S, eoFill: Bool = false) -> some View where S : Shape
  
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  @inlinable func _listLinkedGroup(_ isLinked: Bool) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func transition(_ t: AnyTransition) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func allowsHitTesting(_ enabled: Bool) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func environment<V>(_ keyPath: WritableKeyPath<EnvironmentValues, V>, _ value: V) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func _defaultContext() -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func accessibilityHidden(_ hidden: Bool) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilityLabel(_ label: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilityValue(_ value: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilityHint(_ hint: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilityInputLabels(_ inputLabels: [Text]) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilityAddTraits(_ traits: AccessibilityTraits) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilityRemoveTraits(_ traits: AccessibilityTraits) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilityIdentifier(_ identifier: String) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilitySortPriority(_ sortPriority: Double) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilityActivationPoint(_ activationPoint: CGPoint) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilityActivationPoint(_ activationPoint: UnitPoint) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func accessibilityLabel(_ labelKey: LocalizedStringKey) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @_disfavoredOverload func accessibilityLabel<S>(_ label: S) -> ModifiedContent<Self, AccessibilityAttachmentModifier> where S : StringProtocol
  func accessibilityValue(_ valueKey: LocalizedStringKey) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @_disfavoredOverload func accessibilityValue<S>(_ value: S) -> ModifiedContent<Self, AccessibilityAttachmentModifier> where S : StringProtocol
  func accessibilityHint(_ hintKey: LocalizedStringKey) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @_disfavoredOverload func accessibilityHint<S>(_ hint: S) -> ModifiedContent<Self, AccessibilityAttachmentModifier> where S : StringProtocol
  func accessibilityInputLabels(_ inputLabelKeys: [LocalizedStringKey]) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @_disfavoredOverload func accessibilityInputLabels<S>(_ inputLabels: [S]) -> ModifiedContent<Self, AccessibilityAttachmentModifier> where S : StringProtocol
}

extension View {
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityHidden(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityHidden(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityHidden(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityHidden(_:)")
  func accessibility(hidden: Bool) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityLabel(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityLabel(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityLabel(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityLabel(_:)")
  func accessibility(label: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityValue(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityValue(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityValue(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityValue(_:)")
  func accessibility(value: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityHint(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityHint(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityHint(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityHint(_:)")
  func accessibility(hint: Text) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityInputLabels(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityInputLabels(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityInputLabels(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityInputLabels(_:)")
  func accessibility(inputLabels: [Text]) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityAddTraits(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityAddTraits(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityAddTraits(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityAddTraits(_:)")
  func accessibility(addTraits traits: AccessibilityTraits) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityRemoveTraits(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityRemoveTraits(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityRemoveTraits(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityRemoveTraits(_:)")
  func accessibility(removeTraits traits: AccessibilityTraits) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityIdentifier(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityIdentifier(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityIdentifier(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityIdentifier(_:)")
  func accessibility(identifier: String) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, deprecated, introduced: 13.0)
  @available(macOS, deprecated, introduced: 10.15)
  @available(tvOS, deprecated, introduced: 13.0)
  @available(watchOS, deprecated, introduced: 6)
  func accessibility(selectionIdentifier: AnyHashable) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilitySortPriority(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilitySortPriority(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilitySortPriority(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilitySortPriority(_:)")
  func accessibility(sortPriority: Double) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  func accessibility(activationPoint: CGPoint) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  @available(watchOS, introduced: 6, deprecated: 100000.0, renamed: "accessibilityActivationPoint(_:)")
  func accessibility(activationPoint: UnitPoint) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func onPreferenceChange<K>(_ key: K.Type = K.self, perform action: @escaping (K.Value) -> Void) -> some View where K : PreferenceKey, K.Value : Equatable
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func accessibilityScrollAction(_ handler: @escaping (Edge) -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func gesture<T>(_ gesture: T, including mask: GestureMask = .all) -> some View where T : Gesture
  
  func highPriorityGesture<T>(_ gesture: T, including mask: GestureMask = .all) -> some View where T : Gesture
  
  func simultaneousGesture<T>(_ gesture: T, including mask: GestureMask = .all) -> some View where T : Gesture
  
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  func digitalCrownRotation<V>(_ binding: Binding<V>, from minValue: V, through maxValue: V, by stride: V.Stride? = nil, sensitivity: DigitalCrownRotationalSensitivity = .high, isContinuous: Bool = false, isHapticFeedbackEnabled: Bool = true) -> some View where V : BinaryFloatingPoint, V.Stride : BinaryFloatingPoint
  
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  func digitalCrownRotation<V>(_ binding: Binding<V>) -> some View where V : BinaryFloatingPoint
  
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  func _digitalCrownRotation<V>(_ binding: Binding<V>, configuration: _DigitalCrownConfiguration) -> some View where V : BinaryFloatingPoint
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func mask<Mask>(_ mask: Mask) -> some View where Mask : View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func background<Background>(_ background: Background, alignment: Alignment = .center) -> some View where Background : View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func overlay<Overlay>(_ overlay: Overlay, alignment: Alignment = .center) -> some View where Overlay : View
  
  @inlinable func border<S>(_ content: S, width: CGFloat = 1) -> some View where S : ShapeStyle
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func sheet<Item, Content>(item: Binding<Item?>, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View where Item : Identifiable, Content : View
  
  func sheet<Content>(isPresented: Binding<Bool>, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View where Content : View
  
}

@available(iOS 14.0, tvOS 14.0, watchOS 7.0, *)
@available(macOS, unavailable)
extension View {
  func fullScreenCover<Item, Content>(item: Binding<Item?>, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View where Item : Identifiable, Content : View
  
  @available(*, deprecated, renamed: "fullScreenCover(item:onDismiss:content:)")
  func _cover<Item, Content>(item: Binding<Item?>, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View where Item : Identifiable, Content : View
  
  func fullScreenCover<Content>(isPresented: Binding<Bool>, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View where Content : View
  
  @available(*, deprecated, renamed: "fullScreenCover(isPresented:onDismiss:content:)")
  func _cover<Content>(isPresented: Binding<Bool>, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View where Content : View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  @inlinable func _colorMonochrome(_ color: Color, amount: Double = 1, bias: Double = 0) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func aspectRatio(_ aspectRatio: CGFloat? = nil, contentMode: ContentMode) -> some View
  
  @inlinable func aspectRatio(_ aspectRatio: CGSize, contentMode: ContentMode) -> some View
  
  @inlinable func scaledToFit() -> some View
  
  @inlinable func scaledToFill() -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func defaultAppStorage(_ store: UserDefaults) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func padding(_ insets: EdgeInsets) -> some View
  
  @inlinable func padding(_ edges: Edge.Set = .all, _ length: CGFloat? = nil) -> some View
  
  @inlinable func padding(_ length: CGFloat) -> some View
  
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  func _tightPadding() -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func buttonStyle<S>(_ style: S) -> some View where S : PrimitiveButtonStyle
  
}

extension View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func offset(_ offset: CGSize) -> some View
  
  @inlinable func offset(x: CGFloat = 0, y: CGFloat = 0) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func position(_ position: CGPoint) -> some View
  
  @inlinable func position(x: CGFloat = 0, y: CGFloat = 0) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func _addingBackgroundGroup() -> some View
  
  func _addingBackgroundLayer() -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func projectionEffect(_ transform: ProjectionTransform) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func transformEffect(_ transform: CGAffineTransform) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func rotationEffect(_ angle: Angle, anchor: UnitPoint = .center) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func scaleEffect(_ scale: CGSize, anchor: UnitPoint = .center) -> some View
  
  @inlinable func scaleEffect(_ s: CGFloat, anchor: UnitPoint = .center) -> some View
  
  @inlinable func scaleEffect(x: CGFloat = 1.0, y: CGFloat = 1.0, anchor: UnitPoint = .center) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func blur(radius: CGFloat, opaque: Bool = false) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func brightness(_ amount: Double) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func onAppear(perform action: (() -> Void)? = nil) -> some View
  
  @inlinable func onDisappear(perform action: (() -> Void)? = nil) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func colorInvert() -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func _colorMatrix(_ matrix: _ColorMatrix) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func colorMultiply(_ color: Color) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func contrast(_ amount: Double) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func grayscale(_ amount: Double) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func hueRotation(_ angle: Angle) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
extension View {
  @available(watchOS 7.0, *)
  func navigationViewStyle<S>(_ style: S) -> some View where S : NavigationViewStyle
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func _containerShape<T>(_ shape: T) -> some View where T : InsettableShape
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func luminanceToAlpha() -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func saturation(_ amount: Double) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func opacity(_ opacity: Double) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func itemProvider(_ action: Optional<() -> NSItemProvider?>) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func animation<V>(_ animation: Animation?, value: V) -> some View where V : Equatable
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func blendMode(_ blendMode: BlendMode) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func buttonStyle<S>(_ style: S) -> some View where S : ButtonStyle
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func textFieldStyle<S>(_ style: S) -> some View where S : TextFieldStyle
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func drawingGroup(opaque: Bool = false, colorMode: ColorRenderingMode = .nonLinear) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func compositingGroup() -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func shadow(color: Color = Color(.sRGBLinear, white: 0, opacity: 0.33), radius: CGFloat, x: CGFloat = 0, y: CGFloat = 0) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
extension View {
  func tabItem<V>(@ViewBuilder _ label: () -> V) -> some View where V : View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func anchorPreference<A, K>(key _: K.Type = K.self, value: Anchor<A>.Source, transform: @escaping (Anchor<A>) -> K.Value) -> some View where K : PreferenceKey
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func moveDisabled(_ isDisabled: Bool) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func rotation3DEffect(_ angle: Angle, axis: (x: CGFloat, y: CGFloat, z: CGFloat), anchor: UnitPoint = .center, anchorZ: CGFloat = 0, perspective: CGFloat = 1) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func _scrollable(stretchChildrenToMaxHeight: Bool = false, horizontal: TextAlignment? = .center, vertical: _VAlignment? = .center) -> _ScrollView<_AligningContentProvider<Self>>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "preferredColorScheme(_:)")
  @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "preferredColorScheme(_:)")
  @available(tvOS, introduced: 13.0, deprecated: 100000.0, renamed: "preferredColorScheme(_:)")
  @available(watchOS, introduced: 6.0, deprecated: 100000.0, renamed: "preferredColorScheme(_:)")
  @inlinable func colorScheme(_ colorScheme: ColorScheme) -> some View
  
  @available(macOS 11.0, *)
  @inlinable func imageScale(_ scale: Image.Scale) -> some View
  
  @inlinable func font(_ font: Font?) -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func progressViewStyle<S>(_ style: S) -> some View where S : ProgressViewStyle
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func previewDevice(_ value: PreviewDevice?) -> some View
  
  @inlinable func previewLayout(_ value: PreviewLayout) -> some View
  
  @inlinable func previewDisplayName(_ value: String?) -> some View
  
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  @inlinable func previewContext<C>(_ value: C) -> some View where C : PreviewContext
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func _detached<T, U>(with _: T.Type = T.self, _ transform: @escaping (_DetachedPlaceholder<T>) -> U) -> some View where T : _Detachable, U : View
  
  @inlinable func _detached<T>(_ transform: @escaping (_DetachedPlaceholder<_EmptyDetached>) -> T) -> some View where T : View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  @inlinable func listItemTint(_ tint: ListItemTint?) -> some View
  
  @inlinable func listItemTint(_ tint: Color?) -> some View
  
}

extension View {
  func labelsHidden() -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func tag<V>(_ tag: V) -> some View where V : Hashable
  
  @inlinable func _untagged() -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func pickerStyle<S>(_ style: S) -> some View where S : PickerStyle
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func id<ID>(_ id: ID) -> some View where ID : Hashable
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func clipShape<S>(_ shape: S, style: FillStyle = FillStyle()) -> some View where S : Shape
  
  @inlinable func clipped(antialiased: Bool = false) -> some View
  
  @inlinable func cornerRadius(_ radius: CGFloat, antialiased: Bool = true) -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  @inlinable func matchedGeometryEffect<ID>(id: ID, in namespace: Namespace.ID, properties: MatchedGeometryProperties = .frame, anchor: UnitPoint = .center, isSource: Bool = true) -> some View where ID : Hashable
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func coordinateSpace<T>(name: T) -> some View where T : Hashable
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func environmentObject<T>(_ object: T) -> some View where T : ObservableObject
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View where Self : Equatable {
  @inlinable func equatable() -> EquatableView<Self>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func deleteDisabled(_ isDisabled: Bool) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func layoutPriority(_ value: Double) -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func _ignoresAutomaticPadding(_ ignoresPadding: Bool) -> some View
  
  func _automaticPadding(_ edgeInsets: EdgeInsets? = nil) -> some View
  
}

@available(*, deprecated, message: "Use Label & LabelStyle instead.")
extension View {
  func _actionLabelStyle<S>(_ style: S) -> some View where S : _ActionLabelStyle
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  @inlinable func accessibilityIgnoresInvertColors(_ active: Bool = true) -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  @inlinable func _onBindingChange<Value>(_ binding: Binding<Value>, perform action: @escaping (Value) -> Void) -> some View where Value : Equatable
  
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 14.0, *)
extension View {
  @available(tvOS, unavailable)
  func onLongPressGesture(minimumDuration: Double = 0.5, maximumDistance: CGFloat = 10, pressing: ((Bool) -> Void)? = nil, perform action: @escaping () -> Void) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 14.0, *)
@available(watchOS, introduced: 6.0, deprecated: 7.0)
extension View {
  func contextMenu<MenuItems>(@ViewBuilder menuItems: () -> MenuItems) -> some View where MenuItems : View
  
}

@available(iOS, introduced: 13.0, deprecated: 100000.0, message: "Use `contextMenu(menuItems:)` instead.")
@available(macOS, introduced: 10.15, deprecated: 100000.0, message: "Use `contextMenu(menuItems:)` instead.")
@available(tvOS, unavailable)
@available(watchOS, introduced: 6.0, deprecated: 7.0)
extension View {
  func contextMenu<MenuItems>(_ contextMenu: ContextMenu<MenuItems>?) -> some View where MenuItems : View
  
}

@available(tvOS 14.0, watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
extension View {
  func prefersDefaultFocus(_ prefersDefaultFocus: Bool = true, in namespace: Namespace.ID) -> some View
  
  func focusScope(_ namespace: Namespace.ID) -> some View
  
}

@available(iOS, introduced: 13.0, deprecated: 100000.0, message: "Use ignoresSafeArea(_:edges:) instead.")
@available(macOS, introduced: 10.15, deprecated: 100000.0, message: "Use ignoresSafeArea(_:edges:) instead.")
@available(tvOS, introduced: 13.0, deprecated: 100000.0, message: "Use ignoresSafeArea(_:edges:) instead.")
@available(watchOS, introduced: 6.0, deprecated: 100000.0, message: "Use ignoresSafeArea(_:edges:) instead.")
extension View {
  @inlinable func edgesIgnoringSafeArea(_ edges: Edge.Set) -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  @inlinable func ignoresSafeArea(_ regions: SafeAreaRegions = .all, edges: Edge.Set = .all) -> some View
  
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  @inlinable func defaultWheelPickerItemHeight(_ height: CGFloat) -> some View
  
}

@available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
extension View {
  func onTapGesture(count: Int = 1, perform action: @escaping () -> Void) -> some View
  
}

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func preferredColorScheme(_ colorScheme: ColorScheme?) -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func toolbar<Content>(@ViewBuilder content: () -> Content) -> some View where Content : View
  
  func toolbar<Content>(@ToolbarContentBuilder content: () -> Content) -> some View where Content : ToolbarContent
  
  func toolbar<Content>(id: String, @ToolbarContentBuilder content: () -> Content) -> some View where Content : CustomizableToolbarContent
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func navigationTitle(_ title: Text) -> some View
  
  func navigationTitle(_ titleKey: LocalizedStringKey) -> some View
  
  @_disfavoredOverload func navigationTitle<S>(_ title: S) -> some View where S : StringProtocol
  
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  func navigationTitle<V>(@ViewBuilder _ title: () -> V) -> some View where V : View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func transformAnchorPreference<A, K>(key _: K.Type = K.self, value: Anchor<A>.Source, transform: @escaping (inout K.Value, Anchor<A>) -> Void) -> some View where K : PreferenceKey
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func _identified<I>(by identifier: I) -> some View where I : Hashable
  
}

extension View {
  @available(watchOS 6.0, *)
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  @inlinable func textContentType(_ textContentType: WKTextContentType?) -> some View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  @inlinable func onChange<V>(of value: V, perform action: @escaping (V) -> Void) -> some View where V : Equatable
  
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension View {
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  func _navigationDestination<Content>(isPresented: Binding<Bool>, @ViewBuilder content: () -> Content) -> some View where Content : View
  
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  func _navigationDestination<Item, Content>(item: Binding<Item?>, @ViewBuilder content: @escaping (Item) -> Content) -> some View where Item : Identifiable, Content : View
  
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  func _navigationDestination(isPresented: Binding<Bool>, storyboardName: String) -> some View
  
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  func _navigationDestination<Item>(item: Binding<Item?>, storyboardName: String) -> some View where Item : Identifiable
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func overlayPreferenceValue<Key, T>(_ key: Key.Type = Key.self, @ViewBuilder _ transform: @escaping (Key.Value) -> T) -> some View where Key : PreferenceKey, T : View
  
  @inlinable func backgroundPreferenceValue<Key, T>(_ key: Key.Type = Key.self, @ViewBuilder _ transform: @escaping (Key.Value) -> T) -> some View where Key : PreferenceKey, T : View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func hidden() -> some View
  
}

extension View {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  func focusedValue<Value>(_ keyPath: WritableKeyPath<FocusedValues, Value?>, _ value: Value) -> some View
  
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension View {
  func gaugeStyle<S>(_ style: S) -> some View where S : GaugeStyle
  
}

extension View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func frame(width: CGFloat? = nil, height: CGFloat? = nil, alignment: Alignment = .center) -> some View
  
  @available(*, deprecated, message: "Please pass one or more parameters.")
  @inlinable func frame() -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func frame(minWidth: CGFloat? = nil, idealWidth: CGFloat? = nil, maxWidth: CGFloat? = nil, minHeight: CGFloat? = nil, idealHeight: CGFloat? = nil, maxHeight: CGFloat? = nil, alignment: Alignment = .center) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func _onButtonGesture(pressing: ((Bool) -> Void)? = nil, perform action: @escaping () -> Void) -> some View
  
}

@available(macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@available(iOS, unavailable)
extension View {
  func focusable(_ isFocusable: Bool = true, onFocusChange: @escaping (Bool) -> Void = { _ in }) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func accessibilityElement(children: AccessibilityChildBehavior = .ignore) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func preference<K>(key: K.Type = K.self, value: K.Value) -> some View where K : PreferenceKey
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func transaction(_ transform: @escaping (inout Transaction) -> Void) -> some View
  
  @inlinable func animation(_ animation: Animation?) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func _trait<K>(_ key: K.Type, _ value: K.Value) -> some View where K : _ViewTraitKey
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func foregroundColor(_ color: Color?) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  func accessibilityAction(_ actionKind: AccessibilityActionKind = .default, _ handler: @escaping () -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  func accessibilityAction(named name: Text, _ handler: @escaping () -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func accessibilityAction(named nameKey: LocalizedStringKey, _ handler: @escaping () -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier>
  @_disfavoredOverload func accessibilityAction<S>(named name: S, _ handler: @escaping () -> Void) -> ModifiedContent<Self, AccessibilityAttachmentModifier> where S : StringProtocol
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func help(_ textKey: LocalizedStringKey) -> some View
  
  func help(_ text: Text) -> some View
  
  @_disfavoredOverload func help<S>(_ text: S) -> some View where S : StringProtocol
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func listRowBackground<V>(_ view: V?) -> some View where V : View
  
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
  func labelStyle<S>(_ style: S) -> some View where S : LabelStyle
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
  @inlinable func disabled(_ disabled: Bool) -> some View
  
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@resultBuilder struct ViewBuilder {
  @_alwaysEmitIntoClient static func buildBlock() -> EmptyView
  @_alwaysEmitIntoClient static func buildBlock<Content>(_ content: Content) -> Content where Content : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildIf<Content>(_ content: Content?) -> Content? where Content : View
  @_alwaysEmitIntoClient static func buildEither<TrueContent, FalseContent>(first: TrueContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : View, FalseContent : View
  @_alwaysEmitIntoClient static func buildEither<TrueContent, FalseContent>(second: FalseContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : View, FalseContent : View
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildLimitedAvailability<Content>(_ content: Content) -> AnyView where Content : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> TupleView<(C0, C1)> where C0 : View, C1 : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> TupleView<(C0, C1, C2)> where C0 : View, C1 : View, C2 : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> TupleView<(C0, C1, C2, C3)> where C0 : View, C1 : View, C2 : View, C3 : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> TupleView<(C0, C1, C2, C3, C4)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> TupleView<(C0, C1, C2, C3, C4, C5)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> TupleView<(C0, C1, C2, C3, C4, C5, C6)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View, C6 : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View, C6 : View, C7 : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View, C6 : View, C7 : View, C8 : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewBuilder {
  @_alwaysEmitIntoClient static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8, _ c9: C9) -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)> where C0 : View, C1 : View, C2 : View, C3 : View, C4 : View, C5 : View, C6 : View, C7 : View, C8 : View, C9 : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct ViewDimensions {
  var width: CGFloat { get }
  var height: CGFloat { get }
  subscript(guide: HorizontalAlignment) -> CGFloat { get }
  subscript(guide: VerticalAlignment) -> CGFloat { get }
  subscript(explicit guide: HorizontalAlignment) -> CGFloat? { get }
  subscript(explicit guide: VerticalAlignment) -> CGFloat? { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewDimensions : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol ViewModifier {
  static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
  associatedtype Body : View
  func body(content: Self.Content) -> Self.Body
  typealias Content = _ViewModifier_Content<Self>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewModifier {
  static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewModifier where Self.Body == Never {
  func body(content: Self.Content) -> Self.Body
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewModifier where Self : _GraphInputsModifier, Self.Body == Never {
  static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewModifier {
  @inlinable func concat<T>(_ modifier: T) -> ModifiedContent<Self, T>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewModifier {
  @inlinable func transaction(_ transform: @escaping (inout Transaction) -> Void) -> some ViewModifier
  
  @inlinable func animation(_ animation: Animation?) -> some ViewModifier
  
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@propertyWrapper struct WKExtensionDelegateAdaptor<DelegateType> : DynamicProperty where DelegateType : NSObject, DelegateType : WKExtensionDelegate {
  var wrappedValue: DelegateType { get }
  init(_ delegateType: DelegateType.Type = DelegateType.self)
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension WKExtensionDelegateAdaptor where DelegateType : ObservableObject {
  init(_ delegateType: DelegateType.Type = DelegateType.self)
  var projectedValue: ObservedObject<DelegateType>.Wrapper { get }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
class WKHostingController<Body> : WKInterfaceController where Body : View {
  var body: Body { get }
  func setNeedsBodyUpdate()
  func updateBodyIfNeeded()
  func _performScrollTest(startOffset: CGFloat = 0.0, iterations: Int = 0, delta: CGFloat = 0.0, length: CGFloat = 0.0, completion: (() -> Void)? = nil)
  var _scrollViewProxy: _ScrollViewProxy? { get }
  final var _rendererConfiguration: _RendererConfiguration
  final var _rendererObject: AnyObject? { get }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
protocol WKInterfaceObjectRepresentable : View where Self.Body == Never {
  associatedtype WKInterfaceObjectType : WKInterfaceObject
  func makeWKInterfaceObject(context: Self.Context) -> Self.WKInterfaceObjectType
  func updateWKInterfaceObject(_ wkInterfaceObject: Self.WKInterfaceObjectType, context: Self.Context)
  static func dismantleWKInterfaceObject(_ wkInterfaceObject: Self.WKInterfaceObjectType, coordinator: Self.Coordinator)
  associatedtype Coordinator = Void
  func makeCoordinator() -> Self.Coordinator
  func _identifiedViewTree(in wkInterfaceObject: Self.WKInterfaceObjectType) -> _IdentifiedViewTree
  typealias Context = WKInterfaceObjectRepresentableContext<Self>
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension WKInterfaceObjectRepresentable {
  static func dismantleWKInterfaceObject(_ wkInterfaceObject: Self.WKInterfaceObjectType, coordinator: Self.Coordinator)
  static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  func _identifiedViewTree(in wkInterfaceObject: Self.WKInterfaceObjectType) -> _IdentifiedViewTree
  var body: Never { get }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension WKInterfaceObjectRepresentable where Self.Coordinator == Void {
  func makeCoordinator() -> Self.Coordinator
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct WKInterfaceObjectRepresentableContext<Representable> where Representable : WKInterfaceObjectRepresentable {
  let coordinator: Representable.Coordinator
  var transaction: Transaction { get }
  var environment: EnvironmentValues { get }
}

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct WKNotificationScene<Content, Controller> : Scene where Content : View, Controller : WKUserNotificationHostingController<Content> {
  init(controller: Controller.Type = Controller.self, category: String)
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
class WKUserNotificationHostingController<Body> : WKUserNotificationInterfaceController where Body : View {
  @available(watchOS 7.0, *)
  class var isInteractive: Bool { get }
  @available(watchOS 7.0, *)
  class var sashColor: Color? { get }
  @available(watchOS 7.0, *)
  class var wantsSashBlur: Bool { get }
  @available(watchOS 7.0, *)
  class var titleColor: Color? { get }
  @available(watchOS 7.0, *)
  class var subtitleColor: Color? { get }
  @available(watchOS 7.0, *)
  class var coalescedDescriptionFormat: String? { get }
  var body: Body { get }
}

@available(iOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct WheelPickerStyle : PickerStyle {
  init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct WindowGroup<Content> : Scene where Content : View {
  init(id: String, @ViewBuilder content: () -> Content)
  @_disfavoredOverload init(_ title: Text, id: String, @ViewBuilder content: () -> Content)
  init(_ titleKey: LocalizedStringKey, id: String, @ViewBuilder content: () -> Content)
  @_disfavoredOverload init<S>(_ title: S, id: String, @ViewBuilder content: () -> Content) where S : StringProtocol
  init(@ViewBuilder content: () -> Content)
  @_disfavoredOverload init(_ title: Text, @ViewBuilder content: () -> Content)
  init(_ titleKey: LocalizedStringKey, @ViewBuilder content: () -> Content)
  @_disfavoredOverload init<S>(_ title: S, @ViewBuilder content: () -> Content) where S : StringProtocol
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@usableFromInline
struct ZIndexTraitKey : _ViewTraitKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct ZStack<Content> : View where Content : View {
  @usableFromInline
  var _tree: _VariadicView.Tree<_ZStackLayout, Content>
  @inlinable init(alignment: Alignment = .center, @ViewBuilder content: () -> Content)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _AccessibilityIgnoresInvertColorsViewModifier {
  var active: Bool
  @inlinable init(active: Bool)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _AccessibilityIgnoresInvertColorsViewModifier : ViewModifier {
}

@available(*, deprecated, message: "Use Label instead.")
struct _ActionLabel<Icon, Title> : View where Icon : View, Title : View {
  var icon: Icon
  var title: Title
  init(@ViewBuilder icon: () -> Icon, @ViewBuilder title: () -> Title)
}

@available(*, deprecated, message: "Use Label instead.")
extension _ActionLabel where Title == Text {
  init(_ title: LocalizedStringKey, @ViewBuilder icon: () -> Icon)
  @_disfavoredOverload init<S>(_ title: S, @ViewBuilder icon: () -> Icon) where S : StringProtocol
}

@available(*, deprecated, message: "Use Label instead.")
extension _ActionLabel where Icon == Image, Title == Text {
  init(_ title: LocalizedStringKey, icon: String)
  init(_ title: LocalizedStringKey, systemIcon: String)
  @_disfavoredOverload init<S>(_ title: S, icon: String) where S : StringProtocol
  @_disfavoredOverload init<S>(_ title: S, systemIcon: String) where S : StringProtocol
}

@available(*, deprecated, message: "Use Label instead.")
extension _ActionLabel where Icon == _ActionLabelStyleConfiguration.Icon, Title == _ActionLabelStyleConfiguration.Title {
  init(_ configuration: _ActionLabelStyleConfiguration)
}

@available(*, deprecated, message: "Use Label & LabelStyle instead.")
protocol _ActionLabelStyle {
  associatedtype Body : View
  func makeBody(configuration: Self.Configuration) -> Self.Body
  typealias Configuration = _ActionLabelStyleConfiguration
}

@available(*, deprecated, message: "Use Label & LabelStyle instead.")
struct _ActionLabelStyleConfiguration {
  struct Icon : View {
  }
  let icon: _ActionLabelStyleConfiguration.Icon
  struct Title : View {
  }
  let title: _ActionLabelStyleConfiguration.Title
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _AligningContentProvider<Content> : _ScrollableContentProvider where Content : View {
  var content: Content
  var horizontal: TextAlignment?
  var vertical: _VAlignment?
  init(content: Content, horizontal: TextAlignment? = nil, vertical: _VAlignment? = nil)
  struct AligningContentProviderLayout {
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _AligningContentProvider.AligningContentProviderLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _AligningContentProvider.AligningContentProviderLayout : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _AlignmentLayout {
  var horizontal: TextAlignment?
  var vertical: _VAlignment?
  @inlinable init(horizontal: TextAlignment? = nil, vertical: _VAlignment? = nil)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _AlignmentLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _AlignmentLayout : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _AlignmentWritingModifier : ViewModifier {
  @usableFromInline
  let key: AlignmentKey
  @usableFromInline
  let computeValue: (ViewDimensions) -> CGFloat
  @inlinable init(key: AlignmentKey, computeValue: @escaping (ViewDimensions) -> CGFloat)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _AllowsHitTestingModifier : ViewModifier, Equatable {
  var allowsHitTesting: Bool
  @inlinable init(allowsHitTesting: Bool)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _AnchorTransformModifier<AnchorValue, Key> : ViewModifier where Key : PreferenceKey {
  var anchor: Anchor<AnchorValue>.Source
  var transform: (inout Key.Value, Anchor<AnchorValue>) -> Void
  @inlinable init(anchor: Anchor<AnchorValue>.Source, transform: @escaping (inout Key.Value, Anchor<AnchorValue>) -> Void)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _AnchorWritingModifier<AnchorValue, Key> : ViewModifier where Key : PreferenceKey {
  var anchor: Anchor<AnchorValue>.Source
  var transform: (Anchor<AnchorValue>) -> Key.Value
  @inlinable init(anchor: Anchor<AnchorValue>.Source, transform: @escaping (Anchor<AnchorValue>) -> Key.Value)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _AnchoredShapeStyle<S> : ShapeStyle where S : ShapeStyle {
  var style: S
  var bounds: CGRect
  @inlinable init(style: S, bounds: CGRect)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _AnimatableView : Animatable, View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _AnimatableView {
  static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _AnimationModifier<Value> : ViewModifier where Value : Equatable {
  var animation: Animation?
  var value: Value
  @inlinable init(animation: Animation?, value: Value)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _AnimationModifier : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _AppearanceActionModifier : ViewModifier {
  var appear: (() -> Void)?
  var disappear: (() -> Void)?
  @inlinable init(appear: (() -> Void)? = nil, disappear: (() -> Void)? = nil)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol _ArchivableView : Decodable, Encodable, View {
  func sizeThatFits(in proposedSize: _ProposedSize) -> CGSize
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ArchivableView {
  static func registerDecoder()
  func sizeThatFits(in proposedSize: _ProposedSize) -> CGSize
  static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs) -> Int?
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol _ArchivableViewModifier : Decodable, Encodable, ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ArchivableViewModifier {
  static func registerDecoder()
  static func _makeView(modifier: _GraphValue<Self>, inputs: _ViewInputs, body: @escaping (_Graph, _ViewInputs) -> _ViewOutputs) -> _ViewOutputs
  static func _makeViewList(modifier: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _ArchivedView : View {
  init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
final class _ArchivedViewHost<Content, Delegate> where Content : View, Delegate : _ArchivedViewHostDelegate {
  final var content: Content
  final var environment: EnvironmentValues
  final var size: CGSize
  final var safeAreaInsets: EdgeInsets
  final var auxiliaryData: Data?
  final var delegate: Delegate
  final var encodesCustomFontsAsURLs: Bool
  init(content: Content, delegate: Delegate)
  final func archiveIfChanged() throws -> Data?
  final func archiveStates(count: Int, body: (Int) -> Void) throws -> Data
  final func archiveStates(to file: FileHandle, count: Int, body: (Int) -> Void) throws
  final func archiveStates(to url: URL, count: Int, body: (Int) -> Void) throws
  final func forEachIdentifiedView(body: (_IdentifiedViewProxy) -> Void)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol _ArchivedViewHostDelegate {
  mutating func viewDataNeedsUpdate()
  mutating func failedToEncodeView(type: Any.Type)
  mutating func filteredImage(_ image: CGImage) throws -> CGImage
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ArchivedViewHostDelegate {
  mutating func failedToEncodeView(type: Any.Type)
  mutating func filteredImage(_ image: CGImage) throws -> CGImage
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _ArchivedViewStates : RandomAccessCollection {
  init()
  init(data: Data) throws
  init(contentsOf url: URL) throws
  init(contentsOf file: FileHandle) throws
  func state(at index: Int) throws -> _ArchivedView
  var auxiliaryData: Data? { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _AspectRatioLayout {
  var aspectRatio: CGFloat?
  var contentMode: ContentMode
  @inlinable init(aspectRatio: CGFloat? = nil, contentMode: ContentMode)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _AspectRatioLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _AspectRatioLayout : ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _BackdropEffect<Backdrop> where Backdrop : View {
  @usableFromInline
  var backdrop: Backdrop
  @inlinable init(backdrop: Backdrop)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _BackdropEffect : ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _BackdropEffectPlaceholder {
  @inlinable init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _BackdropEffectPlaceholder : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _BackgroundModifier<Background> : ViewModifier where Background : View {
  var background: Background
  var alignment: Alignment
  @inlinable init(background: Background, alignment: Alignment = .center)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BackgroundModifier : Equatable where Background : Equatable {
}

@available(iOS, introduced: 14.0, deprecated: 14.0, renamed: "BackgroundStyle")
@available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "BackgroundStyle")
@available(tvOS, introduced: 14.0, deprecated: 14.0, renamed: "BackgroundStyle")
@available(watchOS, introduced: 7.0, deprecated: 7.0, renamed: "BackgroundStyle")
@frozen struct _BackgroundStyle {
  @inlinable init()
}

@available(iOS, introduced: 14.0, deprecated: 14.0, renamed: "BackgroundStyle")
@available(macOS, introduced: 11.0, deprecated: 11.0, renamed: "BackgroundStyle")
@available(tvOS, introduced: 14.0, deprecated: 14.0, renamed: "BackgroundStyle")
@available(watchOS, introduced: 7.0, deprecated: 7.0, renamed: "BackgroundStyle")
extension _BackgroundStyle : ShapeStyle {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _Benchmark : _Test {
  func measure(host: _BenchmarkHost) -> [Double]
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _BenchmarkHost : AnyObject {
  func _renderForTest(interval: Double)
  func _performScrollTest(startOffset: CGFloat, iterations: Int, delta: CGFloat, length: CGFloat, completion: (() -> Void)?)
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension _BenchmarkHost {
  func _started(test: _PerformanceTest)
  func _finished(test: _PerformanceTest)
  func _failed(test: _PerformanceTest)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BenchmarkHost {
  func _performScrollTest(startOffset: CGFloat, iterations: Int, delta: CGFloat, length: CGFloat, completion: (() -> Void)?)
  func measureAction(action: () -> Void) -> Double
  func measureRender(interval: Double = 1.0 / 60.0) -> Double
  func measureRenders(seconds: Double) -> [Double]
  func measureRenders(duration: Double) -> [Double]
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BenchmarkHost {
  func viewForIdentifier<I, V>(_ identifier: I, _ type: V.Type) -> V? where I : Hashable, V : View
  func stateForIdentifier<I, S, V>(_ id: I, type _: S.Type, in _: V.Type) -> Binding<S>? where I : Hashable, V : View
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _BindingActionModifier<Value> : ViewModifier where Value : Equatable {
  var binding: Binding<Value>
  var action: (Value) -> Void
  @inlinable init(binding: Binding<Value>, action: @escaping (Value) -> Void)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _BlendModeEffect : Equatable {
  var blendMode: BlendMode
  @inlinable init(blendMode: BlendMode)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BlendModeEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BlendModeEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _BlurEffect : Equatable {
  var radius: CGFloat
  var isOpaque: Bool
  @inlinable init(radius: CGFloat, opaque: Bool)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BlurEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BlurEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _BrightnessEffect : Equatable {
  var amount: Double
  @inlinable init(amount: Double)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BrightnessEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _BrightnessEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ButtonGesture : Gesture {
  var action: () -> Void
  var pressingAction: ((Bool) -> Void)?
  init(action: @escaping () -> Void, pressing: ((Bool) -> Void)? = nil)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _CALayerView<LayerType> : View where LayerType : AnyObject {
  var update: (LayerType) -> Void
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _CALayerView {
  init(type: LayerType.Type, onUpdate update: @escaping (LayerType) -> Void)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ChangedGesture<Content> where Content : Gesture, Content.Value : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ChangedGesture : Gesture {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _CircleLayout {
  let radius: CGFloat
  init(radius: CGFloat)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _CircleLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _CircleLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ClipEffect<ClipShape> where ClipShape : Shape {
  var shape: ClipShape
  var style: FillStyle
  @inlinable init(shape: ClipShape, style: FillStyle = FillStyle())
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ClipEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ClipEffect : ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _CodableTransition : Codable {
  init?(_ base: AnyTransition)
  var base: AnyTransition { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ColorInvertEffect : Equatable {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ColorInvertEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ColorInvertEffect : ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _ColorMatrix : Equatable, Codable {
  var m11: Float
  var m12: Float
  var m13: Float
  var m14: Float
  var m15: Float
  var m21: Float
  var m22: Float
  var m23: Float
  var m24: Float
  var m25: Float
  var m31: Float
  var m32: Float
  var m33: Float
  var m34: Float
  var m35: Float
  var m41: Float
  var m42: Float
  var m43: Float
  var m44: Float
  var m45: Float
  @inlinable init()
  init(color: Color, in environment: EnvironmentValues)
  static func * (a: _ColorMatrix, b: _ColorMatrix) -> _ColorMatrix
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _ColorMatrixEffect {
  var matrix: _ColorMatrix
  @inlinable init(matrix: _ColorMatrix)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ColorMatrixEffect : Animatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ColorMatrixEffect : ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _ColorMonochromeEffect : EnvironmentalModifier {
  var color: Color
  var amount: Double
  var bias: Double
  @inlinable init(color: Color, amount: Double = 1, bias: Double = 0)
  struct _Resolved {
  }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ColorMonochromeEffect._Resolved : Animatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ColorMonochromeEffect._Resolved : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ColorMultiplyEffect : EnvironmentalModifier, Equatable {
  var color: Color
  @inlinable init(color: Color)
  struct _Resolved {
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ColorMultiplyEffect._Resolved : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ColorMultiplyEffect._Resolved : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _CompositingGroupEffect : Equatable {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _CompositingGroupEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _CompositingGroupEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ConditionalContent<TrueContent, FalseContent> {
  @usableFromInline
  @frozen enum Storage {
    case trueContent(TrueContent)
    case falseContent(FalseContent)
  }
  @usableFromInline
  let storage: _ConditionalContent<TrueContent, FalseContent>.Storage
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ConditionalContent : View where TrueContent : View, FalseContent : View {
  @usableFromInline
  init(storage: _ConditionalContent<TrueContent, FalseContent>.Storage)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ContainedScrollViewKey {
  typealias Value = _ScrollViewProxy?
  static func reduce(value: inout _ContainedScrollViewKey.Value, nextValue: () -> _ContainedScrollViewKey.Value)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ContentShapeModifier<ContentShape> : ViewModifier where ContentShape : Shape {
  var shape: ContentShape
  var eoFill: Bool
  @inlinable init(shape: ContentShape, eoFill: Bool = false)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ContrastEffect : Equatable {
  var amount: Double
  @inlinable init(amount: Double)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ContrastEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ContrastEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _CoordinateSpaceModifier<Name> : ViewModifier, Equatable where Name : Hashable {
  var name: Name
  @inlinable init(name: Name)
  static func _makeViewInputs(modifier: _GraphValue<_CoordinateSpaceModifier<Name>>, inputs: inout _ViewInputs)
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
enum _CrownHapticsConfiguration {
  case none
  case infiniteScrolling
  case finiteScrolling(CGFloat, CGFloat)
  case platters([_CrownHapticsConfiguration.Notch])
  struct Notch {
    enum Strength {
      case weak
      case standard
      case strong
    }
    init(from: CGFloat, to: CGFloat, strength: _CrownHapticsConfiguration.Notch.Strength)
  }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension _CrownHapticsConfiguration.Notch.Strength : Equatable {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension _CrownHapticsConfiguration.Notch.Strength : Hashable {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
protocol _CrownHapticsConfigurationProvider {
  func makeConfiguration() -> _CrownHapticsConfiguration
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension _CrownHapticsConfigurationProvider {
  @available(iOS, unavailable)
  @available(macOS, unavailable)
  @available(tvOS, unavailable)
  func notchRadius(forHeight notchHeight: CGFloat) -> CGFloat
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _DataProvider {
  associatedtype Data
  var data: Self.Data { get }
  associatedtype Token
  mutating func addObserver(_ observer: _DataProviderObserver) -> Self.Token
  mutating func removeObserver(token: Self.Token)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _DataProviderObserver {
  func dataWillChange()
  func dataDidChange()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _DataProviderView : View where Self.Body == Never {
  associatedtype Provider : _DataProvider
  func initDataProvider() -> Self.Provider
  associatedtype DataBody : View
  func body(data: Self.Provider.Data) -> Self.DataBody
  func updateDataProvider(_ dataProvider: inout Self.Provider)
  func needsUpdateForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Bool
  func transactionForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Transaction
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _DataProviderView where Self.Provider.Data : Equatable {
  func needsUpdateForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Bool
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _DataProviderView {
  func updateDataProvider(_ dataProvider: inout Self.Provider)
  func needsUpdateForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Bool
  func transactionForDataChange(oldData: Self.Provider.Data, newData: Self.Provider.Data) -> Transaction
  static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  var body: Never { get }
}

@available(macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@available(iOS, unavailable)
struct _DefaultFocusModifier : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _DelayedPreferenceView<Key, Content> : View where Key : PreferenceKey, Content : View {
  var transform: (_PreferenceValue<Key>) -> Content
  @inlinable init(transform: @escaping (_PreferenceValue<Key>) -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _Detachable {
  static func matches<K>(key: K.Type) -> Bool where K : PreferenceKey
  static var detachedProperties: _DetachableProperties { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Detachable {
  static var detachedProperties: _DetachableProperties { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _DetachableProperties : OptionSet {
  static let position: _DetachableProperties
  static let dimensions: _DetachableProperties
  static let environment: _DetachableProperties
  static let transaction: _DetachableProperties
  static let layout: _DetachableProperties
  static let all: _DetachableProperties
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _DetachedKey<Key> : _Detachable where Key : PreferenceKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _DetachedPlaceholder<Detached> : View where Detached : _Detachable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _DetachedView<Detached, Content, Child> : View where Detached : _Detachable, Content : View, Child : View {
  var content: Content
  var transform: (_DetachedPlaceholder<Detached>) -> Child
  @inlinable init(content: Content, transform: @escaping (_DetachedPlaceholder<Detached>) -> Child)
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
enum _DeviceVariant : Equatable {
  case compact
  case regular
  case h394
  case h448
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension _DeviceVariant : Hashable {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct _DigitalCrownConfiguration {
  var _isScrollIndicatorAlwaysOnScreen: Bool
  var _onlyUseMinorDetents: Bool
  var _decelerationRate: _DigitalCrownDecelerationRate
  var _hapticsStrength: _CrownHapticsConfiguration.Notch.Strength
  var isContinuous: Bool
  var isHapticFeedbackEnabled: Bool
  var rotationalSensitivity: DigitalCrownRotationalSensitivity
  init(minValue: Double, maxValue: Double, stride: Double.Stride? = nil)
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
enum _DigitalCrownDecelerationRate {
  case immediate
  case fast
  case normal
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension _DigitalCrownDecelerationRate : Equatable {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension _DigitalCrownDecelerationRate : Hashable {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct _DigitalCrownModifier : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _DrawingGroupEffect : ViewModifier, Equatable {
  var isOpaque: Bool
  var colorMode: ColorRenderingMode
  init(opaque: Bool = false, colorMode: ColorRenderingMode = .nonLinear)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _DynamicPropertyBuffer {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _EmptyDetached : _Detachable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _EmptyScene : Scene {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _EndedGesture<Content> where Content : Gesture {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _EndedGesture : Gesture {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _EnvironmentKeyTransformModifier<Value> : ViewModifier, _GraphInputsModifier {
  var keyPath: WritableKeyPath<EnvironmentValues, Value>
  var transform: (inout Value) -> Void
  @inlinable init(keyPath: WritableKeyPath<EnvironmentValues, Value>, transform: @escaping (inout Value) -> Void)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _EnvironmentKeyWritingModifier<Value> : ViewModifier, _GraphInputsModifier {
  var keyPath: WritableKeyPath<EnvironmentValues, Value>
  var value: Value
  @inlinable init(keyPath: WritableKeyPath<EnvironmentValues, Value>, value: Value)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _EnvironmentKeyWritingModifier : _SceneModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _EventDebugTriggers : OptionSet {
  static let responders: _EventDebugTriggers
  static let sendEvents: _EventDebugTriggers
  static let eventBindings: _EventDebugTriggers
  static let eventPhases: _EventDebugTriggers
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _EventDirections : OptionSet {
  static let left: _EventDirections
  static let right: _EventDirections
  static let up: _EventDirections
  static let down: _EventDirections
  static let horizontal: _EventDirections
  static let vertical: _EventDirections
  static let all: _EventDirections
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _FixedSizeLayout {
  @inlinable init(horizontal: Bool = true, vertical: Bool = true)
  @usableFromInline
  var horizontal: Bool
  @usableFromInline
  var vertical: Bool
}

extension _FixedSizeLayout {
}

extension _FixedSizeLayout : Animatable {
}

extension _FixedSizeLayout : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _FlexFrameLayout {
  let minWidth: CGFloat?
  let idealWidth: CGFloat?
  let maxWidth: CGFloat?
  let minHeight: CGFloat?
  let idealHeight: CGFloat?
  let maxHeight: CGFloat?
  let alignment: Alignment
  @usableFromInline
  init(minWidth: CGFloat? = nil, idealWidth: CGFloat? = nil, maxWidth: CGFloat? = nil, minHeight: CGFloat? = nil, idealHeight: CGFloat? = nil, maxHeight: CGFloat? = nil, alignment: Alignment)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _FlexFrameLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _FlexFrameLayout : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _FlipForRTLEffect : ViewModifier, Equatable {
  var isEnabled: Bool
  @inlinable init(isEnabled: Bool)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _FlipForRTLEffect {
}

@available(macOS 11.0, watchOS 7.0, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
struct _FocusSystem {
  @available(macOS, introduced: 11.0, deprecated: 11.0, message: "Prototype SPI, do not use.")
  func resetToDefault()
}

@available(iOS 13.4, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _FocusableModifier : ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _ForegroundLayerColorMatrixEffect {
  var foreground: _ColorMatrix
  var background: _ColorMatrix
  @inlinable init(foreground: _ColorMatrix = .init(), background: _ColorMatrix = .init())
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ForegroundLayerColorMatrixEffect : ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _ForegroundLayerViewModifier {
  @inlinable init()
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ForegroundLayerViewModifier : Animatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ForegroundLayerViewModifier : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _FormatSpecifiable : Equatable {
  associatedtype _Arg : CVarArg
  var _arg: Self._Arg { get }
  var _specifier: String { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _FrameLayout {
  let width: CGFloat?
  let height: CGFloat?
  let alignment: Alignment
  @usableFromInline
  init(width: CGFloat?, height: CGFloat?, alignment: Alignment)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _FrameLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _FrameLayout : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _GestureInputs {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _GestureOutputs<Value> {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _Graph {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _GraphInputs {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _GraphInputsModifier {
  static func _makeInputs(modifier: _GraphValue<Self>, inputs: inout _GraphInputs)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _GraphValue<Value> : Equatable {
  subscript<U>(keyPath: KeyPath<Value, U>) -> _GraphValue<U> { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _GrayscaleEffect : Equatable {
  var amount: Double
  @inlinable init(amount: Double)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _GrayscaleEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _GrayscaleEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _HSpacer {
  var minWidth: CGFloat?
  @inlinable init(minWidth: CGFloat? = nil)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _HSpacer : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _HStackLayout {
  var alignment: VerticalAlignment
  var spacing: CGFloat?
  @inlinable init(alignment: VerticalAlignment = .center, spacing: CGFloat? = nil)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _HStackLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _HStackLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _HiddenModifier : ViewModifier {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _HueRotationEffect : Equatable {
  var angle: Angle
  @inlinable init(angle: Angle)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _HueRotationEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _HueRotationEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _IdentifiedModifier<Identifier> : ViewModifier, Equatable where Identifier : Hashable {
  var identifier: Identifier
  @inlinable init(identifier: Identifier)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _IdentifiedViewProxy {
  var identifier: AnyHashable
  var boundingRect: CGRect { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum _IdentifiedViewTree {
  case empty
  case proxy(_IdentifiedViewProxy)
  case array([_IdentifiedViewTree])
  func forEach(_ body: (_IdentifiedViewProxy) -> Void)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _IdentifiedViewsKey {
  typealias Value = _IdentifiedViewTree
  static let defaultValue: _IdentifiedViewTree
  static func reduce(value: inout _IdentifiedViewsKey.Value, nextValue: () -> _IdentifiedViewsKey.Value)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _IgnoredByLayoutEffect<Base> : GeometryEffect where Base : GeometryEffect {
  var base: Base
  @inlinable init(_ base: Base)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _IgnoredByLayoutEffect : Equatable where Base : Equatable {
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct _IsLinkedGroupTraitKey {
  static let _linkedGroup: _IsLinkedGroupTraitKey
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _LayoutTraits : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _LayoutTraits : CustomStringConvertible {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ListValue<Style, SelectionValue> where Style : ListStyle, SelectionValue : Hashable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
enum _LocalizationInfo : Equatable {
  case none
  case verbatim(String)
  case localized(key: String, tableName: String? = nil, bundle: Bundle? = nil, hasFormatting: Bool = false)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _LuminanceToAlphaEffect : Equatable {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _LuminanceToAlphaEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _LuminanceToAlphaEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _MapGesture<Content, Value> where Content : Gesture {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _MapGesture : Gesture {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _MaskEffect<Mask> : ViewModifier where Mask : View {
  var mask: Mask
  @inlinable init(mask: Mask)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _MaskEffect : Equatable where Mask : Equatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _MatchedGeometryEffect<ID> where ID : Hashable {
  var id: ID
  var namespace: Namespace.ID
  var args: (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)
  @inlinable init(id: ID, namespace: Namespace.ID, properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _MatchedGeometryEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
struct _NavigationViewStyleConfiguration {
  struct Content : View {
  }
  let content: _NavigationViewStyleConfiguration.Content
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _OffsetEffect : GeometryEffect, Equatable {
  var offset: CGSize
  @inlinable init(offset: CGSize)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _OpacityEffect : Equatable {
  var opacity: Double
  @inlinable init(opacity: Double)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _OpacityEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _OpacityEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _OverlayLayout {
  init(contentIndex: Int? = nil)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _OverlayLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _OverlayLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _OverlayLayout : _VariadicView_ViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _OverlayModifier<Overlay> : ViewModifier where Overlay : View {
  var overlay: Overlay
  var alignment: Alignment
  @inlinable init(overlay: Overlay, alignment: Alignment = .center)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _OverlayModifier : Equatable where Overlay : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _PaddingLayout {
  var edges: Edge.Set
  var insets: EdgeInsets?
  @inlinable init(edges: Edge.Set = .all, insets: EdgeInsets?)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PaddingLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PaddingLayout : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _PagingView<Views> : View where Views : RandomAccessCollection, Views.Element : View, Views.Index : Hashable {
  var views: Views
  var page: Binding<Views.Index>?
  var config: _PagingViewConfig
  var scrollViewConfig: _ScrollViewConfig
  init(config: _PagingViewConfig = _PagingViewConfig(), page: Binding<Views.Index>? = nil, views: Views)
  init(direction: _PagingViewConfig.Direction, page: Binding<Views.Index>? = nil, views: Views)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _PagingViewConfig : Equatable {
  enum Direction {
    case vertical
    case horizontal
  }
  var direction: _PagingViewConfig.Direction
  var size: CGFloat?
  var margin: CGFloat
  var spacing: CGFloat
  var constrainedDeceleration: Bool
  init(direction: _PagingViewConfig.Direction = .horizontal, size: CGFloat? = nil, margin: CGFloat = 0, spacing: CGFloat = 0, constrainedDeceleration: Bool = true)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PagingViewConfig.Direction : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PagingViewConfig.Direction : Hashable {
}

protocol _PerformanceTest : _Test {
  var name: String { get }
  func runTest(host: _BenchmarkHost, options: [AnyHashable : Any])
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _PickerValue<Style, SelectionValue> where Style : PickerStyle, SelectionValue : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _Placement : Equatable {
  var proposedSize: CGSize
  var anchor: UnitPoint
  var anchorPosition: CGPoint
  init(proposedSize: CGSize, anchoring anchor: UnitPoint = .topLeading, at anchorPosition: CGPoint)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _PositionLayout {
  var position: CGPoint
  @inlinable init(position: CGPoint)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PositionLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PositionLayout : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _PreferenceActionModifier<Key> : ViewModifier where Key : PreferenceKey, Key.Value : Equatable {
  var action: (Key.Value) -> Void
  @inlinable init(action: @escaping (Key.Value) -> Void)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _PreferenceReadingView<Key, Content> : View where Key : PreferenceKey, Content : View {
  var value: _PreferenceValue<Key>
  var transform: (Key.Value) -> Content
  @inlinable init(value: _PreferenceValue<Key>, transform: @escaping (Key.Value) -> Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _PreferenceTransformModifier<Key> : ViewModifier where Key : PreferenceKey {
  var transform: (inout Key.Value) -> Void
  @inlinable init(key _: Key.Type = Key.self, transform: @escaping (inout Key.Value) -> Void)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _PreferenceTransformModifier : _SceneModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _PreferenceValue<Key> where Key : PreferenceKey {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PreferenceValue {
  @inlinable func _force<T>(_ transform: @escaping (Key.Value) -> T) -> _PreferenceReadingView<Key, T> where T : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _PreferenceWritingModifier<Key> : ViewModifier where Key : PreferenceKey {
  var value: Key.Value
  @inlinable init(key: Key.Type = Key.self, value: Key.Value)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PreferenceWritingModifier : Equatable where Key.Value : Equatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _PreferenceWritingModifier : _SceneModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _Preview {
  let id: Int
  let contentType: String
  var content: AnyView { get }
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  var context: PreviewContext? { get }
  var displayName: String? { get }
  var device: PreviewDevice? { get }
  var layout: PreviewLayout { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
class _PreviewHost : ObservableObject {
  var environment: EnvironmentValues
  var focusedValues: FocusedValues
  static func makeHost(providerType: Any.Type) -> _PreviewHost?
  func invalidatePreviews()
  func invalidateEverything()
  var previews: [_Preview] { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _PreviewProvider {
  static var _previews: Any { get }
  static var _platform: PreviewPlatform? { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _PreviewProvider {
  static var _allPreviews: [_Preview] { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _PreviewProviderLocator {
  static var previewProviders: [_PreviewProvider.Type] { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ProjectionEffect : GeometryEffect, Equatable {
  var transform: ProjectionTransform
  @inlinable init(transform: ProjectionTransform)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ProposedSize {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ProposedSize : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _PushPopTransactionModifier<Content> : ViewModifier where Content : ViewModifier {
  var content: Content
  var base: _TransactionModifier
  @inlinable init(content: Content, transform: @escaping (inout Transaction) -> Void)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _RendererConfiguration {
  enum Renderer {
    case `default`
    indirect case rasterized(_RendererConfiguration.RasterizationOptions = .init())
  }
  var renderer: _RendererConfiguration.Renderer
  var minFrameInterval: Double
  init(renderer: _RendererConfiguration.Renderer = .default)
  static func rasterized(_ options: _RendererConfiguration.RasterizationOptions = .init()) -> _RendererConfiguration
  struct RasterizationOptions {
    var colorMode: ColorRenderingMode
    var rbColorMode: Int32?
    var rendersAsynchronously: Bool
    var isOpaque: Bool
    var drawsPlatformViews: Bool
    var prefersDisplayCompositing: Bool
    var maxDrawableCount: Int
    init()
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _Rotation3DEffect : GeometryEffect, Equatable {
  var angle: Angle
  var axis: (x: CGFloat, y: CGFloat, z: CGFloat)
  var anchor: UnitPoint
  var anchorZ: CGFloat
  var perspective: CGFloat
  @inlinable init(angle: Angle, axis: (x: CGFloat, y: CGFloat, z: CGFloat), anchor: UnitPoint = .center, anchorZ: CGFloat = 0, perspective: CGFloat = 1)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _RotationEffect : GeometryEffect, Equatable {
  var angle: Angle
  var anchor: UnitPoint
  @inlinable init(angle: Angle, anchor: UnitPoint = .center)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _SafeAreaIgnoringLayout {
  var edges: Edge.Set
  @inlinable init(edges: Edge.Set = .all)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _SafeAreaIgnoringLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _SafeAreaIgnoringLayout : ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _SafeAreaRegionsIgnoringLayout {
  var regions: SafeAreaRegions
  var edges: Edge.Set
  @inlinable init(regions: SafeAreaRegions, edges: Edge.Set)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _SafeAreaRegionsIgnoringLayout : Animatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _SafeAreaRegionsIgnoringLayout : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _SaturationEffect : Equatable {
  var amount: Double
  @inlinable init(amount: Double)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _SaturationEffect : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _SaturationEffect : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ScaleEffect : GeometryEffect, Equatable {
  var scale: CGSize
  var anchor: UnitPoint
  @inlinable init(scale: CGSize, anchor: UnitPoint = .center)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@available(*, deprecated, message: "Use @ScaledMetric")
@propertyWrapper struct _ScaledValue : DynamicProperty {
  init(wrappedValue: CGFloat, textStyle: Font.TextStyle = .body)
  var wrappedValue: CGFloat { get }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _SceneInputs {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
protocol _SceneModifier {
  associatedtype Body : Scene
  func body(content: Self.SceneContent) -> Self.Body
  typealias SceneContent = _SceneModifier_Content<Self>
  static func _makeScene(modifier: _GraphValue<Self>, inputs: _SceneInputs, body: @escaping (_Graph, _SceneInputs) -> _SceneOutputs) -> _SceneOutputs
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _SceneModifier where Self.Body == Never {
  func body(content: Self.SceneContent) -> Self.Body
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _SceneModifier where Self : _GraphInputsModifier, Self.Body == Never {
  static func _makeScene(modifier: _GraphValue<Self>, inputs: _SceneInputs, body: @escaping (_Graph, _SceneInputs) -> _SceneOutputs) -> _SceneOutputs
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _SceneModifier {
  @inlinable func concat<T>(_ modifier: T) -> ModifiedContent<Self, T>
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _SceneModifier {
  static func _makeScene(modifier: _GraphValue<Self>, inputs: _SceneInputs, body: @escaping (_Graph, _SceneInputs) -> _SceneOutputs) -> _SceneOutputs
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _SceneModifier_Content<Modifier> : Scene where Modifier : _SceneModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _SceneOutputs {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ScrollLayout : Equatable {
  var contentOffset: CGPoint
  var size: CGSize
  var visibleRect: CGRect
  init(contentOffset: CGPoint, size: CGSize, visibleRect: CGRect)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ScrollView<Provider> : View where Provider : _ScrollableContentProvider {
  var contentProvider: Provider
  var config: _ScrollViewConfig
  init(contentProvider: Provider, config: _ScrollViewConfig = _ScrollViewConfig())
  struct Main : View {
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollView.Main {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum _ScrollViewAnimationMode {
  case never
  case discreteChanges
  case always
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollViewAnimationMode : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollViewAnimationMode : Hashable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _ScrollViewBoundsModifier<Result> : ViewModifier where Result : ViewModifier {
  var transform: (CGRect?) -> Result
  @inlinable init(transform: @escaping (CGRect?) -> Result)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ScrollViewConfig {
  static let decelerationRateNormal: Double
  static let decelerationRateFast: Double
  enum ContentOffset {
    case initially(CGPoint)
    case binding(Binding<CGPoint>)
  }
  var contentOffset: _ScrollViewConfig.ContentOffset
  var contentInsets: EdgeInsets
  var decelerationRate: Double
  var alwaysBounceVertical: Bool
  var alwaysBounceHorizontal: Bool
  var gestureProvider: _ScrollViewGestureProvider
  var stopDraggingImmediately: Bool
  var isScrollEnabled: Bool
  var showsHorizontalIndicator: Bool
  var showsVerticalIndicator: Bool
  var indicatorInsets: EdgeInsets
  var _crownHapticsConfiguration: _CrownHapticsConfiguration?
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _ScrollViewGestureProvider {
  func scrollableDirections(proxy: _ScrollViewProxy) -> _EventDirections
  func gestureMask(proxy: _ScrollViewProxy) -> GestureMask
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollViewGestureProvider {
  func defaultScrollableDirections(proxy: _ScrollViewProxy) -> _EventDirections
  func defaultGestureMask(proxy: _ScrollViewProxy) -> GestureMask
  func scrollableDirections(proxy: _ScrollViewProxy) -> _EventDirections
  func gestureMask(proxy: _ScrollViewProxy) -> GestureMask
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ScrollViewProxy : Equatable {
  var config: _ScrollViewConfig { get }
  var contentOffset: CGPoint
  var minContentOffset: CGPoint { get }
  var maxContentOffset: CGPoint { get }
  var contentSize: CGSize { get }
  var pageSize: CGSize { get }
  var visibleRect: CGRect { get }
  var isDragging: Bool { get }
  var isDecelerating: Bool { get }
  var isScrolling: Bool { get }
  var isScrollingHorizontally: Bool { get }
  var isScrollingVertically: Bool { get }
  func setContentOffset(_ newOffset: CGPoint, animated: Bool, completion: ((Bool) -> Void)? = nil)
  func scrollRectToVisible(_ rect: CGRect, animated: Bool, completion: ((Bool) -> Void)? = nil)
  func contentOffsetOfNextPage(_ directions: _EventDirections) -> CGPoint
}

struct _ScrollViewRoot<P> : View where P : _ScrollableContentProvider {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _ScrollableContentProvider {
  associatedtype ScrollableContent : View
  var scrollableContent: Self.ScrollableContent { get }
  associatedtype Root : View
  func root(scrollView: _ScrollView<Self>.Main) -> Self.Root
  func decelerationTarget(contentOffset: CGPoint, originalContentOffset: CGPoint, velocity: _Velocity<CGSize>, size: CGSize) -> CGPoint?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableContentProvider {
  func decelerationTarget(contentOffset: CGPoint, originalContentOffset: CGPoint, velocity: _Velocity<CGSize>, size: CGSize) -> CGPoint?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableContentProvider {
  func root(scrollView: _ScrollView<Self>.Main) -> _ScrollViewRoot<Self>
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _ScrollableLayout : Animatable {
  associatedtype StateType = Void
  static func initialState() -> Self.StateType
  func update(state: inout Self.StateType, proxy: inout _ScrollableLayoutProxy)
  associatedtype ItemModifier : ViewModifier = EmptyModifier
  func modifier(for item: _ScrollableLayoutItem, layout: _ScrollLayout, state: Self.StateType) -> Self.ItemModifier
  func decelerationTarget(contentOffset: CGPoint, originalContentOffset: CGPoint, velocity: _Velocity<CGSize>, size: CGSize) -> CGPoint?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableLayout where Self.StateType == Void {
  static func initialState() -> Self.StateType
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableLayout where Self.ItemModifier == EmptyModifier {
  func modifier(for item: _ScrollableLayoutItem, layout: _ScrollLayout, state: Self.StateType) -> Self.ItemModifier
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableLayout {
  func decelerationTarget(contentOffset: CGPoint, originalContentOffset: CGPoint, velocity: _Velocity<CGSize>, size: CGSize) -> CGPoint?
  subscript<T>(data: T) -> _ScrollView<_ScrollableLayoutView<T, Self>> where T : RandomAccessCollection, T.Element : View, T.Index : Hashable { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableLayout where Self : RandomAccessCollection, Self.Element : View, Self.Index : Hashable {
  subscript() -> _ScrollView<_ScrollableLayoutView<Self, Self>> { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ScrollableLayoutItem : Equatable {
  var id: AnyHashable
  var proposedSize: CGSize { get }
  var anchor: UnitPoint { get }
  var anchorPosition: CGPoint { get }
  init(id: AnyHashable, proposedSize: CGSize, anchoring anchor: UnitPoint = .topLeading, at position: CGPoint)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ScrollableLayoutProxy : RandomAccessCollection {
  let size: CGSize
  let visibleRect: CGRect
  var visibleItems: [_ScrollableLayoutItem]
  var contentSize: CGSize
  var validRect: CGRect
  mutating func size(of identifier: AnyHashable, in size: CGSize, validatingContent: Bool = true) -> CGSize
  mutating func size(at index: Int, in size: CGSize, validatingContent: Bool = true) -> CGSize
  mutating func removeSize(of identifier: AnyHashable)
  mutating func removeAllSizes()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ScrollableLayoutView<Data, Layout> : View where Data : RandomAccessCollection, Layout : _ScrollableLayout, Data.Element : View, Data.Index : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ScrollableLayoutView : _ScrollableContentProvider {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ShadowEffect : EnvironmentalModifier, Equatable {
  var color: Color
  var radius: CGFloat
  var offset: CGSize
  @inlinable init(color: Color, radius: CGFloat, offset: CGSize)
  struct _Resolved {
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ShadowEffect._Resolved : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ShadowEffect._Resolved : ViewModifier {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _ShadowView<Content> : View where Content : Shape {
  var shape: Content
  var effect: _ShadowEffect
  @inlinable init(shape: Content, effect: _ShadowEffect)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ShapeView<Content, Style> : View where Content : Shape, Style : ShapeStyle {
  var shape: Content
  var style: Style
  var fillStyle: FillStyle
  @inlinable init(shape: Content, style: Style, fillStyle: FillStyle = FillStyle())
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _SizedShape<S> : Shape where S : Shape {
  var shape: S
  var size: CGSize
  @inlinable init(shape: S, size: CGSize)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _StrokedShape<S> : Shape where S : Shape {
  var shape: S
  var style: StrokeStyle
  @inlinable init(shape: S, style: StrokeStyle)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _SymmetricallyScaledText : View {
  var source: Text
  var reference: Text
  init(source: Text, reference: Text)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _TabViewValue<Style, SelectionValue> where Style : TabViewStyle, SelectionValue : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _Test {
  func setUpTest()
  func tearDownTest()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Test {
  func setUpTest()
  func tearDownTest()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _TestApp {
  init()
  func run() -> Never
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _TestApp {
  func runBenchmarks(_ benchmarks: [_Benchmark]) -> Never
}

extension _TestApp {
  @available(iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  @available(macOS, unavailable)
  func runPerformanceTests(_ tests: [_PerformanceTest]) -> Never
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _TextBaselineRelativeSpacer {
  var minLength: CGFloat?
  @inlinable init(minLength: CGFloat? = nil)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _TextBaselineRelativeSpacer : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _TextFieldStyleLabel : View {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _ToolbarItemList {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _TraitWritingModifier<Trait> where Trait : _ViewTraitKey {
  let value: Trait.Value
  @inlinable init(value: Trait.Value)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _TraitWritingModifier : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _TransactionModifier : ViewModifier, _GraphInputsModifier {
  var transform: (inout Transaction) -> Void
  @inlinable init(transform: @escaping (inout Transaction) -> Void)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _TransformEffect : GeometryEffect, Equatable {
  var transform: CGAffineTransform
  @inlinable init(transform: CGAffineTransform)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _TrimmedShape<S> : Shape where S : Shape {
  var shape: S
  var startFraction: CGFloat
  var endFraction: CGFloat
  @inlinable init(shape: S, startFraction: CGFloat = 0, endFraction: CGFloat = 1)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@usableFromInline
struct _TupleScene<T> : Scene {
  @usableFromInline
  var value: T
  @usableFromInline
  init(_ value: T)
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
protocol _UIHostingViewable : AnyObject {
  var rootView: AnyView { get set }
  func _render(seconds: Double)
  func _forEachIdentifiedView(body: (_IdentifiedViewProxy) -> Void)
  func sizeThatFits(in size: CGSize) -> CGSize
  var _disableSafeArea: Bool { get set }
  var _rendererConfiguration: _RendererConfiguration { get set }
  var _rendererObject: AnyObject? { get }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
protocol _UIViewControllerRepresentable : View where Self.Body == Never {
  associatedtype UIViewControllerType : NSObject
  func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType
  func updateUIViewController(_ uiViewController: Self.UIViewControllerType, context: Self.Context)
  static func dismantleUIViewController(_ uiViewController: Self.UIViewControllerType, coordinator: Self.Coordinator)
  associatedtype Coordinator = Void
  func makeCoordinator() -> Self.Coordinator
  func _identifiedViewTree(in uiViewController: Self.UIViewControllerType) -> _IdentifiedViewTree
  typealias Context = _UIViewControllerRepresentableContext<Self>
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension _UIViewControllerRepresentable where Self.Coordinator == Void {
  func makeCoordinator() -> Self.Coordinator
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension _UIViewControllerRepresentable {
  static func dismantleUIViewController(_ uiViewController: Self.UIViewControllerType, coordinator: Self.Coordinator)
  static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  func _identifiedViewTree(in uiViewController: Self.UIViewControllerType) -> _IdentifiedViewTree
  var body: Never { get }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct _UIViewControllerRepresentableContext<Representable> where Representable : _UIViewControllerRepresentable {
  let coordinator: Representable.Coordinator
  var transaction: Transaction { get }
  var environment: EnvironmentValues { get }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
protocol _UIViewRepresentable : View where Self.Body == Never {
  associatedtype UIViewType : NSObject
  func makeUIView(context: Self.Context) -> Self.UIViewType
  func updateUIView(_ uiView: Self.UIViewType, context: Self.Context)
  static func dismantleUIView(_ uiView: Self.UIViewType, coordinator: Self.Coordinator)
  associatedtype Coordinator = Void
  func makeCoordinator() -> Self.Coordinator
  func _identifiedViewTree(in uiView: Self.UIViewType) -> _IdentifiedViewTree
  func _overrideSizeThatFits(_ size: inout CGSize, in proposedSize: _ProposedSize, uiView: Self.UIViewType)
  func _overrideLayoutTraits(_ layoutTraits: inout _LayoutTraits, for uiView: Self.UIViewType)
  typealias Context = _UIViewRepresentableContext<Self>
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension _UIViewRepresentable where Self.Coordinator == Void {
  func makeCoordinator() -> Self.Coordinator
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension _UIViewRepresentable {
  static func dismantleUIView(_ uiView: Self.UIViewType, coordinator: Self.Coordinator)
  static func _makeView(view: _GraphValue<Self>, inputs: _ViewInputs) -> _ViewOutputs
  static func _makeViewList(view: _GraphValue<Self>, inputs: _ViewListInputs) -> _ViewListOutputs
  func _identifiedViewTree(in uiView: Self.UIViewType) -> _IdentifiedViewTree
  func _overrideSizeThatFits(_ size: inout CGSize, in proposedSize: _ProposedSize, uiView: Self.UIViewType)
  func _overrideLayoutTraits(_ layoutTraits: inout _LayoutTraits, for uiView: Self.UIViewType)
  var body: Never { get }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct _UIViewRepresentableContext<Representable> where Representable : _UIViewRepresentable {
  let coordinator: Representable.Coordinator
  var transaction: Transaction { get }
  var environment: EnvironmentValues { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _UnaryViewAdaptor<Content> : View where Content : View {
  var content: Content
  @inlinable init(_ content: Content)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen enum _VAlignment {
  case top
  case center
  case bottom
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VAlignment : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VAlignment : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _VSpacer {
  var minHeight: CGFloat?
  @inlinable init(minHeight: CGFloat? = nil)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VSpacer : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _VStackLayout {
  var alignment: HorizontalAlignment
  var spacing: CGFloat?
  @inlinable init(alignment: HorizontalAlignment = .center, spacing: CGFloat? = nil)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VStackLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VStackLayout : Animatable {
}

extension _VStackLayout : _VariadicView_ViewRoot {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
@frozen struct _ValueActionModifier<Value> : ViewModifier where Value : Equatable {
  var value: Value
  var action: (Value) -> Void
  @inlinable init(value: Value, action: @escaping (Value) -> Void)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension _ValueActionModifier : _SceneModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum _VariadicView {
  typealias Root = _VariadicView_Root
  typealias ViewRoot = _VariadicView_ViewRoot
  typealias Children = _VariadicView_Children
  typealias UnaryViewRoot = _VariadicView_UnaryViewRoot
  typealias MultiViewRoot = _VariadicView_MultiViewRoot
  @frozen struct Tree<Root, Content> where Root : _VariadicView_Root {
    var root: Root
    var content: Content
    @inlinable init(root: Root, content: Content)
    @inlinable init(_ root: Root, @ViewBuilder content: () -> Content)
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView.Tree : View where Root : _VariadicView_ViewRoot, Content : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _VariadicView_Children {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_Children : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_Children : RandomAccessCollection {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _VariadicView_MultiViewRoot : _VariadicView_ViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_MultiViewRoot {
  static func _makeView(root: _GraphValue<Self>, inputs: _ViewInputs, body: (_Graph, _ViewInputs) -> _ViewListOutputs) -> _ViewOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _VariadicView_Root {
  static var _viewListOptions: Int { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_Root {
  static var _viewListOptions: Int { get }
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _VariadicView_UnaryViewRoot : _VariadicView_ViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_UnaryViewRoot {
  static func _makeViewList(root: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _VariadicView_ViewRoot : _VariadicView_Root {
  static func _makeView(root: _GraphValue<Self>, inputs: _ViewInputs, body: (_Graph, _ViewInputs) -> _ViewListOutputs) -> _ViewOutputs
  static func _makeViewList(root: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
  associatedtype Body : View
  func body(children: _VariadicView.Children) -> Self.Body
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_ViewRoot where Self.Body == Never {
  func body(children: _VariadicView.Children) -> Never
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VariadicView_ViewRoot {
  static func _makeView(root: _GraphValue<Self>, inputs: _ViewInputs, body: (_Graph, _ViewInputs) -> _ViewListOutputs) -> _ViewOutputs
  static func _makeViewList(root: _GraphValue<Self>, inputs: _ViewListInputs, body: @escaping (_Graph, _ViewListInputs) -> _ViewListOutputs) -> _ViewListOutputs
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs) -> Int?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _VectorMath : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _VectorMath {
  @inlinable var magnitude: Double { get }
  @inlinable mutating func negate()
  @inlinable prefix static func - (operand: Self) -> Self
  @inlinable static func += (lhs: inout Self, rhs: Self)
  @inlinable static func + (lhs: Self, rhs: Self) -> Self
  @inlinable static func -= (lhs: inout Self, rhs: Self)
  @inlinable static func - (lhs: Self, rhs: Self) -> Self
  @inlinable static func *= (lhs: inout Self, rhs: Double)
  @inlinable static func * (lhs: Self, rhs: Double) -> Self
  @inlinable static func /= (lhs: inout Self, rhs: Double)
  @inlinable static func / (lhs: Self, rhs: Double) -> Self
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _Velocity<Value> : Equatable where Value : Equatable {
  var valuePerSecond: Value
  @inlinable init(valuePerSecond: Value)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Velocity : Comparable where Value : Comparable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Velocity : Animatable where Value : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Velocity : AdditiveArithmetic where Value : AdditiveArithmetic {
  @inlinable init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _Velocity : VectorArithmetic where Value : VectorArithmetic {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum _ViewDebug {
  enum Property : UInt32, Hashable {
    case type
    case value
    case transform
    case position
    case size
    case environment
    case phase
    case layoutComputer
    case displayList
  }
  struct Properties : OptionSet {
    static let type: _ViewDebug.Properties
    static let value: _ViewDebug.Properties
    static let transform: _ViewDebug.Properties
    static let position: _ViewDebug.Properties
    static let size: _ViewDebug.Properties
    static let environment: _ViewDebug.Properties
    static let phase: _ViewDebug.Properties
    static let layoutComputer: _ViewDebug.Properties
    static let displayList: _ViewDebug.Properties
    static let all: _ViewDebug.Properties
  }
  struct Data {
  }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewDebug {
  static func serializedData(_ viewDebugData: [_ViewDebug.Data]) -> Data?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewDebug.Property : RawRepresentable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewDebug.Data : Encodable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ViewInputs {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct _ViewListCountInputs {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ViewListInputs {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ViewListOutputs {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ViewModifier_Content<Modifier> where Modifier : ViewModifier {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  static func _viewListCount(inputs: _ViewListCountInputs, body: (_ViewListCountInputs) -> Int?) -> Int?
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewModifier_Content : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct _ViewOutputs {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _ViewTest : _Test {
  associatedtype RootView : View
  func initRootView() -> Self.RootView
  func initSize() -> CGSize
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewTest {
  typealias Touch = (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)
  func sendTouchSequence(_ touches: [Self.Touch])
  func measureTouchSequence(host: _BenchmarkHost, _ touches: [Self.Touch]) -> [Double]
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewTest {
  func setUpTest()
  func tearDownTest()
  var rootView: Self.RootView { get }
  func viewForIdentifier<V>(_ identifier: AnyHashable, _ type: V.Type = V.self) -> V? where V : View
  func stateForIdentifier<I, S, V>(_ id: I, type _: S.Type = S.self, in _: V.Type = V.self) -> Binding<S>? where I : Hashable, V : View
  func render(seconds: Double = 1.0 / 60.0)
  func initSize() -> CGSize
  func setSize(_ size: CGSize)
  func setEnvironment(_ environment: EnvironmentValues)
  func resetEvents()
  func loop()
  func turnRunloop(times: Int = 1)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ViewTest {
  func rootState<S>(type _: S.Type = S.self) -> Binding<S>
  func rootState<S, V>(type _: S.Type = S.self, in _: V.Type) -> Binding<S> where V : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
protocol _ViewTraitKey {
  associatedtype Value
  static var defaultValue: Self.Value { get }
}

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
struct _WKStoryboardContent : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct _ZStackLayout {
  var alignment: Alignment
  @inlinable init(alignment: Alignment = .center)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ZStackLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension _ZStackLayout : Animatable {
}

extension _ZStackLayout : _VariadicView_ViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
enum __App {
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
extension __App {
  static func _registerPerformanceTests(_ tests: [_PerformanceTest])
}

extension __App {
  static func run<V>(_ rootView: V) -> Never where V : View
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __BedtimeTickLabelsLayout {
  init(center: CGPoint, radius: CGFloat)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __BedtimeTickLabelsLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __BedtimeTickLabelsLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __DesignTimeSelectionIdentifier : Hashable {
  let identifier: String
  init(_ identifier: String)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __FluidSpringTestLayout {
  static let count: Int
  init(iteration: Int, location: CGPoint?)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __FluidSpringTestLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __FluidSpringTestLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __FourUpLayout {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __FourUpLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __FourUpLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __GridLayout {
  struct Spacing {
    var min: CGFloat
    var max: CGFloat?
    init(min: CGFloat = 0, max: CGFloat? = nil)
    init(fixed: CGFloat)
  }
  enum FillDirection {
    case horizontal
    case vertical
  }
  var itemSize: CGSize
  var itemSpacing: __GridLayout.Spacing
  var lineSpacing: __GridLayout.Spacing
  var fillDirection: __GridLayout.FillDirection
  init(itemSize: CGSize, itemSpacing: CGFloat = 0, lineSpacing: CGFloat = 0, fillDirection: __GridLayout.FillDirection = .horizontal)
  init(itemSize: CGSize, itemSpacing: __GridLayout.Spacing, lineSpacing: __GridLayout.Spacing, fillDirection: __GridLayout.FillDirection = .horizontal)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __GridLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __GridLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __GridLayout.FillDirection : Equatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __GridLayout.FillDirection : Hashable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
typealias __GridSpacing = __GridLayout.Spacing

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __IconLayout {
  init(columnCount: Int = 4, rowCount: Int? = nil, openFolderIndex: Int? = nil, openFolderScale: CGFloat = 1.0, iconScale: CGFloat = 1.0)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __IconLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __IconLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __RadialLayout {
  var radius: CGFloat
  var size: CGSize
  init(radius: CGFloat, size: CGSize)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __RadialLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __RadialLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __Random : Equatable {
  var seed: UInt32
  init(seed: UInt32 = 0)
  mutating func next() -> Double
  mutating func next(_ mean: Double, range: Double) -> Double
  mutating func normal() -> Double
  mutating func normal(_ mean: Double, range: Double) -> Double
  mutating func nextColor(mean: Double = 0.75, range: Double = 0.5) -> Color
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __ResizableImagesExampleLayout {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __ResizableImagesExampleLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __ResizableImagesExampleLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct __ScaleToFitView<V> : View where V : View {
  var content: V
  var bounds: CGRect
  @inlinable init(content: V, bounds: CGRect)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen struct __SetFrameLayout {
  @usableFromInline
  var frame: CGRect
  @inlinable init(_ frame: CGRect)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __SetFrameLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __SetFrameLayout : ViewModifier {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __SimpleColumnLayout {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __SimpleColumnLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __SimpleColumnLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __SpiralLayout {
  init(spacing: Angle)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __SpiralLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __SpiralLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __UniversalListStyle : ListStyle {
  init()
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct __ViewRemovalLayout {
  init(showsBothRows: Bool)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __ViewRemovalLayout : _VariadicView_UnaryViewRoot {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension __ViewRemovalLayout : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
func __designTimeApplyIncrementalValues(_ updates: [[String : Any]])

func __designTimeBoolean<T>(_ key: String, fallback: T) -> T where T : ExpressibleByBooleanLiteral

func __designTimeFloat<T>(_ key: String, fallback: T) -> T where T : ExpressibleByFloatLiteral

func __designTimeInteger<T>(_ key: String, fallback: T) -> T where T : ExpressibleByIntegerLiteral

func __designTimeSelection<T>(_ instance: T, _ identifier: String) -> T

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
func __designTimeSelection<T>(_ instance: T, _ identifier: String) -> some View where T : View


@available(iOS 14.0, macOS 11, tvOS 14.0, watchOS 7.0, *)
@_transparent func __designTimeString(_ key: String, fallback: OSLogMessage) -> OSLogMessage

func __designTimeString<T>(_ key: String, fallback: T) -> T where T : ExpressibleByStringLiteral

func __designTimeString<T>(_ key: String, fallback: T) -> T where T : ExpressibleByExtendedGraphemeClusterLiteral

func __previewThunksHaveFinishedLoading()

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
var _defaultSwiftUIActivityEnvironmentLoggingEnabled: Bool

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
var _eventDebugTriggers: _EventDebugTriggers

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
func _makeUIHostingController(_ view: AnyView) -> NSObject & _UIHostingViewable

@available(watchOS 7.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
func _makeUIHostingView<Content>(_ view: Content) -> NSObject where Content : View

@available(watchOS 6.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
func _makeWatchKitUIHostingController(_ view: AnyView) -> NSObject & _UIHostingViewable

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
func withAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
func withTransaction<Result>(_ transaction: Transaction, _ body: () throws -> Result) rethrows -> Result

extension NSDirectionalEdgeInsets {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Never {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Float : VectorArithmetic {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Double : VectorArithmetic {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGFloat : VectorArithmetic {
}

extension RangeReplaceableCollection where Self : MutableCollection {
  mutating func remove(atOffsets offsets: IndexSet)
}

extension MutableCollection {
  mutating func move(fromOffsets source: IndexSet, toOffset destination: Int)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Optional : Gesture where Wrapped : Gesture {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGPoint {
  func applying(_ m: ProjectionTransform) -> CGPoint
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Optional : View where Wrapped : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension ObservableObject {
  @usableFromInline
  static var environmentStore: WritableKeyPath<EnvironmentValues, Self?> { get }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Never : Gesture {
}

extension Never : Scene {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Int : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Int8 : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Int16 : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Int32 : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Int64 : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension UInt : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension UInt8 : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension UInt16 : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension UInt32 : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension UInt64 : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Float : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Double : _FormatSpecifiable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGFloat : _FormatSpecifiable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension NSUserActivity {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  enum TypedPayloadError : Error {
    case invalidContent
    case encodingError
  }
  func typedPayload<T>(_ type: T.Type) throws -> T where T : Decodable, T : Encodable
  func setTypedPayload<T>(_ payload: T) throws where T : Decodable, T : Encodable
}

extension Never : ToolbarContent, CustomizableToolbarContent {
}

extension UIColor {
  @available(iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  @available(macOS, unavailable)
  convenience init(_ color: Color)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension Never : View {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGPoint : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGSize : Animatable {
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension CGRect : Animatable {
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
var _defaultSwiftUIActivityEnvironmentLoggingEnabled: Bool

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
var _eventDebugTriggers: _EventDebugTriggers

