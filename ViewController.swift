import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            InterestsView()
                .tabItem {
                    Label("Interests", systemImage: "star.fill")
                }
            GoalsView()
                .tabItem {
                    Label("Goals", systemImage: "flag.fill")
                }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .shadow(radius: 5)
                .animation(.easeInOut(duration: 0.5))
            
            Text("John Doe")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Age: 28")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Location: San Francisco, CA")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Passionate iOS Developer with a love for creating intuitive mobile experiences.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
        .navigationTitle("Profile")
    }
}

struct InterestsView: View {
    let hobbies = [
        ("🎸 Guitar", "Loves playing acoustic guitar"),
        ("🎮 Gaming", "Passionate about RPG games"),
        ("📸 Photography", "Enjoys street photography")
    ]
    
    var body: some View {
        List(hobbies, id: \ .0) { hobby in
            HStack {
                Text(hobby.0)
                    .font(.largeTitle)
                VStack(alignment: .leading) {
                    Text(hobby.1)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding()
        }
        .navigationTitle("Interests")
    }
}

struct GoalsView: View {
    let goals = [
        "🚀 Launch an iOS app",
        "📚 Learn SwiftUI deeply",
        "🌍 Travel to Japan",
        "🏋️‍♂️ Stay fit and healthy"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(goals, id: \ .self) { goal in
                Text(goal)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.orange.opacity(0.2))
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Goals")
    }
}

@main
struct PersonalProfileApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

