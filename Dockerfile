# Stage 1: Build Frontend
FROM node:22 AS frontend-builder

WORKDIR /app/frontend
COPY ./frontend/package*.json ./
RUN npm install
COPY ./frontend .
RUN npm run build

# Stage 2: Set up Backend
FROM node:22 AS backend

WORKDIR /app/backend
COPY ./backend/package*.json ./
RUN npm install
COPY ./backend .

# Copy the frontend build to the backend public folder
COPY --from=frontend-builder /app/frontend/dist ./public

EXPOSE 5000

CMD ["npm", "start"]
