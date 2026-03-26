FROM node:14-alpine
FROM python:3.8-slim
FROM golang:1.17-alpine

WORKDIR /app
COPY . .
CMD ["node", "index.js"]
