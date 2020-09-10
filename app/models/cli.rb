class Cli 
    def welcome
        puts "Welcome in"
    end

    def get_client_input
        print "What is your name: "
        name = gets.chomp
        get_client(name)
    end

    def print_project(client)
        puts "Hello #{client.name}!"
        puts "job_description: #{client.job_description}"
        puts "budget: #{client.budget}"
    end

    def print_companies(client)
        puts client.companies.map{|company| company.name}.uniq
        #binding.pry
        
    end


    def get_client(name)
        client = Client.find_by(name: name)
        if client
            menu(client)
        else
            puts "Nice to meet you! Enter a company name"
            company = gets.chomp
            puts "Enter your job description"
            job_description = gets.chomp
            puts "Enter your budget"
            budget = gets.chomp
            new_client = Client.create(name: name, job_description: job_description, budget: budget)
            menu(new_client)
        end
    end

    def update_client_budget(client)
        puts "The project is over budget, enter new budget"
        budget = gets.chomp
        client.update(budget: budget)
    end

    def update_company(client)
        # puts "I see you want to change companies."
        # puts "Please select from the following"
        # client.companies
        # company = gets.chomp
        # #found_company = Company.find_by(name: )
        # binding.pry
        # client.update(company: company)
        # #remember that companies is an array,
    end

    def destroy_client(name)
        client = Client.find_by(name: name)
        client.destroy
    end

    def finished_project(client)
        client.projects.each{|project| project.destroy}
        client.destroy
        puts "Goodbye!"
        exit

    end

    def menu(name)
        puts "1. print projects"
        puts "2. print companies"
        puts "3. update budget"
        puts "4. finished_project"
        user_input = gets.chomp
        if user_input == "1"
            #binding.pry
            print_project(name)
            puts "Press any key to return to menu"
            gets.chomp
            menu(name)
        elsif user_input == "2"
            print_companies(name)
            puts "Press any key to return to menu"
            gets.chomp
            menu(name)
        elsif user_input == "3"
            update_client_budget(name)
            puts "Press any key to return to menu"
            gets.chomp
            menu(name)
        elsif user_input == "4"
            finished_project(name)
        end
       
    end

    def run 
        welcome
        get_client_input
    end

end


#binding.pry
