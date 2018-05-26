class RPS
  def wins?(object, otherObject)
    if object == "rock"
      if otherObject == "scissors"
        return true
      end
    elsif object == "paper"
      if otherObject == "rock"
        return true
      end
    else
      if otherObject == "paper"
        return true
      end
    end
  end
end
