#!/bin/bash

touch ~/.dotfiles/code/.config/Code/User/install.sh

echo "#!/bin/bash" > install.sh
echo "" >> install.sh

code --list-extensions | xargs -L 1 echo code --install-extension >> install.sh

chmod u+x install.sh