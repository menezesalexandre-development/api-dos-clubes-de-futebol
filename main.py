from fastapi import FastAPI, HTTPException 
from pydantic import BaseModel
import mysql.connector

app = FastAPI()

db = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = '',
    database = 'clubes'
)

cursor = db.cursor()

class Time(BaseModel):
    id: int
    clube: str
    cidade: str
    uf: str
    estadio: str
    competicao: str

@app.get('/times')
def get_items():
    try :
        cursor.execute('SELECT * FROM times ORDER BY clube')
        times = [{'id': row[0], 'clube': row[1], 'cidade': row[2], 'uf': row[3], 'estadio': row[4], 'competicao': row[5]} for row in cursor.fetchall()]
        return times
    except:
        raise HTTPException(status_code=500, detail='Database error')
    

@app.post('/times', response_model=Time)
def create_item(time: Time):
    try: 
        query = f'INSERT INTO times (id, clube, cidade, uf, estadio, competicao) VALUES (DEFAULT, "{time.clube}", "{time.cidade}", "{time.uf}", "{time.estadio}", "{time.competicao}")'
        cursor.execute(query)
        db.commit()
        return {"id": time.id, "clube": time.clube, "cidade": time.cidade, "uf": time.uf, "estadio": time.estadio, "competicao": time.competicao}
    except Exception as e:
        raise HTTPException(status_code=500, detail=f'Database error {str(e)}')
    

@app.put('/times/{time_id}', response_model=Time)
def update_item(time_id: int, time: Time):
    try:
        query_clube = f'UPDATE times SET clube = "{time.clube}" WHERE id = {time_id};'
        query_cidade = f'UPDATE times SET cidade = "{time.cidade}" WHERE id = {time_id};'
        query_uf = f'UPDATE times SET uf = "{time.uf}" WHERE id = {time_id};'
        query_estadio = f'UPDATE times SET estadio = "{time.estadio}" WHERE id = {time_id};'
        query_competicao = f'UPDATE times SET competicao = "{time.competicao}" WHERE id = {time_id};'
        cursor.execute(query_clube)
        cursor.execute(query_cidade)
        cursor.execute(query_uf)
        cursor.execute(query_estadio)
        cursor.execute(query_competicao)
        db.commit()
        return {"id": time_id, "clube": time.clube, "cidade": time.cidade, "uf": time.uf, "estadio": time.estadio, "competicao": time.competicao}
    except Exception as e:
        raise HTTPException(status_code=500, detail=f'Database error {str(e)}')


@app.delete('/times/{time_id}')
def delete_item(time_id: int):
    try:
        query = f'DELETE FROM times WHERE id = {time_id}'
        cursor.execute(query)
        db.commit()
        if cursor.rowcount == 0:
            raise HTTPException(status_code=404, detail='Item not found')
        return {'message': 'Time Deletado'}
    except Exception as e:
        raise HTTPException(status_code=500, detail=f'Database error: {str(e)}')

