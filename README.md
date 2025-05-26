# 🪞 Alphet

**Alphet** is a fashion-focused iOS social media app built with SwiftUI. It lets users post daily outfits, view a curated feed, and maintain a minimalist glassmorphic profile. Designed to ensure photo integrity, Alphet uses AI to validate that only one person’s full-body outfit is visible in every submission.

## ✨ Features

- 📸 **Camera Integration**: Users can capture photos of their outfits directly in the app.
- 🤖 **AI Photo Validation**: (In Progress) AWS Rekognition ensures each image has a full-body single subject.
- 🧊 **Glassmorphic UI**: Dark theme with iridescent accents and frosted-glass components.
- 🧑‍🎤 **Profile View**: Grid of posted outfits, privacy settings, and a settings page.
- 🏠 **Feed View**: Dynamic and visually styled posts from the community.
- ⚙️ **Settings Panel**: Privacy toggle, logout, and account management.

## 🛠️ Stack

- **Frontend**: SwiftUI + SwiftUIX
- **Design System**: Custom theme tokens with mirrorcore styling
- **Backend** *(planned)*:
  - AWS Cognito (auth)
  - AWS Rekognition (AI photo validation)
  - AWS S3 (image storage)
  - AWS DynamoDB (post metadata)

## 📷 Screenshots
> Coming soon — include screenshots of FeedView, ProfileView, CameraView, and SettingsView

## 🚀 Getting Started

1. Clone the repo:
   ```bash
   git clone https://github.com/yourname/alphet.git
