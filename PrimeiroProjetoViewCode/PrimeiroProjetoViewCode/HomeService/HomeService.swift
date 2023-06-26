//
//  HomeService.swift
//  PrimeiroProjetoViewCode
//
//  Created by Douglas Stadulni on 01/06/23.
//

import UIKit
import OpenAISwift

class HomeService: UIView {

    func sendMessage(text: String, completion: @escaping (Result<String, OpenAIError>) -> Void) {
        OpenAISwift(authToken: "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").sendCompletion(with: text, model: .gpt3(.davinci), maxTokens: 4000) { result in
            switch result {
            case .success(let data):
                completion(.success(data.choices?.first?.text ?? ""))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
