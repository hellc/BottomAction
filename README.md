## Bottom action control

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/BottomAction.svg)](https://img.shields.io/cocoapods/v/BottomAction.svg)
[![Platform](https://img.shields.io/cocoapods/p/BottomAction.svg?style=flat)](https://alamofire.github.io/BottomAction)

### Usage

```ruby
pod 'BottomAction'
```

![Image description](https://github.com/hellc/BottomAction/blob/master/Preview/setup.png)


```swift
import BottomAction

...

@IBOutlet weak var bottomActionView: BottomActionView!

override func viewDidLoad() {
    super.viewDidLoad()

    self.prepareBottomAction()
}

private func prepareBottomAction() {
    self.bottomActionView.actionButton.isEnabled = false
    self.bottomActionView.actionButton.setTitle(self.isCreating ? "Add" : "Save", for: .normal)
    self.bottomActionView.actionClosure = { sender in
        self.onBottomActionTap(sender)
    }
}

private func onBottomActionTap(_ sender: UIControl?) {
    // TODO: Action logic
}
```

## Result

![Image description](https://github.com/hellc/BottomAction/blob/master/Preview/demo.gif)
