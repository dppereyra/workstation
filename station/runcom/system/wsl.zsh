echo "Loading wsl specific configs"

winPaths=(
  "/usr/lib/wsl/lib"
  "/mnt/c/Windows"
  "/mnt/c/Windows/System32"
  "/mnt/c/Windows/System32/Wbem"
  "/mnt/c/Program Files/Microsoft VS Code/bin"
  "/mnt/c/opt/bin"
)

for winPath in winPaths
do
  export PATH=$PATH:$winPath
done

export VAGRANT_DEFAULT_PROVIDER=hyperv
