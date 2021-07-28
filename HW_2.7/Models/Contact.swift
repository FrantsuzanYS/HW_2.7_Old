//
//  Contact.swift
//  HW_2.7
//
//  Created by emmisar on 27.07.2021.
//

struct Contact {
    let name: String
    let surname: String
    let phone: String
    let email: String

    var fullName: String {
        "\(name) \(surname)"
    }
   
}

extension Contact{

    static func getContacts() -> [Contact] {
        
        var randomNames = ["Natalie", "Vanda", "Tony", "Bruce", "Steeve", "Scott", "Peter"]
        var randomSurnames = ["Romanoff", "Maximoff", "Stark", "Benner", "Rodgers", "Lang", "Parker"]
        var randomPhones = ["907-459-0025", "908-381-9921", "909-341-3898", "907-581-0012",
                            "908-391-2204", "909-291-0233", "905-113-2983"]
        var randomEmails = ["bbbwww@gmail.com", "rrrqqq@gmail.com", "cccppp@gmail.com",
                            "zzzbbb@gmail.com", "rrrggg@gmail.com", "yyymmm@gmail.com",
                            "sssuuu@gmail.com"]
        
        var contacts: [Contact] = []

        for _ in 1...7 {

            let name = randomNames.randomElement()!
            randomNames.removeAll{$0.hasPrefix(name)}
                
            let surname = randomSurnames.randomElement()!
            randomSurnames.removeAll{$0.hasPrefix(surname)}
                
            let phone = randomPhones.randomElement()!
            randomPhones.removeAll{$0.hasPrefix(phone)}
                
            let email = randomEmails.randomElement()!
            randomEmails.removeAll{$0.hasPrefix(email)}

            contacts.append(Contact(name: name, surname: surname, phone: phone, email: email))
            
        }
        return contacts
        
    }
}
