//
//  AssortmentView.swift
//  CafeAlejandro
//
//  Created by Erik Arvedson on 2023-11-28.
//

import SwiftUI
import SwiftySlack

struct AssortmentView: View {
    var selection : Int = 1;
    
    let orders : [Order] = [
        Order(name: "@anastasiia.aniskova", drink: "Mocha", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Mocaccino-Coffee.jpg/300px-Mocaccino-Coffee.jpg"),
        Order(name: "@anastasiia.aniskova", drink: "Cappuccino", imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Cappuccino_at_Sightglass_Coffee.jpg/220px-Cappuccino_at_Sightglass_Coffee.jpg"),
        Order(name: "@anastasiia.aniskova", drink: "Pumpkin Spice Latte", imageUrl: "https://www.blondelish.com/wp-content/uploads/2017/09/Pumpkin-spice-latte-14.jpg"),
        Order(name: "@anastasiia.aniskova", drink: "Dirty Water", imageUrl: "http://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/320px-A_small_cup_of_coffee.JPG"),
        Order(name: "@anastasiia.aniskova", drink: "Polonium 210 Tea", imageUrl: "https://www.rtvonline.com/assets/news_photos/2020/08/24/image-102361-1598278663.jpg"),
        Order(name: "@anastasiia.aniskova", drink: "glass of Bleach", imageUrl: "https://d35i5brrnx3uxo.cloudfront.net/wp-content/uploads/2019/08/20093343/P8160853-300x244.jpg")
        
    ]
    
    var body: some View {
        ZStack {
            Image("background")
            VStack {
                Spacer()
                VStack {
                    Text("Select")
                        .font(.title)
                        .padding(EdgeInsets(top: 20, leading: 80, bottom: 20, trailing: 80))
                        .foregroundColor(.white)
                }
                .background(RoundedRectangle(cornerRadius: 25).fill(.black))
                .padding(EdgeInsets(top: 20, leading: 40, bottom: 40, trailing: 40))
                VStack {
                    if (selection == 1) {
                        HStack {
                            Button(action: {
                                sendOrder(order: orders[0])
                            }) {
                                VStack {
                                    Image("Mocca")
                                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                        .overlay {RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.black, lineWidth: 4) }
                                        .shadow(color: .gray, radius: 7 )
                                    Text("Mocha")
                                        .foregroundColor(.black)
                                        .font(.subheadline)
                                }
                            }
                            .padding()
                            Button(action: {
                                sendOrder(order: orders[1])
                            }) {
                                VStack {
                                    Image("Cappuccino")
                                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                        .overlay {RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.black, lineWidth: 4) }
                                        .shadow(radius: 7)
                                    Text("Cappuccino")
                                        .foregroundColor(.black)
                                        .font(.subheadline)
                                }
                            }
                            .padding()
                        }
                    }
                    if( selection == 2) {
                        HStack {
                            Button(action: {
                                sendOrder(order: orders[2])
                            }) {
                                VStack {
                                    Image("PumpkinSpice")
                                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                        .overlay {RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.black, lineWidth: 4) }
                                        .shadow(radius: 7)
                                    Text("Pumpkin Spice")
                                        .foregroundColor(.black)
                                        .font(.subheadline)
                                }
                            }
                            .padding()
                            Button(action: {
                                sendOrder(order: orders[3])
                            }) {
                                VStack {
                                    Image("FilterCoffee")
                                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                        .overlay {RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.black, lineWidth: 4) }
                                        .shadow(radius: 7)
                                    Text("Dirty Water")
                                        .foregroundColor(.black)
                                        .font(.subheadline)
                                }
                            }
                            .padding()
                        }
                    }
                    if (selection == 3) {
                        HStack {
                            Button(action: {
                                sendOrder(order: orders[4])
                            }) {
                                VStack {
                                    Image("Polonium")
                                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                        .overlay {RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.black, lineWidth: 4) }
                                        .shadow(radius: 7)
                                    Text("Polonium 210 Tea")
                                        .foregroundColor(.black)
                                        .font(.subheadline)
                                }
                            }
                            .padding()
                            Button(action: {
                                sendOrder(order: orders[5])
                            }) {
                                VStack {
                                    Image("Bleach")
                                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                        .overlay {RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).stroke(.black, lineWidth: 4) }
                                        .shadow(radius: 7)
                                    Text("Bleach")
                                        .foregroundColor(.black)
                                        .font(.subheadline)
                                }
                            }
                            .padding()
                        }
                    }
                }
                Spacer()
            }
            
        }
        
    }
}

    
func sendOrder(order: Order) {
    
    let markdown : String = "Hi @alejandro.anon, *" + order.name + "* would like you to make a " + order.drink
    let blocks = [
        ImageBlock(image_url: URL(string: order.imageUrl)!, alt_text: order.drink ),
        SectionBlock(text: MarkdownText(markdown))
    ]
    /*
     
     let blocks = [
         ImageBlock(image_url: URL(string: order.imageUrl)!, alt_text: order.drink ),
         SectionBlock(text: MarkdownText(markdown))
     ]
     
     SectionBlock(text: MarkdownText("Hi Alejandro, *Nastia* would like you to make a Mocha"), accessory: ImageElement(image_url: URL(string:"https://pbs.twimg.com/profile_images/625633822235693056/lNGUneLX_400x400.jpg")!, alt_text: "cute cat"))
     
     {
     "type": "section",
     "text": {
     "type": "mrkdwn",
     "text": "Hi Alejandro, *Nastia* would like you to make a Mocha"
     },
     "accessory": {
     "type": "image",
     "image_url": "https://pbs.twimg.com/profile_images/625633822235693056/lNGUneLX_400x400.jpg",
     "alt_text": "cute cat"
     }
     }
     
     */
    let message = Message(blocks: blocks, to: "cafe-alejandro", alternateText: "New order")
    print(message.text)
    let url = URL(string: "secret")!
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    guard let uploadData = try? JSONEncoder().encode(message) else {
        return
    }
    let task = URLSession.shared.uploadTask(with: request, from: uploadData) { data, response, error in
        if let error = error {
            print ("error: \(error)")
            return
        }
        guard let response = response as? HTTPURLResponse,
              (200...299).contains(response.statusCode) else {
            print ("server error")
            return
        }
        if let mimeType = response.mimeType,
           mimeType == "application/json",
           let data = data,
           let dataString = String(data: data, encoding: .utf8) {
            print ("got data: \(dataString)")
        }
    }
    task.resume()
    
}

struct Order: Codable {
    let name : String
    let drink: String
    let imageUrl: String
}



#Preview {
    AssortmentView()
}
