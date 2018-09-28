#include <stdio.h>

/* Forward declaration */
void usage(const char *);

int main(int argc, char **argv)
{
    if( argc != 2 )
    {
        usage(argv[0]);
        return 1;
    }

    printf("Hello, %s!\n", argv[1]);

    return 0;
}

void usage(const char *progname)
{
    printf("Usage: %s <some name>\n", progname);
}
