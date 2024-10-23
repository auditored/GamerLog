import json
import os
import uuid

# specify the file path and name of the input JSON file
input_file = os.path.join('my_data.json')

with open(input_file, 'r') as f:
    data = json.load(f)

for record in data:
    new_uuid = str(uuid.uuid4())
    record['uuid'] = new_uuid
    del record['pk']

# specify the file path and name of the output JSON file
output_file = os.path.join('modified_data.json')

with open(output_file, 'w') as f:
    json.dump(data, f)