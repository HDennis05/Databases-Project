
import mysql.connector

mydb = mysql.connector.connect(
    host="hdennis02.webhosting1.eeecs.qub.ac.uk",
    database="hdennis02",
    user="hdennis02",
    password="tM6dHk2cRBKPcxfj"
)

mycursor = mydb.cursor()

print("\nEMPLOYMENT AGENCY\n"
      "-----------------\n")
print("1. Display views")
print("2. Insert jobRole\n")

correct = False
while correct == False:
    choice = input("Input choice: ")
    if choice == "1":
        print("\n\nDISPLAY VIEWS"
              "\n-------------\n")
        print("1. viewOpportunities \n2. viewApplications \n3. applicationHistory \n4. fieldSalaryTrends\n")
        correct2 = False
        while correct2 == False:
            correct2 = True
            choice2 = input("Input choice: ")
            if choice2 == "1":
                tableName = "viewOpportunities"
                headings = "(Company Name, Company Details, Company Field, Job Role, Available Vacancies, Salary, Minimum Qualification Needed, Full time, Date Posted)"
            elif choice2 == "2":
                tableName = "viewApplication"
                headings = "(Job Role, Applicant Forename, Applicant Surname, Date of Birth, Email Address, Phone Number, Qualification Level, Work Experience, Extra Notes)"
            elif choice2 == "3":
                tableName = "applicationHistory"
                headings = "(Company Name, Job Role, JobSeeker Forename, JobSeeker Surname, Application Status)"
            elif choice2 == "4":
                tableName = "fieldSalaryTrends"
                headings = "(Field of Work, Jobs Available, Average Salary, Minimum Salary, Maximum Salary)"
            else:
                correct2 = False
                print("Choice doesnt exist")

        print("\nDISPLAY "+tableName+":\n"+headings)
        selectString = "SELECT * FROM "+tableName
        mycursor.execute(selectString)
        myresult = mycursor.fetchall()
        for x in myresult:
            print(x)

        input("\nPress Enter to exit: ")
        print("\n\nEMPLOYMENT AGENCY\n"
              "-----------------\n")
        print("1. Display views")
        print("2. Insert jobRole\n")

    elif choice == "2":
        print("\n\nINSERT JOB ROLE"
              "\n---------------\n")

        title = input("Input job title: ")
        companyId = input("Input company ID: ")
        vacancies = input("Input vacancies: ")
        salary = input("Input salary: ")
        fullTime = input("Input 'TRUE' if the job is fullTime or 'FALSE' if it isn't: ")
        minQualificationId = input("Input minimum Qualification ID: ")
        datePosted = input("Input today's date in format YYYY-MM-DD: ")
        insertString = "INSERT INTO jobRole(title, companyId, vacancies, salary, fullTime, minQualificationId, datePosted) VALUES ('"+title+"', "+companyId+", "+vacancies+ ", "+salary+ ", "+fullTime+", "+ minQualificationId + ", '"+datePosted+"')"
        mycursor.execute(insertString)

        input("\nPress Enter to exit: ")
        print("\n\nEMPLOYMENT AGENCY\n"
              "-----------------\n")
        print("1. Display views")
        print("2. Insert jobRole\n")

        mydb.commit()

    else:
        print("Choice doesnt exist")



