worker = Task.async(Fib, :of, [20])
result = Task.await(worker)
IO.puts "RESULT #{result}"

//import Supervisor.Spec
//
//children = [
//  worker(Task, [ fn -> do_something_wxtraordinary() end])
//]
//
//supervise children, strategy: :one_for_one


