## Description
更改鼠标的默认图标

![demo](demo.png)

## CODE
```
import pygame

pygame.init()
resolution = (width, height) = (600, 400)
screen = pygame.display.set_mode(resolution)
clock = pygame.time.Clock()
pygame.mouse.set_visible(False)

miraimg = pygame.image.load("mira.png")
mirarect = miraimg.get_rect()

while True:
    clock.tick(60)
    screen.fill(0)
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            exit(0)
        mousepos = pygame.mouse.get_pos()
        mirarect.centerx = mousepos[0]
        mirarect.centery = mousepos[1]
    screen.blit(miraimg, mirarect)
    pygame.display.flip()

    
```
