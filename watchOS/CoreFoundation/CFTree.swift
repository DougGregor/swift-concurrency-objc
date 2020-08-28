
typealias CFTreeRetainCallBack = @convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?
typealias CFTreeReleaseCallBack = @convention(c) (UnsafeRawPointer?) -> Void
typealias CFTreeCopyDescriptionCallBack = @convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?
struct CFTreeContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: CFTreeRetainCallBack!
  var release: CFTreeReleaseCallBack!
  var copyDescription: CFTreeCopyDescriptionCallBack!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: CFTreeRetainCallBack!, release: CFTreeReleaseCallBack!, copyDescription: CFTreeCopyDescriptionCallBack!)
}
typealias CFTreeApplierFunction = @convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void
class CFTree : _CFObject {
}
func CFTreeGetTypeID() -> CFTypeID
func CFTreeCreate(_ allocator: CFAllocator!, _ context: UnsafePointer<CFTreeContext>!) -> CFTree!
func CFTreeGetParent(_ tree: CFTree!) -> CFTree!
func CFTreeGetNextSibling(_ tree: CFTree!) -> CFTree!
func CFTreeGetFirstChild(_ tree: CFTree!) -> CFTree!
func CFTreeGetContext(_ tree: CFTree!, _ context: UnsafeMutablePointer<CFTreeContext>!)
func CFTreeGetChildCount(_ tree: CFTree!) -> CFIndex
func CFTreeGetChildAtIndex(_ tree: CFTree!, _ idx: CFIndex) -> CFTree!
func CFTreeGetChildren(_ tree: CFTree!, _ children: UnsafeMutablePointer<Unmanaged<CFTree>?>!)
func CFTreeApplyFunctionToChildren(_ tree: CFTree!, _ applier: (@convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void)!, _ context: UnsafeMutableRawPointer!)
func CFTreeFindRoot(_ tree: CFTree!) -> CFTree!
func CFTreeSetContext(_ tree: CFTree!, _ context: UnsafePointer<CFTreeContext>!)
func CFTreePrependChild(_ tree: CFTree!, _ newChild: CFTree!)
func CFTreeAppendChild(_ tree: CFTree!, _ newChild: CFTree!)
func CFTreeInsertSibling(_ tree: CFTree!, _ newSibling: CFTree!)
func CFTreeRemove(_ tree: CFTree!)
func CFTreeRemoveAllChildren(_ tree: CFTree!)
func CFTreeSortChildren(_ tree: CFTree!, _ comparator: CFComparatorFunction!, _ context: UnsafeMutableRawPointer!)
