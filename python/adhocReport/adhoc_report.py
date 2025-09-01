# Constants
employeeRecordLength = 6

def main():
    billingFile = "Billing.txt"

    billingData = readBillingFile(billingFile)

    if billingData:
        totalDue, totalHours, averageHours = calculateTotals(billingData)
        printReport(totalDue, totalHours, averageHours, billingData)

def readBillingFile(fileName):
    try:
        with open(fileName, 'r') as file:
            return file.readlines()
    except FileNotFoundError:
        print(f"Error: {fileName} file not found.")
        return None

def calculateTotals(billingData):
    totalDue = 0
    totalHours = 0
    employeeCount = 0

    for i in range(0, len(billingData), employeeRecordLength):
        hours = [float(billingData[x]) for x in range(i + 2, i + employeeRecordLength)]
        totalHours += sum(hours)
        rate = float(billingData[i + 1])
        totalDue += rate * sum(hours)
        employeeCount += 1

    averageHours = totalHours / employeeCount if employeeCount != 0 else 0
    return totalDue, totalHours, averageHours

def printReport(totalDue, totalHours, averageHours, billingData):
    print("Employee\tRate\tWeek 1\tWeek 2\tWeek 3\tWeek 4\tHours\tTotal")
    if billingData:
        totalBillableHours = 0  
        for i in range(0, len(billingData), employeeRecordLength):
            employeeName = billingData[i].strip()
            rate = float(billingData[i + 1])
            hours = [float(h) for h in billingData[i + 2:i + employeeRecordLength]]
            totalHours = sum(hours)
            totalBillableHours += totalHours  
            totalAmount = rate * totalHours
            print(f"{employeeName.ljust(10)}\t${rate:.2f}\t{hours[0]:.2f}\t{hours[1]:.2f}\t{hours[2]:.2f}\t{hours[3]:.2f}\t{totalHours:.2f}\t${totalAmount:,.2f}")
        print(f"\nTotal Billable Due:\t${totalDue:,.2f}")
        print(f"Total Billable Hours:\t{totalBillableHours:.2f}")  
        print(f"Average Billable Hours:\t{averageHours:.2f}")
    else:
        print("No employees on file")

if __name__ == "__main__":
    main()
