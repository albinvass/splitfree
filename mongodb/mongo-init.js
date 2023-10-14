db = new Mongo().getDB("splitfree")
db.createUser(
        {
            user: "splitfree",
            pwd: "splitfree",
            roles: [
                {
                    role: "readWrite",
                    db: "splitfree"
                }
            ]
        }
);

db.createCollection('expenses', {capped: false})

db.test.insert([{
    _id: ObjectId('6529315bb0887a39cd6fe906'),
    name: 'Hemköp',
    date: 'today',
    value: 1000,
    receipt: null,
    split: {
        albin: '50',
        carolina: '50'
    },
    split_type: '%'
}])
