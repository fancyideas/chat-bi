# ChatBI 智能商业分析系统

民航机场 Text2SQL 智能分析系统，基于大语言模型实现自然语言到SQL的转换。

## 项目简介

本项目旨在构建一个基于大语言模型的 Text2SQL 智能分析系统，通过自然语言交互方式，让业务人员无需掌握 SQL 即可快速获取数据洞察。

## 技术栈

- **Python**: 3.13+
- **AI框架**: LangGraph + LangChain
- **LLM**: Qwen2.5-14B + Ollama
- **Web框架**: FastAPI + Uvicorn
- **数据库**: SQLAlchemy + PyMySQL
- **RAG**: ChromaDB + bge-large-zh
- **SQL处理**: sqlglot

## 项目结构

```
text2sql-aviation/
├── src/text2sql/          # 主包
│   ├── core/              # 核心业务逻辑
│   ├── api/               # FastAPI接口
│   ├── rag/               # RAG检索
│   ├── sql/               # SQL处理
│   ├── llm/               # LLM调用
│   ├── db/                # 数据库
│   └── utils/             # 工具
├── config/                # 配置
├── tests/                 # 测试
├── scripts/               # 脚本
├── docs/                  # 文档
└── data/                  # 数据
```

## 快速开始

### 1. 安装依赖

```bash
# 使用 UV 安装依赖
uv pip install -e .

# 或使用 pip
pip install -e .
```

### 2. 配置环境变量

```bash
cp .env.example .env
# 编辑 .env 文件，填入实际配置
```

### 3. 启动服务

```bash
# 启动 FastAPI 服务
uvicorn src.text2sql.api.main:app --reload
```

## 开发

### 代码检查

```bash
# 代码格式化
ruff format .

# 代码检查
ruff check .

# 类型检查
mypy src/
```

### 运行测试

```bash
pytest
```

## 文档

详细文档请查看 `docs/` 目录：
- [技术方案](docs/05技术方案.md)
- [技术选型](docs/06技术选型.md)

## License

MIT
