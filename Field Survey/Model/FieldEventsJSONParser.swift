










import Foundation

class FieldEventsJSONParser {
    
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldEvent] {
        
        var fieldEvents = [FieldEvent]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
           let root = json as? [String: Any],
           let status = root["status"] as? String,
            status == "ok" {
            
            if let events = root["observations"] as? [Any] {
                for event in events {
                    if let event = event as? [String: String] {
                        if let observ = event ["classification"],
                           let title = event["title"],
                           let description = event["description"],
                           let dateString = event["date"],
                           let date = dateFormatter.date(from: dateString){
                            
                            if let fieldEvent = FieldEvent(eventName: observ, title: title, description: description, date: date){
                                fieldEvents.append(fieldEvent)
                            }
                        }
                    }
                }
            }
        }
        return fieldEvents
    }
}
