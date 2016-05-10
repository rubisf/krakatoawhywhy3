#!/bin/bash

echo "#!/bin/bash" > /usr/bin/why3ide.sh
echo "" >> /usr/bin/why3ide.sh
echo "\`why3 ide \$*\`" >>  /usr/bin/why3ide.sh
chmod a+x /usr/bin/why3ide.sh
sudo ln -s /usr/bin/why3ide.sh /usr/bin/why3ide
chmod a+x /usr/bin/why3ide
sudo apt-get -y install why ocaml ocaml-nox libmenhir-ocaml-dev liblablgtk2-ocaml-dev  libocamlgraph-ocaml-dev menhir libzarith-ocaml-dev  wget cvc3 libgtksourceview2.0-dev liblablgtksourceview2-ocaml libzip-ocaml-dev liblablgtk2-gl-ocaml-dev liblablgtk2-gnome-ocaml-dev liblablgtk-extras-ocaml-dev
wget https://gforge.inria.fr/frs/download.php/file/35214/why3-0.86.2.tar.gz
tar -xzf why3-0.86.2.tar.gz
cd why3-0.86.2/
./configure
make
sudo make install
why-config
why3 config
why3 config --detect-provers
