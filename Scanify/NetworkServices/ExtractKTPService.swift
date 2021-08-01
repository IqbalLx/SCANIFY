//
//  ExtractKTPService.swift
//  Scanify
//
//  Created by Iqbal Maulana on 01/08/21.
//

import Foundation
import SwiftUI

func postImage(image: UIImage, completion: @escaping (KTPData) -> Void) {
    let url = URL(string: "https://secret_api")

    // generate boundary string using a unique per-app string
    let boundary = UUID().uuidString

    let session = URLSession.shared

    // Set the URLRequest to POST and to the specified URL
    var urlRequest = URLRequest(url: url!)
    urlRequest.httpMethod = "POST"

    // Set Content-Type Header to multipart/form-data, this is equivalent to submitting form data with file upload in a web browser
    // And the boundary is also set here
    urlRequest.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
    urlRequest.setValue("Bearer secretToken", forHTTPHeaderField: "Authorization")

    var data = Data()

    // Add the image data to the raw http request data
    data.append("\r\n--\(boundary)\r\n".data(using: .utf8)!)
    data.append("Content-Disposition: form-data; name=\"img_file\"; filename=\"sample-ktp\"\r\n".data(using: .utf8)!)
    data.append("Content-Type: image/png\r\n\r\n".data(using: .utf8)!)
    data.append(image.pngData()!)

    data.append("\r\n--\(boundary)--\r\n".data(using: .utf8)!)

    // Send a POST request to the URL, with the data we created earlier
    session.uploadTask(with: urlRequest, from: data, completionHandler: { responseData, response, error in
        if error == nil {
            let resp: KTPSuccess = try! JSONDecoder().decode(KTPSuccess.self, from: responseData!)
            completion(resp.success.ktp_detected)
            
//            let jsonData = try? JSONSerialization.jsonObject(with: responseData!, options: .allowFragments)
//            if let json = jsonData as? [String: Any] {
//                print(json)
//            }
        }
    }).resume()
}
