require 'rubygems'
require 'sqlite3'
$db = SQLite3::Database.open("dbfile")
$db.results_as_hash = true

def disconnect_and_quite
	$db.close
	puts "Bye!"
end

def create_table
	puts "Creating people table"
	$db.execute %q{
		CREATE TABLE people (
			id integer primary key,
			name varchar(50),
			job varchar(50),
			gender varchar(6),
			age integer)
	}
end

def add_person
	puts "Enter name:"
	name = gets.chomp
	puts "Enter job:"
	job = gets.chomp
	puts "Enter gender:"
	gender = gets.chomp
	puts "Enter age:"
	age =  gets.chomp
	$db.execute("INSERT INTO people (name, job, gender, age) VALUES (?,?,?,?)",name,job,gender,age)
end

def find_person
	puts "Enter name or ID of the person to find:"
	id = gets.chomp

	person = $db.execute("SELECT * FROM people WHERE name = ? OR id = ?",id,id.to_i).first

	unless person
		puts "No result found!"
		return
	end

	puts %Q{Name: #{person['name']}
	Job: #{person['job']}
	Gender: #{person['gender']}
	Age: #{person['age']}}
end

add_person
add_person

find_person

