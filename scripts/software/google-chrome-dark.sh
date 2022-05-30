# Script modified and taken from https://github.com/felipecrs/dotfiles
# Source licensed under MIT License by Felipe Santos (felipecrs)

original_shortcut=/usr/share/applications/google-chrome.desktop

if [[ ! -f "${original_shortcut}" ]]; then
    echo "Could not find the file ${original_shortcut}. Are you sure that Google Chrome is installed?"
    exit 1
fi

new_shortcut="${HOME}/.local/share/applications/$(basename "${original_shortcut}")"

echo "To enable dark mode, the file '${new_shortcut}' will be created."
read -p "Do you confirm? (Yy)" -n 1 -r
echo
if [[ ! ${REPLY} =~ ^[Yy]$ ]]; then
    exit 1
fi

## Create the shortcut
cp -f "${original_shortcut}" "${new_shortcut}"
line_match="Exec=/usr/bin/google-chrome-stable"
sed -i "s:${line_match}:${line_match} --enable-features=WebUIDarkMode --force-dark-mode:g" "${new_shortcut}" # The //\//\\/ is used to escape forward slashes

echo "Dark-mode shortcut created."
echo "Please make sure you fully close Google Chrome before opening a new instance."
echo
echo "To uninstall, run:"
echo "  rm -f ${new_shortcut}"