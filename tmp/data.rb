
courses = [[118,'General English (R/W) & Business English (L/S)',300,'Full',1],
[101,'General English',285,'Full',1],
[102,'General English & SEES ',300,'Full',1],
[103,'IELTS & General English',315,'Full',1],
[105,'Business English & General English',315,'Full',1],
[106,'Business Internship Program',315,'Full',1],
[108,'Business English Diploma',183.333,'Full',1],
[201,'General English & Business English',365,'Intensive',1],
[202,'General English & IELTS',365,'Intensive',1],
[203,'General English & SEES',345,'Intensive',1],
[204,'General English & SEES & IELTS',385,'Intensive',1],
[301,'General English - Listening and Speaking',160,'Part',1],
[302,'General English - Reading and Writing',230,'Part',1],
[303,'Standardized English Exam Skills',180,'Part',1],
[304,'IELTS',275,'Part',1],
[305,'Business English ',275,'Part',1],
[310,'One On One',50,'Part',1],
[312,'Remedial',230,'Part',1],
[315,'Business English (L/S)',180,'Part',1],
[109,'University Pathway Program - UPP',353.333,'Full',1],
[110,'Course 110 – Business English & SEES',350,'Full',1],
[117,'General English (R/W) & UPP (L/S)',330,'Full',1],
[119,'IELTS & Business English',350,'Full',1],
[104,'IELTS and SEES',350,'Full',1],
[115,'Teen Adventure Summer Camp','Full',1],
[116,'Teen Adventure Winter Camp','Full',1],
[121,'Business English Full-Time',315,'Full',1],
[207,'Business English Full-Time & IELTS',365,'Intensive',1],
[120,'General English (L/S) & Business English (L/S)',285,'Full',1],
[311,'General English & Customized Lessons',395,'Full',1],
[111,'Course 111 – SEES & General English (L/S)',285,'Full',1],
[112,'University Preparatory Program (R/W) & IELTS',360,'Full',1],
[113,'University Preparatory Program (R/W) & IELTS Skills',350,'Full',1],
[114,'University Preparatory Program (F/T) & SEES',350,'Full',1],
[206,'General English (F/T) & UPP (R/W)',365,'Intensive',1],
[313,'University Preparatory Program (R/W)',275,'Part',1],
[314,'University Preparatory Program (L/S)',180,'Part',1]]

courses.each do |c|
	course = Course.new
	course.id = c[0]
	course.name = c[1]
	course.course_price = c[2]
	course.course_type = c[3]
	course.active = 1
	course.save
end
