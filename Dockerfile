FROM directus/directus:10.12.1

USER root
RUN corepack enable \
    && corepack prepare pnpm@9.4.0 --activate

USER node
RUN pnpm install @directus/sdk@16.1.0