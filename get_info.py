import psycopg2
from contextlib import closing

from psycopg2.extras import RealDictCursor


def read_data(db_config: dict):
    """Returns a list of dictionaries, each dictionary represents a row from db."""

    with closing(psycopg2.connect(**db_config)) as conn:
        with conn.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute("""
            SELECT date_trunc('hour', created_at) AS date,
            COUNT(*)                       AS goods_sold,
            SUM(g.price)                   AS cash_earned,
            COUNT(DISTINCT client_id)        AS unique_customers
            FROM purchases p
                INNER JOIN goods g ON p.good_id = g.id
            WHERE created_at > CURRENT_TIMESTAMP - INTERVAL '3 days'
            GROUP BY date_trunc('hour', created_at)
            ORDER BY date;
            """)

            return cursor.fetchall()


def main():
    db_config = {
        "dbname": "postgres",
        "user": "postgres",
        "password": "root",
        "host": "localhost"
    }

    data = read_data(db_config)

    i = 0
    while i < len(data):
        date = data[i]["date"]

        print(f"Дата: {date.day}-{date.month}-{date.year}")

        while date.day == data[i]["date"].day:
            print(f"\tВремя: с {data[i]['date'].hour}:00 по {data[i]['date'].hour + 1}:00")
            print(f"\t\tКоличество покупателей: {data[i]['unique_customers']}")
            print(f"\t\tКоличество покупок: {data[i]['goods_sold']}")
            print(f"\t\tОбщая сумма покупок: {data[i]['cash_earned']}")
            i += 1
            # end looping when data is exhausted
            if not i < len(data):
                break


if __name__ == "__main__":
    main()
