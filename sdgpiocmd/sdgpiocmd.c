#include <stdbool.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <poll.h>

#include <stdlib.h>

#define SDG_GET_VALUE   1
#define SDG_SET_VALUE   2
#define SDG_TO_IRQ      3

typedef struct sdgdrv_if
{
  int gpiofuncid;
  unsigned gpio;
  int value;
} SDGDRV_IF;

static int
write_cmd(int funcid, int gpio, int value)
{
  SDGDRV_IF gpioifp;
  int fd;
  int ret_value;

  gpioifp.gpiofuncid = funcid;
  gpioifp.gpio = gpio;
  gpioifp.value = value;

  fd = open("/dev/kc_sdgdrv", O_RDWR);
  if (fd < 0) {
    return -1;
  }

  write(fd, &gpioifp, sizeof(gpioifp));

  ret_value = gpioifp.value;

  while (true) {
    struct pollfd ufd;
    ufd.fd = fd;
    ufd.revents = 0;

    poll(&ufd, 1, -1);
    if (ufd.revents & POLLIN) {
      break;
    }
  }

  read(fd, &gpioifp, sizeof(gpioifp));

  close(fd);

  return ret_value;
}

static int
kc_sdvd_ioctl(unsigned int cmd, int gpio, int value)
{
  int fd;
  unsigned long args[4];
  int ret;

  args[0] = gpio;
  args[1] = value;
  args[2] = 0;
  args[3] = (unsigned long)&ret;
  fd = open("/dev/block/kc_sdvd", O_WRONLY);
  ioctl(fd, cmd, &args);
  close(fd);

  return ret;
}

int
main(int argc, char **argv)
{
  int funcid;
  int gpio;
  int value;

  funcid = strtol(argv[1], NULL, 10);
  gpio = strtol(argv[2], NULL, 10);
  value = strtol(argv[3], NULL, 10);

  write_cmd(funcid, gpio, value);

  if (funcid == SDG_TO_IRQ) {
    kc_sdvd_ioctl(0xc0181227, gpio, 0x123);
  } else if (funcid == SDG_GET_VALUE) {
    kc_sdvd_ioctl(0xc0181225, gpio, 0);
  }

  exit(EXIT_SUCCESS);
}
