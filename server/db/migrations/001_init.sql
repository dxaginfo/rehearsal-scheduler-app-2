CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT, email TEXT UNIQUE, password TEXT, role TEXT, created_at TIMESTAMP);
CREATE TABLE rehearsals (id SERIAL PRIMARY KEY, date DATE, time TIME, location TEXT, notes TEXT, created_by INTEGER REFERENCES users(id));
CREATE TABLE attendance (id SERIAL PRIMARY KEY, rehearsal_id INTEGER REFERENCES rehearsals(id), user_id INTEGER REFERENCES users(id), status TEXT, updated_at TIMESTAMP);
CREATE TABLE setlist (id SERIAL PRIMARY KEY, rehearsal_id INTEGER REFERENCES rehearsals(id), song_name TEXT, notes TEXT, position INT);
CREATE TABLE files (id SERIAL PRIMARY KEY, rehearsal_id INTEGER REFERENCES rehearsals(id), url TEXT, uploaded_by INTEGER REFERENCES users(id), file_type TEXT);
CREATE TABLE messages (id SERIAL PRIMARY KEY, sender_id INTEGER REFERENCES users(id), group_id INTEGER, content TEXT, sent_at TIMESTAMP);