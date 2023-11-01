# Twitter

- Mac OS Version: 12.6.4
- XCode Version: 14.2
  
This project shows the homepage for the Twitter App with infinite scroll and the posts keep on adding at the bottom.
- It uses MVVM architecture which separates the Repository and Service Layer.- All UI is built up using SwiftUI.
- Third-Party Library:
    Alamofire - to make network calls and fetch posts. Right now the code is commented in PostService to fetch the posts, and it returns a dummy posts array, but if proper APIs are provided, we can fetch the posts using pageSize and pageNumber.
- Basic unit test cases.
    
Overview of Project
- Service Layer - the purpose of this layer is to make any kind of network calls currently or even in the future. The base functions are defined in BaseService which is extended by individual services. All service classes are single purposefully.
- Repo Layer - the purpose of this layer is to manage data from the server or even core data (if offline support is requested in the future). The same will be responsible for fetching the data from the server, storing it in Coredata, and passing the data back to View Model.
- ViewModel - this will be individual to views which will be managing the states for a View. In the current scenario, we have one VM ie HomeViewModel, this is responsible for listening to the callbacks from view like fetching more posts if scrolled till the end, and holds the array for posts. The same VM extends the BaseViewModel which manages common states like error state.
- HomeView - This is the view which is displaying the post listing in SwiftUI
  
I have used a few data classes to hold data like PostData, ProfileData, and PostRequestData.I have also added a few extensions like Encodable to convert it into a dictionary to pass the PostRequestData as a dictionary to the get API call. The other extensions on date, string, and Integer.

Things to note
- The dummy data has all 3 kinds of posts
  1. Text Post
  2. Image Post
  3. Video PostVideo post uses AVPlayer which requires a .mp4 format. The same can be run on an actual device.
  
Scope of further improvement:
- Image caching can be used to make profile pics load fast which are repeating but this is completely on a requirement basis. LRU cache would be a good option.
- Offline support - it can be connected with Coredata where the last state can be reproduced in case of no internet which usually all social media apps do.
