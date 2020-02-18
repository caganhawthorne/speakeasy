// Deletes the extra option
if instance_number(ChooseServe) < 2 {instance_destroy()}
// Deletes self if there is no customer
if instance_number(Customer) = 0 {instance_destroy()}