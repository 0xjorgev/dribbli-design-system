import SwiftUI

public extension Color {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Color.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system colors.
    /// At any call site that requires a color, type `Color.DesignSystem.<esc>`
    struct DesignSystem {
        public static let primaryLight = Color(red: 0.5078471899032593, green: 0.6891331672668457, blue: 0.8583333492279053, opacity: 1)
        public static let primaryBase = Color(red: 0, green: 0.24705882370471954, blue: 0.47058823704719543, opacity: 1)
        public static let primaryDark = Color(red: 0, green: 0.03529411926865578, blue: 0.10980392247438431, opacity: 1)
        public static let primaryGradient = LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(red: 0, green: 0.24705882370471954, blue: 0.47058823704719543, opacity: 1), location: 0), Gradient.Stop(color: Color(red: 0, green: 0.03529411926865578, blue: 0.10980392247438431, opacity: 1), location: 1)]), startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17), endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999))
        public static let secondaryLight = Color(red: 0.7368993163108826, green: 0.8500000238418579, blue: 0.23020833730697632, opacity: 1)
        public static let secondaryBase = Color(red: 0.5686274766921997, green: 0.6666666865348816, blue: 0.12941177189350128, opacity: 1)
        public static let secondaryDark = Color(red: 0.0784313753247261, green: 0.09803921729326248, blue: 0.003921568859368563, opacity: 1)
        public static let white = Color(red: 1, green: 1, blue: 1, opacity: 1)
        public static let grayLight = Color(red: 0.8745098114013672, green: 0.8705882430076599, blue: 0.8784313797950745, opacity: 1)
        public static let gray = Color(red: 0.7490196228027344, green: 0.7411764860153198, blue: 0.7568627595901489, opacity: 1)
        public static let grayDark = Color(red: 0.3764705955982208, green: 0.364705890417099, blue: 0.3843137323856354, opacity: 1)
        public static let dark = Color(red: 0.21568627655506134, green: 0.2078431397676468, blue: 0.23137255012989044, opacity: 1)
        public static let secondaryGradient = LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(red: 0.5686274766921997, green: 0.6666666865348816, blue: 0.12941177189350128, opacity: 1), location: 0), Gradient.Stop(color: Color(red: 0.0784313753247261, green: 0.09803921729326248, blue: 0.003921568859368563, opacity: 1), location: 1)]), startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17), endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999))
        public static let alert = Color(red: 1, green: 0.012499988079071045, blue: 0.012499988079071045, opacity: 1)
        public static let secondaryGradient2 = LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(red: 0.3686274588108063, green: 0.4313725531101227, blue: 0.07450980693101883, opacity: 1), location: 0), Gradient.Stop(color: Color(red: 0.08235294371843338, green: 0.10196078568696976, blue: 0.003921568859368563, opacity: 1), location: 1)]), startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17), endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999))
        public static let secondaryGradient2 = LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(red: 0.6274510025978088, green: 0.7058823704719543, blue: 0.25882354378700256, opacity: 1), location: 0), Gradient.Stop(color: Color(red: 0.7372549176216125, green: 0.8509804010391235, blue: 0.23137253522872925, opacity: 0), location: 1)]), startPoint: UnitPoint(x: 0.6741129013973036, y: 0.0009082822165683064), endPoint: UnitPoint(x: 0.6741129013973036, y: 0.2166212519111442))
        public static let secondaryGradient4 = LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(red: 0.7372549176216125, green: 0.8509804010391235, blue: 0.23137255012989044, opacity: 1), location: 0), Gradient.Stop(color: Color(red: 0.5686274766921997, green: 0.6666666865348816, blue: 0.12941177189350128, opacity: 1), location: 1)]), startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17), endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999))
        public static let secondaryGradient5 = LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(red: 0.5686274766921997, green: 0.6666666865348816, blue: 0.12941177189350128, opacity: 1), location: 0), Gradient.Stop(color: Color(red: 0.8811405897140503, green: 0.9250000715255737, blue: 0.6860417127609253, opacity: 1), location: 1)]), startPoint: UnitPoint(x: 0.500749637460396, y: 0.5214251611298328), endPoint: UnitPoint(x: 0.5000000121723311, y: 1.0000000540499665))
        public static let gradientWhite = LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(red: 1, green: 1, blue: 1, opacity: 1), location: 0), Gradient.Stop(color: Color(red: 0.7372549176216125, green: 0.8509804010391235, blue: 0.23137253522872925, opacity: 0), location: 1)]), startPoint: UnitPoint(x: 0.6139817660549864, y: 0.32062782015525404), endPoint: UnitPoint(x: 0.2066868756473711, y: 1.0000000984165265))
    }
}

