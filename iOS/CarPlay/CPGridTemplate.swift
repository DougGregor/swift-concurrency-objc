
@available(iOS 12.0, *)
class CPGridTemplate : CPTemplate, CPBarButtonProviding {
  init(title: String?, gridButtons: [CPGridButton])
  var gridButtons: [CPGridButton] { get }
  var title: String { get }
}
