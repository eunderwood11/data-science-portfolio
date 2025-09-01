def resetBillingFile(fileName):
     open(fileName, 'w')

def writeBillingRecord(fileName, employeeName, rate, *weeklyHours):
    try:
        with open(fileName, 'a') as file:
            file.write(employeeName + '\n')
            file.write(str(rate) + '\n')
            for hours in weeklyHours:
                file.write(str(hours) + '\n')
    except Exception as e:
        print(f"Error: {e}")

def readEmployeeName():
    employeeName = ''
    employeeName = input('Employee Name: ')
    if not employeeName:
        print("Employee name must be entered.\n")
        employeeName = input('Employee Name: ')
    return employeeName

def readHourlyRate():
    MIN_HOURLY_RATE = 20
    rate = 0.0
    try:
        rate = float(input('Hourly Rate: '))
        while rate < MIN_HOURLY_RATE:
            print("Invalid Hourly Rate, must be at least $20.00/hour.\n")
            rate = float(input('Hourly Rate: '))
    except ValueError:
        print("Invalid input. Please enter a valid hourly rate.")
        rate = readHourlyRate()  
    return rate

def readWeeklyHours(prompt):
    MIN_HOURS_PER_WEEK = 35
    MAX_HOURS_PER_WEEK = 80
    hours = 0.0
    try:
        hours = float(input(prompt))
        while hours < MIN_HOURS_PER_WEEK or hours > MAX_HOURS_PER_WEEK:
            print("Invalid number of hours for week, must be between 35 and 80.\n")
            hours = float(input(prompt))
    except ValueError:
        print("Invalid input. Please enter a valid number of hours.")
        hours = readWeeklyHours(prompt)  
    return hours
