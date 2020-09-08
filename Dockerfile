FROM fedora:32

RUN mkdir /work
VOLUME /work

RUN mkdir -p /root/.ssh
RUN chmod 700 /root/.ssh
VOLUME /root/.ssh

RUN dnf install -y vim python3 python3-devel python3-pip tmux curl git tig fzf wget bc ctags

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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

