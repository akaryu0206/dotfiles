# Dockを自動的に隠す
defaults write com.apple.dock autohide -bool true

# Dockの位置を下にする
defaults write com.apple.dock orientation -string "bottom"

# Dockの拡大機能を無効にする
defaults write com.apple.dock magnification -bool true

# Finderにサイドバーを表示する
defaults write com.apple.finder ShowSidebar -bool true

# Finderのサイドバーのアイコンサイズを中にする
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# 透明度を下げる
defaults write com.apple.universalaccess reduceTransparency -bool true

# スクロールバーを常に表示する
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# QuickLookでテキストの選択をできるようにする
defaults write com.apple.finder QLEnableTextSelection -bool true
