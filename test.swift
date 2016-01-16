import Foundation
let request = NSMutableURLRequest(URL: NSURL(string: "http://www.thisismylink.com/postName.php")!)
request.HTTPMethod = "POST"
let postString = "id=  &name=  "
request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
    guard error == nil && data != nil else {                                                          // check for fundamental networking error
        print("error=\(error)")
        return
    }

    if let httpStatus = response as? NSHTTPURLResponse where httpStatus.statusCode != 200 {           // check for http errors
        print("statusCode should be 200, but is \(httpStatus.statusCode)")
        print("response = \(response)")
    }

    let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
    print("responseString = \(responseString)")
}
task.resume()
