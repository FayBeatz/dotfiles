# --- Navigate to your dotfiles directory ---
cd ~/dotfiles &&

# --- Remove all old, broken Git data ---
echo "🗑️  Removing old .git directories..."
rm -rf .git &&
rm -rf .config/fastfetch/.git &&

# --- Start a fresh Git repository ---
echo "✨  Initializing a new, clean repository..."
git init &&
git branch -M main &&

# --- Add all your files and create the first commit ---
echo "➕  Adding all files to the new repository..."
git add . &&
echo "📝  Creating the first commit..."
git commit -m "Initial commit of all dotfiles" &&

# --- Link to your new GitHub repo ---
echo "🔗  Linking to your new GitHub repository..."
git remote add origin https://github.com/FayBeatz/dotfiles.git &&

# --- Force push everything to GitHub ---
echo "🚀  Uploading everything to GitHub..."
git push --force -u origin main &&

# --- All done! ---
echo "✅  Success! Your dotfiles have been uploaded."
