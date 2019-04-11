
import Foundation
protocol JSONRepresentable {
    var JSONRepresentation: AnyObject { get }
}

protocol AASerializable: JSONRepresentable {
}

extension AASerializable {
    var JSONRepresentation: AnyObject {
        var representation = [String: AnyObject]()
        
        for case let (label?, value) in Mirror(reflecting: self).children {
            switch value {
            case let value as JSONRepresentable:
                representation[label] = value.JSONRepresentation
                
            case let value as NSObject:
                representation[label] = value
                
            default:
                // Ignore any unserializable properties
                break
            }
        }
        
        return representation as AnyObject
    }
}

extension AASerializable {
    func toJSON() -> String? {
        let representation = JSONRepresentation
        do {
            let data = try JSONSerialization.data(withJSONObject: representation, options: [])
            return String(data: data, encoding: String.Encoding.utf8)
        } catch {
            return nil
        }
    }
    
    public  func toDic() -> Dictionary<String, Any>? {
        let dictionary = JSONRepresentation as? Dictionary<String, Any>
        return dictionary
    }
}

