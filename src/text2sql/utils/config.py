"""配置管理

基于pydantic-settings实现配置管理
"""

from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    """应用配置"""

    model_config = SettingsConfigDict(
        env_file=".env",
        env_file_encoding="utf-8",
        case_sensitive=False
    )

    # 数据库配置
    db_host: str = "localhost"
    db_port: int = 3306
    db_user: str = "root"
    db_password: str = ""
    db_name: str = "aviation_db"

    # LLM配置
    llm_model_name: str = "qwen2.5:14b"
    llm_api_base: str = "http://localhost:11434"
    llm_api_key: str = ""

    # RAG配置
    embedding_model_path: str = ""
    chroma_persist_dir: str = "./data/chroma_db"

    # 应用配置
    app_host: str = "0.0.0.0"
    app_port: int = 8080
    log_level: str = "INFO"
    log_dir: str = "./logs"

    # 安全配置
    secret_key: str = "your-secret-key-here"
    allowed_origins: list[str] = ["http://localhost:3000"]

    @property
    def database_url(self) -> str:
        """数据库连接URL"""
        return f"mysql+pymysql://{self.db_user}:{self.db_password}@{self.db_host}:{self.db_port}/{self.db_name}"


# 全局配置实例
settings = Settings()
