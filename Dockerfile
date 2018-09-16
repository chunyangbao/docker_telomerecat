FROM python:2.7

COPY . /telomerecat

WORKDIR /tmp

# Python 
RUN pip install telomerecat && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /root/.cache/pip && \
    rm -rf /tmp/*

WORKDIR /telomerecat

# Define default command.
CMD ["bash"]
