class Task
    STATUSES = [:new, :in_progress, :cancelled, :resolved, :feedback]

    # method_missing Method launched when NoMethodError happens
    def method_missing(name, *args, &block)         # &block As always, it's optional to indicate
        status = name.to_s.delete('!?')             # Remove characters contained into the string
        # Regular expression type between // and it's returned
        # \w word character
        # +  matches >= 1 times
        # () Group another construct or subexpression afterwards
        # \? \! Because they are special characters
        return super unless /\w+(\?|\!)/.match?(name.to_s) && STATUSES.include?(status.to_sym)  # super would be the NoMethodError's method_missing

        if name.to_s.end_with?('?')             # end_with? Check if a string ends with a determined string
            @status == status.to_sym            # Check if they match
        else
            @status = status.to_sym             # Assign a new status to the class's status
        end
    end
end