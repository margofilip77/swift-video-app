import Foundation

struct Video {
    let title: String
    let views: Int
    let url: String
}

func generateSampleVideos() -> [Video] {
    return [
        Video(title: "Swift Programming", views: 5000, url: "https://example.com/video1"),
        Video(title: "SwiftUI Basics", views: 3200, url: "https://example.com/video2"),
        Video(title: "Intro to iOS Development", views: 15000, url: "https://example.com/video3"),
        Video(title: "Advanced Swift Techniques", views: 8500, url: "https://example.com/video4"),
        Video(title: "Swift vs Objective-C", views: 12000, url: "https://example.com/video5"),
        Video(title: "UIKit Fundamentals", views: 11000, url: "https://example.com/video6"),
        Video(title: "Core Data in Swift", views: 6000, url: "https://example.com/video7"),
        Video(title: "Building a ToDo App", views: 4000, url: "https://example.com/video8"),
        Video(title: "Debugging in Xcode", views: 7200, url: "https://example.com/video9"),
        Video(title: "Mastering Swift Generics", views: 9500, url: "https://example.com/video10")
    ]
}

func printVideos(videos: [Video]) {
    for (index, video) in videos.enumerated() {
        print("\(index + 1). Title: \(video.title), Views: \(video.views)")
    }
}

func searchVideos(by title: String, in videos: [Video]) -> [Video] {
    return videos.filter { $0.title.lowercased().contains(title.lowercased()) }
}

func main() {
    let videos = generateSampleVideos()
    
    print("Welcome! Choose an action:")
    print("1. Show all videos")
    print("2. Search videos by title")
    
    if let choice = readLine() {
        switch choice {
        case "1":
            print("Video list:")
            printVideos(videos: videos)
        case "2":
            print("Enter a title to search:")
            if let searchQuery = readLine() {
                let searchResults = searchVideos(by: searchQuery, in: videos)
                print("Search results:")
                printVideos(videos: searchResults)
            }
        default:
            print("Invalid choice.")
        }
    }
}

main()
