FROM python:2.7

# Python
RUN pip install pandas argparse numpy parabam && \
    git clone https://github.com/jhrf/telomerecat.git && \
    cd /telomerecat && \
    python setup.py install && \
    rm -rf /root/.cache/pip

WORKDIR /telomerecat

# Define default command.
CMD ["bash"]
