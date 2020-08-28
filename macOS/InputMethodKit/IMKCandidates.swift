
var kIMKSingleColumnScrollingCandidatePanel: Int { get }
var kIMKScrollingGridCandidatePanel: Int { get }
var kIMKSingleRowSteppingCandidatePanel: Int { get }
typealias IMKCandidatePanelType = Int
var kIMKMain: Int { get }
var kIMKAnnotation: Int { get }
var kIMKSubList: Int { get }
typealias IMKStyleType = Int
var kIMKLocateCandidatesAboveHint: Int { get }
var kIMKLocateCandidatesBelowHint: Int { get }
var kIMKLocateCandidatesLeftHint: Int { get }
var kIMKLocateCandidatesRightHint: Int { get }
typealias IMKCandidatesLocationHint = Int
let IMKCandidatesOpacityAttributeName: String
let IMKCandidatesSendServerKeyEventFirst: String
class IMKCandidates : NSResponder {
  init!(server: IMKServer!, panelType: IMKCandidatePanelType)
  init!(server: IMKServer!, panelType: IMKCandidatePanelType, styleType style: IMKStyleType)
  func panelType() -> IMKCandidatePanelType
  func setPanelType(_ panelType: IMKCandidatePanelType)
  func show(_ locationHint: IMKCandidatesLocationHint)
  func hide()
  func isVisible() -> Bool
  func update()
  func showAnnotation(_ annotationString: NSAttributedString!)
  func showSublist(_ candidates: [Any]!, subListDelegate delegate: Any!)
  func candidateFrame() -> NSRect
  func setSelectionKeys(_ keyCodes: [Any]!)
  func selectionKeys() -> [Any]!
  func setSelectionKeysKeylayout(_ layout: TISInputSource!)
  func selectionKeysKeylayout() -> Unmanaged<TISInputSource>!
  func setAttributes(_ attributes: [AnyHashable : Any]!)
  func attributes() -> [AnyHashable : Any]!
  func setDismissesAutomatically(_ flag: Bool)
  func dismissesAutomatically() -> Bool
  @available(macOS 10.7, *)
  func selectedCandidate() -> Int
  @available(macOS 10.7, *)
  func setCandidateFrameTopLeft(_ point: NSPoint)
  @available(macOS 10.7, *)
  func showChild()
  @available(macOS 10.7, *)
  func hideChild()
  @available(macOS 10.7, *)
  func attachChild(_ child: IMKCandidates!, toCandidate candidateIdentifier: Int, type theType: IMKStyleType)
  @available(macOS 10.7, *)
  func detachChild(_ candidateIdentifier: Int)
  @available(macOS 10.7, *)
  func setCandidateData(_ candidatesArray: [Any]!)
  @available(macOS 10.7, *)
  func selectCandidate(withIdentifier candidateIdentifier: Int) -> Bool
  func selectCandidate(_ candidateIdentifier: Int)
  @available(macOS 10.7, *)
  func show()
  @available(macOS 10.7, *)
  func candidateStringIdentifier(_ candidateString: Any!) -> Int
  @available(macOS 10.7, *)
  func selectedCandidateString() -> NSAttributedString!
  @available(macOS 10.7, *)
  func candidateIdentifier(atLineNumber lineNumber: Int) -> Int
  @available(macOS 10.7, *)
  func lineNumberForCandidate(withIdentifier candidateIdentifier: Int) -> Int
  @available(macOS 10.7, *)
  func clearSelection()
}
