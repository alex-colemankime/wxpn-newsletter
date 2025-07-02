#!/usr/bin/env python3
import subprocess
import os
import sys

def run_command(cmd, description):
    print(f"🔄 {description}...")
    try:
        result = subprocess.run(cmd, shell=True, capture_output=True, text=True, cwd="/Users/ack2/wxpn-newsletter")
        if result.returncode == 0:
            print(f"✅ {description} - Success")
            if result.stdout:
                print(f"Output: {result.stdout}")
        else:
            print(f"❌ {description} - Failed")
            print(f"Error: {result.stderr}")
            return False
        return True
    except Exception as e:
        print(f"❌ {description} - Exception: {e}")
        return False

def main():
    print("🚀 WXPN Newsletter Deployment Script")
    print("=" * 40)
    
    # Change to correct directory
    os.chdir("/Users/ack2/wxpn-newsletter")
    print(f"📁 Working directory: {os.getcwd()}")
    
    # Configure git
    if not run_command('git config user.name "alex-colemankime"', "Configure git username"):
        sys.exit(1)
    
    if not run_command('git config user.email "alex-colemankime@users.noreply.github.com"', "Configure git email"):
        sys.exit(1)
    
    # Check git status
    run_command('git status', "Check git status")
    
    # Add changes
    if not run_command('git add .', "Add all changes"):
        sys.exit(1)
    
    # Check if there are changes to commit
    result = subprocess.run('git diff --staged --quiet', shell=True, cwd="/Users/ack2/wxpn-newsletter")
    if result.returncode == 0:
        print("ℹ️ No changes to commit")
        sys.exit(0)
    
    # Commit changes
    if not run_command('git commit -m "Update hero story to Lauryn Hill Beardfest with improved layout"', "Commit changes"):
        sys.exit(1)
    
    # Push to GitHub
    if not run_command('git push origin main', "Push to GitHub"):
        sys.exit(1)
    
    print("\n🎉 Deployment completed successfully!")
    print("🌐 Your site will be updated in 1-2 minutes at:")
    print("   https://ack2-gh.github.io/wxpn-newsletter/")

if __name__ == "__main__":
    main()
