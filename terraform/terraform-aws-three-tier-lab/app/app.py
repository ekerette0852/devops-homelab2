from flask import Flask, render_template
import pymysql
import os

app = Flask(__name__)

DB_HOST = os.getenv("DB_HOST")
DB_USER = os.getenv("DB_USER")
DB_PASSWORD = os.getenv("DB_PASSWORD")
DB_NAME = os.getenv("DB_NAME")


@app.route("/")
def home():

    try:
        connection = pymysql.connect(
            host=DB_HOST,
            user=DB_USER,
            password=DB_PASSWORD,
            database=DB_NAME
        )

        cursor = connection.cursor()
        cursor.execute("SELECT NOW();")

        result = cursor.fetchone()

        connection.close()

        return render_template(
            "index.html",
            status="Connected",
            db_time=result[0]
        )

    except Exception as e:

        return render_template(
            "index.html",
            status="Failed",
            error=str(e)
        )


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
