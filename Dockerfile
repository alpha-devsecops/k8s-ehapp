FROM node:22.2-slim

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

# ignore dev dependencies and also freeze lock file
RUN yarn install --production --frozen-lockfile

COPY . .

# -U -> create usergroup as same as username and add the user to group
# -m -> create home dir for the user
# -r -> system user
# -l -> do not add user to lastlog and faillog database
# -s /bin/bash -> set user default shell
# ehapp -> username
RUN useradd -Um -rl -s /bin/bash ehapp

# set the workdir to be owned by the newly create user and group
RUN chown -R ehapp:ehapp /usr/src/app

USER ehapp

EXPOSE 4000

CMD ["yarn", "run", "start"]