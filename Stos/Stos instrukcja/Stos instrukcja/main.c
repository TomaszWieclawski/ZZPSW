typedef struct {
	char name[10];
} Person;

Person person = {"Zenobiusz"};

void copy(Person p){
	Person P = p;
}

int main() {
	copy(person);
}
