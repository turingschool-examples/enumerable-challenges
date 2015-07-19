#this is not finished yet!
class TeamSorter
  def self.sort(team)
    team.group_by { |department, person| department }
  end

end
