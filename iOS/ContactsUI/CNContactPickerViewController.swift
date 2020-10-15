
@available(iOS 9.0, *)
class CNContactPickerViewController : UIViewController {
  var displayedPropertyKeys: [String]?
  weak var delegate: @sil_weak CNContactPickerDelegate?
  @NSCopying var predicateForEnablingContact: NSPredicate?
  @NSCopying var predicateForSelectionOfContact: NSPredicate?
  @NSCopying var predicateForSelectionOfProperty: NSPredicate?
}
@available(iOS 9.0, *)
protocol CNContactPickerDelegate : NSObjectProtocol {
  @asyncHandler optional func contactPickerDidCancel(_ picker: CNContactPickerViewController)
  @asyncHandler optional func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact)
  @asyncHandler optional func contactPicker(_ picker: CNContactPickerViewController, didSelect contactProperty: CNContactProperty)
  @asyncHandler optional func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact])
  @asyncHandler optional func contactPicker(_ picker: CNContactPickerViewController, didSelectContactProperties contactProperties: [CNContactProperty])
}
