import Foundation
import SwiftUI

public extension Image {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Image.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system images.
    /// At any call site that requires an image, type `Image.DesignSystem.<esc>`
    struct DesignSystem {
        public static let fondoAzul02Part1 = loadImageFromBundle(name: "fondoAzul02Part1")
        public static let fondoAzul02Part1 = loadImageFromBundle(name: "fondoAzul02Part1")
        public static let logoWhite = loadImageFromBundle(name: "logoWhite")
        public static let logoBlack = loadImageFromBundle(name: "logoBlack")
        public static let section2Shape3 = loadImageFromBundle(name: "section2Shape3")
        public static let section2Shape4 = loadImageFromBundle(name: "section2Shape4")
        public static let bannerShape8 = loadImageFromBundle(name: "bannerShape8")
        public static let fondoAzul01Part1 = loadImageFromBundle(name: "fondoAzul01Part1")
        public static let lineaV01Part1 = loadImageFromBundle(name: "lineaV01Part1")
        public static let lineaV02Part1 = loadImageFromBundle(name: "lineaV02Part1")
        public static let bannerShape9 = loadImageFromBundle(name: "bannerShape9")
        public static let lineaV03Part1 = loadImageFromBundle(name: "lineaV03Part1")
        public static let lineaV05Part1 = loadImageFromBundle(name: "lineaV05Part1")
        public static let lineaV04Part1 = loadImageFromBundle(name: "lineaV04Part1")
        public static let lineaA01Part1 = loadImageFromBundle(name: "lineaA01Part1")
        public static let lineaA02Part1 = loadImageFromBundle(name: "lineaA02Part1")
        public static let lineaA03Part12 = loadImageFromBundle(name: "lineaA03Part12")
        public static let bannerShape6 = loadImageFromBundle(name: "bannerShape6")
        public static let lineaV03Part1 = loadImageFromBundle(name: "lineaV03Part1")
        public static let lineaV05Part1 = loadImageFromBundle(name: "lineaV05Part1")
        public static let lineaV04Part1 = loadImageFromBundle(name: "lineaV04Part1")
        public static let lineaA01Part1 = loadImageFromBundle(name: "lineaA01Part1")
        public static let lineaA02Part1 = loadImageFromBundle(name: "lineaA02Part1")
        public static let lineaA03Part12 = loadImageFromBundle(name: "lineaA03Part12")
        public static let bannerShape10 = loadImageFromBundle(name: "bannerShape10")
        public static let lineaV06Part1 = loadImageFromBundle(name: "lineaV06Part1")
        public static let lineaA04Part1 = loadImageFromBundle(name: "lineaA04Part1")
        public static let lineaA05Part1 = loadImageFromBundle(name: "lineaA05Part1")
        public static let lineaA01Part1 = loadImageFromBundle(name: "lineaA01Part1")
        public static let bannerShape7 = loadImageFromBundle(name: "bannerShape7")
        public static let lineaV06Part1 = loadImageFromBundle(name: "lineaV06Part1")
        public static let lineaA04Part1 = loadImageFromBundle(name: "lineaA04Part1")
        public static let lineaA05Part1 = loadImageFromBundle(name: "lineaA05Part1")
        public static let lineaA01Part1 = loadImageFromBundle(name: "lineaA01Part1")
        public static let section1Shape4 = loadImageFromBundle(name: "section1Shape4")
        public static let section1Shape5 = loadImageFromBundle(name: "section1Shape5")
        public static let section1Shape6 = loadImageFromBundle(name: "section1Shape6")
        public static let section3Shape2 = loadImageFromBundle(name: "section3Shape2")
        public static let section3Shape3 = loadImageFromBundle(name: "section3Shape3")
        public static let section3Background2 = loadImageFromBundle(name: "section3Background2")
        public static let section3Degraded = loadImageFromBundle(name: "section3Degraded")
        public static let section4Shape3 = loadImageFromBundle(name: "section4Shape3")
        public static let section4Shape4 = loadImageFromBundle(name: "section4Shape4")
        public static let section5Shape4 = loadImageFromBundle(name: "section5Shape4")
        public static let section5Background2 = loadImageFromBundle(name: "section5Background2")
        public static let section5Shape5 = loadImageFromBundle(name: "section5Shape5")
        public static let section5Shape6 = loadImageFromBundle(name: "section5Shape6")
        public static let section6Background2 = loadImageFromBundle(name: "section6Background2")
        public static let section6Shape3 = loadImageFromBundle(name: "section6Shape3")
        public static let section6Shape4 = loadImageFromBundle(name: "section6Shape4")
        public static let footerShape3 = loadImageFromBundle(name: "footerShape3")
        public static let footerShape4 = loadImageFromBundle(name: "footerShape4")
        public static let spePlaceholder = loadImageFromBundle(name: "spePlaceholder")
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
