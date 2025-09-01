def display_menu():  # Function to display the menu options for the billing system
    print("\nBilling System Menu:")
    print("0 - End")
    print("1 - Enter billing data")
    print("2 - Display ad-hoc billing report")

def execute_option(option):  # Function to execute the chosen option
    if option == 0:
        print("Exiting the program...")
        return False
    elif option == 1:
        print("Executing Program 4: Enter billing data \n")
        import program_4
        program_4.main()
    elif option == 2:
        print("Executing Program 5: Display ad-hoc billing report. \n")
        import adhoc_report
        adhoc_report.main()
    else:
        print("Please enter an available option.")

    return True  # Return True to continue the loop

def menu():  # Function to continuously display the menu and execute chosen options
    while True:
        display_menu()
        try:
            option = int(input("Option ==> "))
            if not execute_option(option):
                break
        except ValueError:
            print("Invalid input. Please enter a valid option.")

menu()
