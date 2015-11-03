class WikiPolicy <  ApplicationPolicy
  def show
    record.private? || (user.premium? || user.admin?)
  end
end
