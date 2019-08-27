-- Try it your selve 1. 


select
--*
	us_counties_2000.geo_name as geo_name_2000,
	us_counties_2010.geo_name as geo_name_2010,
	us_counties_2000.county_fips as cf_2000,
				us_counties_2000.state_fips as sf_2000,
	us_counties_2010.county_fips as cf_2010,

	us_counties_2010.state_fips as sf_2010	
from us_counties_2000 
full outer join us_counties_2010 
	on 
		(us_counties_2000.county_fips = us_counties_2010.county_fips)
		AND
		(us_counties_2000.state_fips = us_counties_2010.state_fips)
where (us_counties_2000.geo_name isnull) or (us_counties_2010.geo_name isnull) 
