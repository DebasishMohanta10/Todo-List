# TodoList App

TodoList app is used to List all of your Daily Task. Here, I have implemented a button to pop up a Form for adding a task and a cross button to delete the task if completed.

Things I have Used:

* Ruby version: 3.0.2

* Rails version: 6.1.4

* Database: sqlite3 (for development)

* Frontend Framework: MaterializeCSS

This is the routes.rb file which I have Implemented:

```
  root :to => "tasks#index"
  resources :tasks,only: [:index, :create,:destroy]
```

The TaskController which I've implemented is here:

```
  def index
    @tasks = Task.order(:due_date)
    @new_task = Task.new
  end

  def create
    @new_task = Task.new(task_params)

    if @new_task.save
      redirect_to root_url
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_url
  end
```

To see how my TodoList App looks visit [here](https://todolistdebasish.herokuapp.com/).

Thanks for Visit
