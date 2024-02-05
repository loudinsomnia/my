from sqlalchemy import create_engine, text, select


def find():
    return create_engine(
        "postgresql+psycopg2://autotest_user:autotest_user@localhost:5432/alfabd",
        isolation_level="REPEATABLE READ",

    )


def connect():
    with find().connect() as conn:
        result = conn.execution_options(stream_results=True).execute(text("select * from alfabit.createmerchant"))
        for row in result:
            print(list(row))


connect()
