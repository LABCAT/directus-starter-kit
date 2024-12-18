FROM directus/directus:11.3.5

USER root
RUN corepack enable
USER node

RUN pnpm install @directus/sdk@18.0.3