CS336 final project.

TODO
1. design front-end
2. actually implement rest of queries
3. host it
4. add more data (region, state senate, 2014 data, more info re: gun laws, type of death)

QUERIES TO ADD:
1. difference in per-capita stats (violence by dem & repub states)
2. region-based average // show average X by region (single drop-down)
3. division-based average // show average X by division (single drop-down)
4. move concealed carry type to GunControlLaws
5. deal with florida and alabama
6. for averages, add third drop-down that checks 'all states', 'republican', or 'democratic'
7. clean up the text on the front-end.
8. put all states avg under region
9. change the ordering of some queries
10. mental health < 25 check avg (gun murders)
11. don't let background check stick out - add concealed carry
12. drop downs for: mental health, unemployment rate, poverty level, percent gun owners, percent no abortion provider
13. show average X by selected grade
14. show average X by gun law rank
15. likelihood of gun murder in X 








under #1
----------
- (DONE) clean up how we view state info
- (DONE) clean up how we view murders
- (DONE) add option for gun control laws & display
- (DONE) add rest of columns for results in query by grade
- (DONE) states that don't require background checks ( on this now - ASHNI)
- (DONE) states that do require background checks (on this now - ASHNI)
- look into charts & things
- (DONE) remove unnecessary grade options from grade drop-down - ASHNI
- look into queries that involve joins

different types of queries:
----------------------------
- state by state comparison
- (DONE) three element queries: X by Y by Z for all states, where X is values from StateInfo, Y is values from Murders, and Z is values from GunControlLaws
- (DONE) most dangerous states limit, asc, desc, etc. 
- (DONE) aggregate
- sum of deaths per region
- average rate of X by region
- show abortion, mental health access data based on state governor political party

note to us: remember quotes with F but not with numbers
