import BillingModule
import os

def main():
    # Constants
    WEEKS = 4
    STANDARD_HOURS = 160
    OVERTIME_RATE_MULTIPLIER = 1.05
    BILLING_FILE = "Billing.txt"

    # Reset Billing file
    BillingModule.resetBillingFile(BILLING_FILE)

    again = "y"
    while again.lower() == "y":
        totalHours = 0

        # Input employee details
        employeeName = BillingModule.readEmployeeName()
        rate = BillingModule.readHourlyRate()

        # Input weekly hours and calculate total hours worked
        for week in range(1, 5):
            prompt = f'Enter Hours Worked for Week {week}: '
            totalHours += BillingModule.readWeeklyHours(prompt)
            averageHours = totalHours / WEEKS
        # Calculate regular and overtime hours
        regularHours = min(totalHours, STANDARD_HOURS)
        overtimeHours = max(totalHours - STANDARD_HOURS, 0)

        # Calculate amounts
        if overtimeHours > 0:# If overtime hours exist
            otRate = round(rate * OVERTIME_RATE_MULTIPLIER, 2)
            overtimeAmount = round(overtimeHours * otRate, 2)
            overtimeMessage = f'{overtimeHours} hours of'
            regularAmount = regularHours*rate
            invoiceAmount = regularAmount + overtimeAmount
            overtimeInvoice = (f'Overtime hours: {overtimeHours:.2f} @ ${otRate:.2f}\t= ${overtimeAmount:,.2f}\n')
        else:
            overtimeMessage = 'no'# If no overtime hours
            regularAmount = regularHours * rate
            invoiceAmount = regularAmount
            overtimeInvoice = ''

        # Write billing record to file
        BillingModule.writeBillingRecord(BILLING_FILE, employeeName, rate, *([totalHours / WEEKS] * WEEKS))

        # Output invoice
        print(f'\n{employeeName} worked {overtimeMessage} overtime.')
        print('\nInvoice')
        print(f'Resource: {employeeName}\tAverage weekly hours: {averageHours:.2f}')
        print(f'\nTotal billable hours: {totalHours:.2f}\trate: ${rate:.2f}')
        print(overtimeInvoice, end='')
        print(f'Regular Hours: {regularHours:.2f} @ ${rate:.2f}\t= ${regularAmount:,.2f}')
        print(f'Amount Due: ${invoiceAmount:,.2f}')

        again = input('\nEnter another employee? ("y"=yes): ')
        print("\n", end='')

if __name__ == "__main__":
    main()
