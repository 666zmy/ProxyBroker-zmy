# 基础镜像
FROM gitpod/workspace-full

# 安装 pyenv
RUN curl https://pyenv.run | bash && \
    echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc && \
    echo 'eval "$(pyenv init --path)"' >> ~/.bashrc && \
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# 安装 Python 3.7.5
RUN bash -c "source ~/.bashrc && pyenv install 3.7.5"
