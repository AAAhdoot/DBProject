Here are some cool findings from our data!

SELECT StateInfo.State, GunControlLaws.Background_Checks,StateInfo.CCW_Type, GunControlLaws.Gun_Death_Rate_Rank
FROM GunControlLaws,StateInfo
WHERE Background_Checks = "no" AND StateInfo.State = GunControlLaws.State AND 2016_Presidential_Election = "Republican"

<br>

'Alabama','no','Limited Discretion','4'
'Alaska','no','None','1'
'Arizona','no','None','15'
'Arkansas','no','Limited Discretion','6'
'Florida','no','No Discretion','23'
'Georgia','no','Limited Discretion','20'
'Idaho','no','None','14'
'Indiana','no','Limited Discretion','18'
'Kansas','no','None','26'
'Kentucky','no','No Discretion','17'
'Louisiana','no','No Discretion','2'
'Mississippi','no','No Discretion','3'
'Missouri','no','Limited Discretion','12'
'Montana','no','Limited Discretion','5'
'North Dakota','no','Limited Discretion','24'
'Ohio','no','No Discretion','29'
'Oklahoma','no','No Discretion','8'
'South Carolina','no','No Discretion','11'
'South Dakota','no','Limited Discretion','34'
'Tennessee','no','No Discretion','10'
'Texas','no','No Discretion','31'
'Utah','no','Limited Discretion','19'
'West Virginia','no','None','13'
'Wisconsin','no','No Discretion','35'
'Wyoming','no','None','7'

<br>

Result: The states that do not require background checks to purchase a gun, and who voted Republican in the 2016 Presidential Election, tend to be more dangerous - that is, their ranks for gun death rates are high (in the top half).

<br>

SELECT StateInfo.State, GunControlLaws.Background_Checks,StateInfo.CCW_Type, GunControlLaws.Gun_Death_Rate_Rank
FROM GunControlLaws,StateInfo
WHERE Background_Checks = "yes" AND StateInfo.State = GunControlLaws.State

<br>

'California','yes','May Issue','42'
'Colorado','yes','Limited Discretion','25'
'Connecticut','yes','May Issue','47'
'Delaware','yes','May Issue','32'
'Hawaii','yes','May Issue','50'
'Illinois','yes','Limited Discretion','40'
'Iowa','yes','Limited Discretion','41'
'Maryland','yes','May Issue','36'
'Massachusetts','yes','May Issue','49'
'Michigan','yes','No Discretion','22'
'Nebraska','yes','No Discretion','38'
'New Jersey','yes','May Issue','45'
'New York','yes','May Issue','48'
'North Carolina','yes','No Discretion','21'
'Oregon','yes','Limited Discretion','28'
'Pennsylvania','yes','Limited Discretion','27'
'Rhode Island','yes','May Issue','46'
'Washington','yes','No Discretion','39'

<br>

Result: The states that do require background checks to purchase a gun tend to be 'safer' - that is, their gun death rate ranks are low.

<br>

SELECT StateInfo.State, StateInfo.Percent_No_Abortion_Provider, StateInfo.2016_Presidential_Election
FROM StateInfo
WHERE Percent_No_Abortion_Provider > 60

<br>

'Arkansas','78','Republican'
'Idaho','69','Republican'
'Indiana','61','Republican'
'Kansas','74','Republican'
'Kentucky','74','Republican'
'Louisiana','63','Republican'
'Mississippi','91','Republican'
'Missouri','74','Republican'
'North Dakota','73','Republican'
'South Dakota','77','Republican'
'West Virginia','82','Republican'
'Wyoming','96','Republican'

<br>

Result: The states in which there is increased difficulty of having an abortion voted all Republican in the 2016 Presidential Election.

<br>

Select StateInfo.State, Gun_Ownership, 2016_Presidential_Election
From StateInfo
Where Gun_Ownership > 30
ORDER BY Gun_Ownership DESC
LIMIT 15

<br>

'Alaska','61.7','Republican','Independent'
'Arkansas','57.9','Republican','Republican'
'Illinois','56.9','Democratic','Republican'
'Wisconsin','54.2','Republican','Republican'
'Nebraska','52.3','Republican','Republican'
'New York','49.9','Democratic','Democratic'
'Alabama','48.9','Republican','Republican'
'Ohio','47.9','Republican','Republican'
'Idaho','45.1','Republican','Republican'
'Maine','44.5','Democratic','Republican'
'South Dakota','44.4','Republican','Republican'
'Missouri','42.8','Republican','Republican'
'Louisiana','42.4','Republican','Democratic'
'Texas','39.4','Republican','Republican'
'New Hampshire','37.5','Democratic','Republican'

<br>

Result: The states that have higher rates of gun ownership are overwhelmingly Republican. Of the 15 states that have the highest rates of gun ownership, more than 10 voted Republican in the 2016 Presidential Election, and more than 10 have Republican governors.

(Interestingly, the states with the lowest rates of gun ownership are overwhelmingly Democratic.)

<br>

Select StateInfo.State, Income_Level, 2016_Presidential_Election
From StateInfo
ORDER BY Income_Level ASC
LIMIT 10

<br>

'Maryland','1','Democratic'
'New Jersey','2','Democratic'
'California','3','Democratic'
'Connecticut','4','Democratic'
'District of Columbia','5','Democratic'
'Massachusetts','6','Democratic'
'New Hampshire','7','Democratic'
'Virginia','8','Democratic'
'Hawaii','9','Democratic'
'Minnesota','10','Democratic'

<br>

Result: The 10 states with the highest incomes all voted Democratic in the most recent election. (Conversely, of the 10 states with the lowest incomes, 9 voted Republican in the most recent election.)

<br>

Select StateInfo.State, StateInfo.Income_Level, GunControlLaws.Grade
FROM StateInfo, GunControlLaws
WHERE StateInfo.State = GunControlLaws.State
ORDER BY Income_Level DESC
LIMIT 10

<br>

'Mississippi','51','F'
'West Virginia','50','D-'
'Arkansas','49','F'
'Kentucky','48','F'
'Alabama','47','F'
'Tennessee','46','F'
'Louisiana','45','F'
'New Mexico','44','F'
'South Carolina','43','F'
'Oklahoma','42','F'

<br>

Result: The 10 states with the lowest average income all have failing grades for their gun laws.
