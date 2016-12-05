<b>Here are some cool findings from our data!</b>

<br>
<br>

SELECT StateInfo.State, GunControlLaws.Background_Checks,StateInfo.CCW_Type, GunControlLaws.Gun_Death_Rate_Rank <br>
FROM GunControlLaws,StateInfo <br>
WHERE Background_Checks = "no" AND StateInfo.State = GunControlLaws.State AND 2016_Presidential_Election = "Republican" <br>

<br>

'Alabama','no','Limited Discretion','4' <br>
'Alaska','no','None','1' <br>
'Arizona','no','None','15'<br>
'Arkansas','no','Limited Discretion','6'<br>
'Florida','no','No Discretion','23'<br>
'Georgia','no','Limited Discretion','20'<br>
'Idaho','no','None','14'<br>
'Indiana','no','Limited Discretion','18'<br>
'Kansas','no','None','26'<br>
'Kentucky','no','No Discretion','17'<br>
'Louisiana','no','No Discretion','2'<br>
'Mississippi','no','No Discretion','3'<br>
'Missouri','no','Limited Discretion','12'<br>
'Montana','no','Limited Discretion','5'<br>
'North Dakota','no','Limited Discretion','24'<br>
'Ohio','no','No Discretion','29'<br>
'Oklahoma','no','No Discretion','8'<br>
'South Carolina','no','No Discretion','11'<br>
'South Dakota','no','Limited Discretion','34'<br>
'Tennessee','no','No Discretion','10'<br>
'Texas','no','No Discretion','31'<br>
'Utah','no','Limited Discretion','19'<br>
'West Virginia','no','None','13'<br>
'Wisconsin','no','No Discretion','35'<br>
'Wyoming','no','None','7'<br>

<br>

<b>Result: The states that do not require background checks to purchase a gun, and who voted Republican in the 2016 Presidential Election, <u>tend to be more dangerous</u> - that is, their ranks for gun death rates are high (in the top half).
</b>
<br>
<br>

SELECT StateInfo.State, GunControlLaws.Background_Checks,StateInfo.CCW_Type, GunControlLaws.Gun_Death_Rate_Rank<br>
FROM GunControlLaws,StateInfo<br>
WHERE Background_Checks = "yes" AND StateInfo.State = GunControlLaws.State<br>

<br>

'California','yes','May Issue','42' <br>
'Colorado','yes','Limited Discretion','25' <br>
'Connecticut','yes','May Issue','47'<br>
'Delaware','yes','May Issue','32'<br>
'Hawaii','yes','May Issue','50'<br>
'Illinois','yes','Limited Discretion','40'<br>
'Iowa','yes','Limited Discretion','41'<br>
'Maryland','yes','May Issue','36'<br>
'Massachusetts','yes','May Issue','49'<br>
'Michigan','yes','No Discretion','22'<br>
'Nebraska','yes','No Discretion','38'<br>
'New Jersey','yes','May Issue','45'<br>
'New York','yes','May Issue','48'<br>
'North Carolina','yes','No Discretion','21'<br>
'Oregon','yes','Limited Discretion','28'<br>
'Pennsylvania','yes','Limited Discretion','27'<br>
'Rhode Island','yes','May Issue','46'<br>
'Washington','yes','No Discretion','39'<br>

<br>

<b>Result: The states that do require background checks to purchase a gun <u>tend to be 'safer'</u> - that is, their gun death rate ranks are low.<br>
</b>
<br>

SELECT StateInfo.State, StateInfo.Percent_No_Abortion_Provider, StateInfo.2016_Presidential_Election<br>
FROM StateInfo<br>
WHERE Percent_No_Abortion_Provider > 60<br>

<br>

'Arkansas','78','Republican'<br>
'Idaho','69','Republican'<br>
'Indiana','61','Republican'<br>
'Kansas','74','Republican'<br>
'Kentucky','74','Republican'<br>
'Louisiana','63','Republican'<br>
'Mississippi','91','Republican'<br>
'Missouri','74','Republican'<br>
'North Dakota','73','Republican'<br>
'South Dakota','77','Republican'<br>
'West Virginia','82','Republican'<br>
'Wyoming','96','Republican'<br>

<br>

<b>Result: The states in which there is increased difficulty of having an abortion voted all Republican in the 2016 Presidential Election.<br>
</b>
<br>

Select StateInfo.State, Gun_Ownership, 2016_Presidential_Election<br>
From StateInfo <br>
Where Gun_Ownership > 30<br>
ORDER BY Gun_Ownership DESC<br>
LIMIT 15<br>

<br>

'Alaska','61.7','Republican','Independent'<br>
'Arkansas','57.9','Republican','Republican'<br>
'Illinois','56.9','Democratic','Republican'<br>
'Wisconsin','54.2','Republican','Republican'<br>
'Nebraska','52.3','Republican','Republican'<br>
'New York','49.9','Democratic','Democratic'<br>
'Alabama','48.9','Republican','Republican'<br>
'Ohio','47.9','Republican','Republican'<br>
'Idaho','45.1','Republican','Republican'<br>
'Maine','44.5','Democratic','Republican'<br>
'South Dakota','44.4','Republican','Republican'<br>
'Missouri','42.8','Republican','Republican'<br>
'Louisiana','42.4','Republican','Democratic'<br>
'Texas','39.4','Republican','Republican'<br>
'New Hampshire','37.5','Democratic','Republican'<br>

<br>

<b>Result: The states that have <u>higher rates of gun ownership</u> are <u>overwhelmingly Republican</u>. Of the 15 states that have the highest rates of gun ownership, more than 10 voted Republican in the 2016 Presidential Election, and more than 10 have Republican governors. <br>
</b>
(Interestingly, the states with the lowest rates of gun ownership are overwhelmingly Democratic.) <br>

<br>

Select StateInfo.State, Income_Level, 2016_Presidential_Election <br>
From StateInfo <br>
ORDER BY Income_Level ASC <br>
LIMIT 10 <br>

<br>

'Maryland','1','Democratic' <br>
'New Jersey','2','Democratic' <br>
'California','3','Democratic'<br>
'Connecticut','4','Democratic'<br>
'District of Columbia','5','Democratic'<br>
'Massachusetts','6','Democratic'<br>
'New Hampshire','7','Democratic'<br>
'Virginia','8','Democratic'<br>
'Hawaii','9','Democratic'<br>
'Minnesota','10','Democratic'<br>

<br>
<b>
Result: The 10 states with the <u>highest incomes</u> all voted <u>Democratic</u> in the most recent election. (Conversely, of the 10 states with the lowest incomes, 9 voted Republican in the most recent election.)<br>
</b>
<br>

Select StateInfo.State, StateInfo.Income_Level, GunControlLaws.Grade<br>
FROM StateInfo, GunControlLaws<br>
WHERE StateInfo.State = GunControlLaws.State<br>
ORDER BY Income_Level DESC<br>
LIMIT 10<br>

<br>

'Mississippi','51','F'<br>
'West Virginia','50','D-'<br>
'Arkansas','49','F'<br>
'Kentucky','48','F'<br>
'Alabama','47','F'<br>
'Tennessee','46','F'<br>
'Louisiana','45','F'<br>
'New Mexico','44','F'<br>
'South Carolina','43','F'<br>
'Oklahoma','42','F'<br>

<br>

<b> Result: The 10 states with the lowest average income all have failing grades for their gun laws.<br>
</b>