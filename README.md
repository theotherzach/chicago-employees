## Getting Started
- Fork
- Clone
- bundle, migrate, and seed

## Challenges
- Make a get request to /api/departments and add autocomplete to the filter.  http://viralpatel.net/blogs/html5-datalist-example/ 
- Use ng-init to “bootstrap” 10 records so users have something to look at while waiting for ajax to complete.
- Install will_paginate https://github.com/mislav/will_paginate
- Replace limit(1000) in Api::EmployeesController with paginate(:all, per_page: 1000, page: 1)
- Add a page parameter to the /api/employees get request
- Have Api::EmployeesController respond with the proper page #.
