Ariel Ahdoot (aa1046)
Ashni Mehta (am1531)
CS 336: Final Project

Our topic was Gun Violence, and mapping it against Gun Control Laws and Demographic Data for states.
------
The idea is that if someone wants to move to a different state, see state-based information (like which states don't require background checks to purchase a gun), or see average values for the entirety of the United States, they can come to our site and do any of those things.
-----
Our website will run on Chrome, Safari, and Firefox.
However, to preserve formatting, please ensure that your web browser is full screen.
-----
We used Amazon EC2 and RDS for our website, as suggested in recitation, and MySQL.
-----
We have three tables, one of which contains demographic data and information relating to states (population, access to mental health resources, etc). Another table contains information on murders by gun in all fifty states, and what type of gun caused the murders. Our third table handles gun control laws by state.
-----
Rather than limiting ourselves to simple SQL queries, we worked in aggregate queries as well to examine the whole of the United States in addition to diving in deeper to particular states. To ensure that our data surrounding murders by gun was accurate, we added a field to handle per-capita murders, where the value there represents the number of murders by gun per 100,000 people in the state. 
-----
Note: We sourced our data from the FBI (and there is more information about this case on the website) and as such, the data for Florida's murders is inaccurate. Their reporting standards did not meet the FBI's standards, and they weren't included in the results that the FBI reports. (They have not been included for many years because of this reason). Rather than making up data, which we were morally against, we decided to leave the data for Florida as 0 and make a note of this outlier both in the Readme and on the website itself.
-----
