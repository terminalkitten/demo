FROM zorbash/kitto

ADD . /dashboard
WORKDIR /dashboard

ENV MIX_ENV prod

RUN mix deps.get
RUN npm install
RUN npm run build

CMD mix kitto.server
