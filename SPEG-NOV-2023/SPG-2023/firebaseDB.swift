//import Firebase
//
//func fetchDataFromFirebase(completion: @escaping (Result<YourStruct, Error>) -> Void) {
//    let ref = Database.database().reference().child("your_data_path")
//
//    ref.observeSingleEvent(of: .value) { snapshot in
//        if let data = snapshot.value as? [String: Any] {
//            // Create a dictionary to store only the keys you need
//            var filteredData: [String: Any] = [:]
//            if let key1 = data["key1"] as? String {
//                filteredData["key1"] = key1
//            }
//            if let key2 = data["key2"] as? Int {
//                filteredData["key2"] = key2
//            }
//
//            do {
//                let jsonData = try JSONSerialization.data(withJSONObject: filteredData)
//                let decoder = JSONDecoder()
//                let yourStruct = try decoder.decode(YourStruct.self, from: jsonData)
//
//                completion(.success(yourStruct))
//            } catch {
//                completion(.failure(error))
//            }
//        } else {
//            let error = NSError(domain: "YourAppDomain", code: 1, userInfo: [NSLocalizedDescriptionKey: "Data format mismatch"])
//            completion(.failure(error))
//        }
//    }
//}
