from robot.api.deco import keyword
from pymongo import MongoClient

# Connection example
client = MongoClient('mongodb+srv://USER:PASSWORD@CLUSTER.fahzfqr.mongodb.net/DB?retryWrites=true&w=majority&appName=CLUSTER')

db = client['markX']

@keyword('Remove task from database')
def remove_task_by_name(task_name):
    collection = db['tasks']
    collection.delete_many({'text': task_name})
    print('Deleting the task: '+ task_name)