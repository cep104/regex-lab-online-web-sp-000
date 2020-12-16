# https://regexr.com/
#isn't in ruby so need to run it through rubular to double check

require 'pry'
#WHEN USING RUBLUR
#make sure you hit enter at every line because otherwise the rubular website reads it as a single string.


def starts_with_a_vowel?(word)
# binding.pry
#match returns either a letter or nil so match is a good way to go for a true or false. 
#go into rubular put the test array into it to practice
 #we need to add the // everything goes in between those 
 #\b is for before (/\b/)
 #we know we are looking for vowels so we put [aeiou] (/\b[aeiou]/)
 #we also need to include capitals so we can do [aeiouAEIOU] OR look at bottom of the screen on rubular. there is a case insensitive. you put it after the last slash so it looks like (/\b[aeiou]/i)
 #then run test. expected true but got match data object. 
 #so set a terinary opperator for if it exists it comes up true otherwise false(nil will be false)

word.match(/^[aeiouAEIOU]\w+/) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
    #we want to return an array so we will want to use scan 
    #take the string and bring it into rubular 
    #first part word starting with un (/un/)
    #we want to match the next letter \w (/un\w/)
    #but we want to match the whole word so in the third colomn on rubular we see the + sign adds the rest of the word (/un\w+/)
    #to make sure we also match the ing we just add it at the end (/un\w+ing/)
    #so we are matching any word that beings with un then matching any word character one or more of them then ending in ing
    #we are using scan so we will get back an array of words. 
    #if you want it to be case insensitive too just add the i at the end
    text.scan(/un\w+ing/) 
end
    


def words_five_letters_long(text)
    #[a-z] we want to match any letter 
    # {5} matches 5 letters 
    # have to add the bounding on the front and back so it's matching exactly 5 
    text.scan(/\b\w{5}\b/)
    # //need the bounding box \b \b 
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    # binding.pry
    #use match because it returns either the letter or nil
    #start with any capitcal letter  [A-Z] so (/^[A-Z]/)
    #any charecter in between . so (/^[A-Z]./)
    #start a line with capital letter then any characters in between one or more of them (/^[A-Z].+/)
    #want the end to match punctuation \.$ (/^[A-Z].+\.$/)
    text.match(/^[A-Z].+[\.!?]$/) ? true : false

    # ^[A-Z] starts with capital letter
    # . matches all charecters in between( the whole string makes sure it
    # . is any character except newline 
    # starts with capital and ends in punctuation)
    # [\.!?]$ ends in punctuation


end

def valid_phone_number?(phone)
    # binding.pry 
    # phone.match(/^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/)
    #  we want it to return true or false so use match because match returns a number or nil
    #  start of the line ^ (/^/)
    # ^\d{3} grab the first three digits 
    # we are looking for a single whilespace character 0 or 1 [\s]? 
    # three more digits again \d{3}
    # we are looking for a single whilespace character 0 or 1  and add dash [\s-]? 
    # four digits this time \d{4}
    #ending the line $ 
    #match this character zero or any put that at begining 
    #put it at end of three digits
    phone.match(/^[(]?\d{3}[)]?[\s]?\d{3}[\s-]?\d{4}$/) ? true:false
    # phone.match(/([0-9] *){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/) ? true : false

    # //checks to see if it is numbers 0-9 and has 10 numbers
    # checks that first three are in parenthisese 
    # 3 numbers with a dash then 4 numbers 
    # checks to see if a number and is 7 didgets
   
end
