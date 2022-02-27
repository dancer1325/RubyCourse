# Meta-programming

## method_missing

* How to execute it?
  * In the irb console
    * `load 'task.rb''`
    * `task = Task.new`
    * `task.new`
      * You get the common NoMethodError message
    * `task.new?`
      * You get false, because status variable with new doesn't exist yet
    * `task.new!`
      * You get :new which has been assigned to status variable
    * `task.new?`
      * You get true, because it has been assigned previously
    * `task.in_progress!`
      * You get :in_progress which has been assigned to status variable
    * `task.in_progress?`
      * You get true, because it has been assigned previously
    * `task.new?`
      * You get false, because it has been assigned to in_progress

## send

* Another meta programming way to invoke whatever dynamically
* How to use it?
  * In the irb console
    * `load 'task.rb''`
    * `task = Task.new`
    * `new_status = "new"`
    * `task.send("#{new_status}!")`
      * Indicate dynamically what to send

