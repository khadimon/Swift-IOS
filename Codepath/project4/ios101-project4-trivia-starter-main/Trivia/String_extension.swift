//
//  String_extension.swift
//  Trivia
//
//  Created by Khadichabonu Valieva on 17/10/23.
//

import Foundation

extension String {
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
    
    var htmlToAttributedString:NSAttributedString? {
        guard let data = data(using: .utf8) else {return nil}
        return try? NSAttributedString(data: data,
                                       options: [
                                        .documentType:NSAttributedString.DocumentType.html,
                                        .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
    }
}

private func fixText(text:String) -> String{
    guard let newText = text.data(using: .utf8) else{return text}
    guard let attributedString = try? NSAttributedString(
      data: newText,
      options: [
        .documentType: NSAttributedString.DocumentType.html,
        .characterEncoding: String.Encoding.utf8.rawValue
      ],
      documentAttributes: nil
    ) else {
      return text
    }
    return attributedString.string
  }
