# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |candidate|
    if candidate[:id] == id
      puts "Candidate #{id} exist."
      # puts "Candidate has #{candidate[:years_of_experience]} year(s) of experience."
      return candidate
    end
  end
  # @candidates.detect {|candidate| candidate[:id] == id }
end

def experienced?(candidate)
  # candidate[:years_of_experience] >= 2
  @candidates.each do |person|
    if person[:id] == candidate && person[:years_of_experience] >= 2
      return true
      # puts "candidate id: #{candidate}, years: #{person[:years_of_experience]}."
    else
      return false
    end
  end
end

def qualified_candidates(candidates)
    qualified = []
    @candidates.each do |candidate|
      if candidate[:years_of_experience] >= 2 &&
        candidate[:github_points] >= 100 &&
        candidate[:languages].include?("Ruby" || "Python") &&
        candidate[:date_applied] >= 15.days.ago.to_date &&
        candidate[:age] >= 18
        qualified << candidate
      end
    end
    # candidates.select do |candidate|
    #   experienced?(candidate) &&
    #   github_points?(candidate) &&
    #   languages?(candidate) &&
    #   date_applied?(candidate) &&
    #   age?(candidate) 
    # end
    qualified
end

def ordered_by_qualifications(candidates)
  sort = candidates.sort_by do |qualification| 
    qualification[:years_of_experience] && qualification[:github_points]
  end
  sort
end

# More methods will go below

def github_points?(candidate)
  candidate[:github_points] >= 100
end

def languages?(candidate)
  candidate[:languages].include?("Ruby" || "Python")
end

def date_applied?(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date
end

def age?(candidate)
  candidate[:age] >= 18
end










