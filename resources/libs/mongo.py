from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://qax:xperience@cluster0.fahzfqr.mongodb.net/markX?retryWrites=true&w=majority&appName=Cluster0')

db = client['markX']

@keyword('Remove task from database')
def remove_task_by_name(task_name):
    collection = db['tasks']
    collection.delete_many({'text': task_name})
    print('Deleting the task: '+ task_name)