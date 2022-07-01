import SwiftUI

public extension Font {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Font.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system fonts.
    /// At any call site that requires a font, type `Font.DesignSystem.<esc>`
    struct DesignSystem {
        public static let d1 = Font.custom("Organetto-UltraBold", size: 82)
        public static let h1 = Font.custom("Organetto-UltraBold", size: 48)
        public static let h2 = Font.custom("Organetto-Bold", size: 40)
        public static let h2R = Font.custom("Organetto-Regular", size: 40)
        public static let h3 = Font.custom("Organetto-Bold", size: 36)
        public static let h1Mob = Font.custom("Organetto-UltraBold", size: 34)
        public static let h4 = Font.custom("Organetto-Bold", size: 30)
        public static let h5 = Font.custom("Organetto-Bold", size: 26)
        public static let h2Mob = Font.custom("Organetto-Bold", size: 26)
        public static let h3Mob = Font.custom("Organetto-Bold", size: 22)
        public static let h6 = Font.custom("Organetto-Bold", size: 20)
        public static let h4Mob = Font.custom("Organetto-Bold", size: 20)
        public static let btn = Font.custom("Organetto-Bold", size: 19)
        public static let b1 = Font.custom("Lato-Regular", size: 18)
        public static let link = Font.custom("Organetto-Regular", size: 18)
        public static let h5Mob = Font.custom("Organetto-Bold", size: 18)
        public static let h6Mob = Font.custom("Organetto-Bold", size: 16)
        public static let btnMob = Font.custom("Organetto-Bold", size: 16)
        public static let b1Mob = Font.custom("Lato-Regular", size: 15)
        public static let b2 = Font.custom("Lato-Regular", size: 14)
        public static let b2Mob = Font.custom("Lato-Regular", size: 13)
        public static let span = Font.custom("Lato-Regular", size: 12)
        public static let linkMob = Font.custom("Organetto-Regular", size: 12)
        public static let overline = Font.custom("Lato-Bold", size: 10)
        public static let spanMob = Font.custom("Lato-Regular", size: 10)
    }
}
