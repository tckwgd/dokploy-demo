FROM node:20-alpine

WORKDIR /app

# 复制package.json和package-lock.json（如果存在）
COPY package*.json ./

# 安装依赖
RUN npm install --omit=dev

# 复制源代码
COPY . .

# 设置用户
USER node

# 暴露端口
EXPOSE 3000

# 启动应用
CMD ["npm", "start"]