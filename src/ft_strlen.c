#include "libft.h"  // Include the header file

size_t ft_strlen(const char *s) {
    size_t i = 0;         // Start counter at 0
    while (s[i])          // Loop through each character until we hit '\0'
        i++;
    return i;             // Return the count
}
