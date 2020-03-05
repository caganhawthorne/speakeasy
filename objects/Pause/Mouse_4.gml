paused = !paused
// Creates a screenshot to display while the game is paused
if(!sprite_exists(screenShot)){
       screenShot = sprite_create_from_surface(application_surface,0,0,1920,1080,0,0,0,0)
}