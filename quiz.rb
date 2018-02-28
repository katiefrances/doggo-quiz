content = [
    { 
        kind: "one", 
        question: "What dog breed is this?", 
        choices: "Alaskan Malamute",
        score: 0 
    },

    { 
        kind: "two", 
        question: "Which of these dogs are used by hunters to track prey?", 
        choices: ["Dachshund", "Pomeranian", "Beagle", "Bulldog"],
        score: 0 
    },

    { 
        kind: "three", 
        question: "What's your name?",
        choices: ["Yorkshire Terrier", "Shih Tzu", "Shiba Inu", "Papillon"],
        score: 0
    },
]

def welcome 
    puts "Welcome to Doggo Quiz!"

    puts "Please type doggo to begin."
    user_start = gets.chomp
    start_word = "doggo"

    if user_start == start_word
        puts "BEGIN!"
    else
        puts "Try again, buddy!"
    end
end

def ask
    random_ques_index = 0
    random_ques_index = rand(0..(content.length - 1))
    
        puts content[random_ques_index][:question]
        if content[random_ques_index][:kind] == "single response"
            random_ques_index
        elsif content[random_ques_index][:kind] == "one or two response"
            puts "Select either one or more options:"
            puts "\t" + content[random_ques_index][:choices].join(", ")
            random_ques_index
        else
            puts content[random_ques_index][:kind] == "one or two response"
            puts "Select either one or more options:"
            puts "\t" + content[random_ques_index][:choices].join(", ")
            random_ques_index
        end
end

