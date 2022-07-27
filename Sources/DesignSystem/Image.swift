import Foundation
import SwiftUI

public extension Image {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Image.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system images.
    /// At any call site that requires an image, type `Image.DesignSystem.<esc>`
    struct DesignSystem {
        public static let fondoAzulPart1 = loadImageFromBundle(name: "fondo-azul-02-part-1")
        public static let logoWhite = loadImageFromBundle(name: "logo-white")
        public static let logoBlack = loadImageFromBundle(name: "logo-black")
        public static let bannerShape1 = loadImageFromBundle(name: "banner-shape-1")
        public static let bannerShape6 = loadImageFromBundle(name: "banner-shape-6")
        public static let bannerShape7 = loadImageFromBundle(name: "banner-shape-7")
        public static let section2Background = loadImageFromBundle(name: "section-2-background-1")
        public static let section3Gradient = loadImageFromBundle(name: "section-3-degraded")
        public static let loginBackgroundBlue = loadImageFromBundle(name: "login-background-blue")
        public static let loginBackgroundGreen = loadImageFromBundle(name: "login-background-green")
        public static let signInBackgroundGreen = loadImageFromBundle(name: "signIn-background-green")
        public static let signInBackgroundBlue = loadImageFromBundle(name: "signIn-background-blue")
        public static let onboardingBackgroundImage = loadImageFromBundle(name: "onboarding-background")
        public static let ownGoal = loadImageFromBundle(name:"autogol")
        public static let playerChange = loadImageFromBundle(name:"cambio")
        public static let playerChangeIn = loadImageFromBundle(name:"cambio_in")
        public static let playerChangeOut = loadImageFromBundle(name:"cambio_out")
        public static let redCard = loadImageFromBundle(name:"event_card_red")
        public static let yellowCard = loadImageFromBundle(name:"event_card_yellow")
        public static let goal = loadImageFromBundle(name:"gol")
        public static let penal = loadImageFromBundle(name:"penal")
    }
}


/// Loads an image from the DesignSystem module. The image is assumed to be in
/// pdf format.
///
/// - Parameter name: The name of the image to load
/// - Returns: If the named image is found in the DesignSystem module, it is
///            returned. Otherwise, a questionmark image is returned as a
///            placeholder.
private func loadImageFromBundle(name: String) -> Image {
    guard let pdfURL = Bundle.module.url(forResource: name, withExtension: "pdf"),
          let pdfImage = pdfImage(fromURL: pdfURL)
    else { return Image(systemName: "questionmark.square") }
    return Image(uiImage: pdfImage).renderingMode(.original)
}

/// Given a URL to a pdf on disk, returns a rendered UIImage of the pdf.
///
/// - Parameter fromURL: The URL that the pdf resides at
/// - Returns: A UIImage representation of the PDF
///
/// [Implementation source](https://www.hackingwithswift.com/example-code/core-graphics/how-to-render-a-pdf-to-an-image)
private func pdfImage(fromURL url: URL) -> UIImage? {
    guard let document = CGPDFDocument(url as CFURL) else { return nil }
    guard let page = document.page(at: 1) else { return nil }

    let pageRect = page.getBoxRect(.mediaBox)
    let renderer = UIGraphicsImageRenderer(size: pageRect.size)
    let image = renderer.image { context in
        context.cgContext.translateBy(x: 0.0, y: pageRect.size.height)
        context.cgContext.scaleBy(x: 1.0, y: -1.0)
        context.cgContext.drawPDFPage(page)
    }

    return image
}
