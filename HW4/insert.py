import psycopg2
import random

#Establishing the connection
conn = psycopg2.connect(
   database="postgres", user='postgres', password='postgres', host='localhost', port= '5432'
)

#Creating a cursor object using the cursor() method
cursor = conn.cursor()

# Preparing SQL queries to INSERT a record into the database.
for i in range(1, 10001):
   id = random.randint(1, 10000)
   data = (id, "test_content%s" % id)
   if id % 3 == 0:
      query = "INSERT INTO public.f_table1(id, content) VALUES (%s, %s);"
      cursor.execute(query, data)
   elif id % 3 == 1:
      query = "INSERT INTO public.f_table2(id, content) VALUES (%s, %s);"
      cursor.execute(query, data)
   elif id % 3 == 2:
      query = "INSERT INTO public.f_table3(id, content) VALUES (%s, %s);"
      cursor.execute(query, data)

# Commit your changes in the database
conn.commit()

# Closing the connection
conn.close()