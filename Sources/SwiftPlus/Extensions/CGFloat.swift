//  Copyright © 2021 - present Julian Gerhards
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//  GitHub https://github.com/knoggl/SwiftPlus
//

import Foundation

#if canImport(CoreGraphics)
import CoreGraphics

public extension CGFloat {
    
    /// Rounds a `CGFloat`
    /// - Parameter CGFloat: To how many places after the comma should be rounded?
    /// - Returns: The rounded `CGFloat`
    func round(to places: Int) -> CGFloat {
        let divisor = pow(10.0, CGFloat(places))
        return (self * divisor).rounded() / divisor
    }
    
    /// Clamps a `CGFloat` to a max value
    /// - Parameter max: The maximal allowed value for this `CGFloat`
    /// - Returns: The `CGFloat` with the specified maximum value
    func maxValue(_ max: CGFloat) -> CGFloat {
        if self > max {
            return max
        }else {
            return self
        }
    }
    
    /// Clamps a `CGFloat` to a min value
    /// - Parameter min: The minimal allowed value for this `CGFloat`
    /// - Returns: The `CGFloat` with the specified minimum value
    func minValue(_ min: CGFloat) -> CGFloat {
        if self < min {
            return min
        }else {
            return self
        }
    }
}
#endif
