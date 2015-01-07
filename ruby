# uninstall all gems
sudo gem list | cut -d" " -f1 > gem_list.txt
cat gem_list.txt | xargs sudo gem uninstall -aIx
cat gem_list.txt | xargs sudo gem install

# regenerate documentation for ri, etc
rdoc --all --ri
# or is it this?
gem rdoc --all --overwrite

# .gemrc stuff
:ssl_verify_mode: 0
:ssl_ca_cert:
install: --no-rdoc --no-ri
update: --no-rdoc --no-ri

# rbenv stuff
cd ~/.rbenv && git pull
cd ~/.rbenv/plugins/ruby-build && git pull

rbenv version
rbenv install --list
rbenv install 2.0.0-p353
