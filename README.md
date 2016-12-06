# sampleFrameWork

**On Swift:**

*Create Framework:-*

1. Start Xcode -> Create a new Xcode Project -> iOS -> Framework & Library -> Cocoa Touch Framework -> Name the framework(ex. sampleCocoaFramework) -> Create.

2. Set Taget -> General -> Deployment info -> Deployment Target.

3. Add a public class: File -> New File -> iOS -> Swift File -> Name it (ex. openCocoaClass) -> Create.

4. Now add some code to the openCocoaClass.swift.

        import Foundation
        
        public class openCocoaClass {
            
            public init() {
                
            }
            
            public var samplePublicVariable = "samplePublicVariable @ openCocoaClass"

            public func samplePublicFunction()
            {
                print("samplePublicFunction @ openCocoaClass")
            }          
     }

5. Clean the project : Product -> Clean
6. Configure the scheme settings : Product -> Scheme -> Edit Scheme -> Run -> Build Configuration -> Release.

7. Build the framework : Product -> Build.
8. Export the framework : Products -> Select the framework -> Identity and type -> Full Path -> Released Framework.


*Adding Framework to Project:-*

1. Start a Xcode project and name it (ex. CocoaFrameworkTest).

2. Drag and drop the sampleCocoaFramework.framework to the CocoaFrameworkTest's project folder.

3. Target -> General -> Embed Binaries -> Add Other -> Select Framework 
   -> Copy Items if needed -> Done.




*Accessing Framework on ViewController:*-

    import UIKit
    import sampleCocoaFramework
    
    
    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let frameworkObject =  openCocoaClass.init()
            frameworkObject.samplePublicFunction()
            print(frameworkObject.samplePublicVariable)
            
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    }

