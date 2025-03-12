FROM registry.access.redhat.com/ubi9/python-311

# Add application sources with correct permissions for OpenShift
USER 0
ADD . .
RUN chown -R 1001:0 ./
USER 1001

RUN pip install -U "pip>=19.3.1" && \
    pip install -r requirements.txt

