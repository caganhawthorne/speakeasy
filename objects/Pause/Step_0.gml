// The pausing and unpausing
if(paused){
    instance_deactivate_all(1)
}
// Deletes the screenshot when we don't need it anymore
else{
   if(sprite_exists(screenShot)){
       sprite_delete(screenShot)
   }
   instance_activate_all()
}