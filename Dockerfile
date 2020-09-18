FROM fedora:32

RUN mkdir /work
VOLUME /work

RUN mkdir -p /root/.ssh
RUN chmod 700 /root/.ssh
VOLUME /root/.ssh

RUN dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
RUN dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

RUN dnf groupupdate -y core

RUN dnf install -y vim python3 python3-devel python3-pip tmux curl git tig fzf wget bc ctags findutils bash-completion krb5-devel cmake pandoc

RUN dnf -y groupinstall "Development Tools"

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN mkdir -p /root/.config
ADD config_flake8 /root/.config/flake8

ADD requirements.txt /root/
RUN pip3 install -r /root/requirements.txt

ADD vimrc_srv /root/.vimrc
RUN vim +PlugInstall +qall

ADD vim.theme /root/.vim/
RUN cat /root/.vim/vim.theme >>/root/.vimrc

ADD tmux.conf /root/.tmux.conf
ADD bashrc /root/.bashrc

WORKDIR /work

CMD tmux

