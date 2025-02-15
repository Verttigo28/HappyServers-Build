# Stage 1: Build Frontend
FROM node:22 AS frontend

WORKDIR /frontend
COPY ./frontend/package*.json ./
RUN npm install
COPY ./frontend .
RUN npm run build

# Stage 2: Set up Backend
FROM node:22 AS backend

WORKDIR /backend
COPY ./backend/package*.json ./
RUN npm install --verbose
COPY ./backend .

# Copy the frontend build to the backend/src/public folder
RUN mkdir -p ./src/public
COPY --from=frontend /frontend/dist ./src/public

EXPOSE 5000

CMD ["npm", "start"]