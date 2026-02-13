"""数据库初始化脚本"""

from loguru import logger


def init_database() -> None:
    """初始化数据库"""
    logger.info("开始初始化数据库...")
    # TODO: 实现数据库初始化逻辑
    logger.info("数据库初始化完成")


if __name__ == "__main__":
    init_database()
