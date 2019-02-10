This bug appeared after first implementing metals, where metals with a high
roughness value were seemingly not shading correctly in shadow. Another
manifestation was found when glass materials did not correctly internally
refract/reflect.

This bug was solved by adding tests to check for internal intersection
capability, and then passing those tests by searching for the smallest
non-negative t when testing intersections. Before this change, the t found for
intersections was always the result of `(-b - sqrt(discriminant)) / (2 * a)`.

A render from before this change (showing both metal and glass defects) is
available in `bugfixes/before_fix_smallest_t_intersect.png`.

A corresponding render from after the fix is available in
`bugfixes/after_fix_smallest_t_intersect.png`.


This bug was solved in commit `5852de1cd978ad18a8a0ab1141168ee3f1d0f935`, in
the rayterm Github repository.
