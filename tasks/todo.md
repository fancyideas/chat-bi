# ChatBI 项目初始化任务清单

## 项目信息
- 项目名称: text2sql-aviation
- Python版本: 3.13+
- 包管理器: UV
- 核心框架: LangGraph + FastAPI

## 待办任务

### 阶段1: 基础项目结构
- [ ] 创建项目根目录结构
- [ ] 创建 pyproject.toml 配置文件
- [ ] 创建 .env.example 环境变量模板
- [ ] 创建 .gitignore 文件
- [ ] 创建 README.md 项目说明

### 阶段2: 核心模块目录
- [ ] 创建 src/text2sql 主包目录
- [ ] 创建 src/text2sql/core 核心模块
- [ ] 创建 src/text2sql/api FastAPI接口模块
- [ ] 创建 src/text2sql/rag RAG检索模块
- [ ] 创建 src/text2sql/sql SQL处理模块
- [ ] 创建 src/text2sql/llm LLM调用模块
- [ ] 创建 src/text2sql/db 数据库模块
- [ ] 创建 src/text2sql/utils 工具模块

### 阶段3: 配置和工具文件
- [ ] 创建 config/settings.py 配置管理
- [ ] 创建 scripts/ 脚本目录
- [ ] 创建 tests/ 测试目录结构
- [ ] 创建 logs/ 日志目录

### 阶段4: 初始化文件
- [ ] 创建各模块的 __init__.py
- [ ] 创建基础配置类
- [ ] 创建日志配置

## 项目目录结构

```
text2sql-aviation/
├── src/
│   └── text2sql/
│       ├── __init__.py
│       ├── core/              # 核心业务逻辑
│       │   ├── __init__.py
│       │   ├── intent.py      # 意图理解
│       │   ├── generator.py   # SQL生成
│       │   ├── validator.py   # SQL校验
│       │   └── executor.py    # SQL执行
│       ├── api/               # FastAPI接口
│       │   ├── __init__.py
│       │   ├── main.py        # 主应用
│       │   ├── routes/        # 路由
│       │   └── models/        # Pydantic模型
│       ├── rag/               # RAG检索
│       │   ├── __init__.py
│       │   ├── retriever.py   # 检索器
│       │   └── embeddings.py  # 向量化
│       ├── sql/               # SQL处理
│       │   ├── __init__.py
│       │   ├── parser.py      # SQL解析
│       │   └── formatter.py   # SQL格式化
│       ├── llm/               # LLM调用
│       │   ├── __init__.py
│       │   └── client.py      # LLM客户端
│       ├── db/                # 数据库
│       │   ├── __init__.py
│       │   ├── connection.py  # 连接管理
│       │   └── models.py      # ORM模型
│       └── utils/             # 工具
│           ├── __init__.py
│           ├── logger.py      # 日志
│           └── config.py      # 配置
├── config/
│   └── settings.py            # 配置管理
├── tests/                     # 测试
│   ├── __init__.py
│   ├── test_core/
│   ├── test_api/
│   └── test_rag/
├── scripts/                   # 脚本
│   └── init_db.py            # 数据库初始化
├── docs/                      # 文档
├── logs/                      # 日志
├── data/                      # 数据文件
│   └── knowledge_base/       # 知识库
├── pyproject.toml            # 项目配置
├── .env.example              # 环境变量模板
├── .gitignore
└── README.md
```

## 注意事项
- 所有模块保持简单,只创建基础结构
- 每个Python包都需要 __init__.py
- 配置文件使用 pydantic-settings
- 日志使用 loguru
- 遵循 Python 3.13+ 类型提示规范

## 审核部分

### 已完成工作总结

✅ **阶段1: 基础项目结构**
- 创建了完整的项目目录结构
- 创建了 pyproject.toml 配置文件（包含所有依赖）
- 创建了 .env.example 环境变量模板
- 创建了 .gitignore 文件
- 创建了 README.md 项目说明

✅ **阶段2: 核心模块目录**
- 创建了 src/text2sql 主包及所有子模块
- core模块: intent.py, generator.py, validator.py, executor.py
- api模块: main.py（FastAPI应用）
- rag模块: retriever.py
- sql/llm/db/utils 模块的基础结构

✅ **阶段3: 配置和工具文件**
- 创建了 utils/logger.py（基于loguru）
- 创建了 utils/config.py（基于pydantic-settings）
- 创建了 tests/ 测试目录结构
- 创建了 scripts/init_db.py 初始化脚本

✅ **阶段4: 初始化文件**
- 所有模块都创建了 __init__.py
- 核心类都有基础框架和类型提示
- 配置类已实现完整功能

### 项目特点
- 遵循Python 3.13+类型提示规范
- 使用现代化工具链（UV、ruff、mypy）
- 模块划分清晰，符合技术方案设计
- 所有代码保持简洁，只有基础骨架

### 下一步建议
1. 运行 `uv pip install -e .` 安装依赖
2. 复制 `.env.example` 为 `.env` 并配置
3. 开始实现各模块的具体逻辑
