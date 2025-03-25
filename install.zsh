echo "Finding package manager..."
package_managers=("brew" "pacman")
PACKAGE_MANAGER="NONE"

for manager in "${package_managers[@]}"; do
    if command -v $manager > /dev/null; then
        PACKAGE_MANAGER=$manager
    fi
done

if [[ "$PACKAGE_MANAGER" == "NONE" ]]; then
    echo "Couldn't find an available package manager."
    exit 1
fi

echo "Looks like you're using $PACKAGE_MANAGER!"

echo "Installing packages..."
