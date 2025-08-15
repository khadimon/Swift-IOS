//
//  TriviaQuestionService.swift
//  Trivia
//
//  Created by Khadichabonu Valieva on 17/10/23.
//

import Foundation

class TriviaQuestionService {
    private let url = "https://opentdb.com/api.php?amount=5&type=multiple"
    func fetchTriviaQuestions(completion: @escaping(Result<[TriviaQuestion], Error>) -> Void){
        //let parameters = "amount=\(amount)&type=\(type)"
        //let url = URL(string: "https://opentdb.com/api.php?\(parameters)")!
        
        guard let url = URL(string: url) else {
            completion(.failure(NSError(domain: "Invalid URL", code: 1001, userInfo: nil)))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No Data", code: 1002, userInfo: nil)))
                return
            }
            
            do {
                let triviaResponse = try JSONDecoder().decode(TriviaAPIResponse.self, from: data)
                completion(.success(triviaResponse.questions))
            }
            catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    private func parse(data: Data) -> [TriviaQuestion] {
        do {
            let decoder = JSONDecoder()
            let triviaResponse = try decoder.decode(TriviaAPIResponse.self, from: data)
            return triviaResponse.questions
        } catch {
            print("JSON decoding error: \(error)")
            return []
        }
    }
    
    
}
