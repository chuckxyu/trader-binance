FROM python:3
ADD app/* /
ADD db/* /db/

ADD trader.py /
RUN pip install requests
CMD [ "sh", "-c", "python ./trader.py --symbol XRPBTC --amount 10 --profit 3 --stop_loss 4 --wait_time 2"]
