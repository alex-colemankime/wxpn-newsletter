# WXPN Newsletter Template

A modern, responsive newsletter template designed for WXPN featuring automated GitHub Pages deployment.

## 🚀 Quick Start

1. **Edit your newsletter**: Work with `New Newsletter.html` or `index.html`
2. **Deploy changes**: Run `./deploy.sh` or use VS Code Task (Cmd+Shift+P → "Tasks: Run Task" → "Deploy to GitHub Pages")
3. **View live site**: https://alex-colemankime.github.io/wxpn-newsletter

## 📁 File Structure

- `index.html` - Main newsletter file (served by GitHub Pages)
- `New Newsletter.html` - Working copy (automatically synced to index.html)
- `header-bg.svg` - Header background image
- `deploy.sh` - Quick deployment script
- `.github/workflows/pages.yml` - Automated GitHub Pages deployment

## 🎨 Features

- **Modern Design**: Clean, professional layout with NPR/World Cafe styling
- **Responsive**: Works on desktop and mobile devices
- **Email-Compatible**: Uses table-based layout for email client compatibility
- **Visual Hierarchy**: Clear section headers and optimized typography
- **World Cafe Section**: Dedicated section with custom styling
- **Concert Listings**: Dark-themed upcoming shows section
- **Video Gallery**: YouTube video highlights with thumbnails

## 🎨 Design Elements

- **Typography**: Public Sans for body text, Lora for headlines
- **Color Scheme**: WXPN red (#c73e1d), professional grays and blues
- **Images**: Consistent 16:9 aspect ratio throughout
- **Buttons**: Modern rounded buttons without hover effects (email-safe)
- **Sections**: Hero story, main stories, World Cafe highlights, concerts, and video content

## Sections

1. **Header**: WXPN branding with donate button
2. **Issue Info**: Date and newsletter information
3. **Intro**: Personal message with host photo
4. **Hero Story**: Featured article with large image
5. **Main Stories**: Two featured news articles
6. **World Cafe**: Music highlights with custom red theming
7. **Concerts**: Upcoming shows with venue details
8. **Videos**: YouTube content with play button overlays
9. **Footer**: Contact info and social media links

## Usage

This template is designed for both web viewing and email distribution. The HTML uses email-safe techniques including:

- Table-based layouts
- Inline CSS where needed
- Email client compatibility
- Proper fallback fonts

## Live Demo

View the newsletter template at: `https://[your-username].github.io/[repository-name]/`

---

*Designed for WXPN - Philadelphia's premier public radio station*
