// Deletes the extra option
if instance_number(ChooseServe) < 2 {instance_destroy()}
// Deletes self if there is no customer
if instance_number(Customer) = 0 and instance_number(SpecialCustomer) = 0 {instance_destroy()}
// Deletes other instances of itself if it decides to multiply and be a bad boy
if instance_number(ChooseServe) > 2 {instance_destroy()}