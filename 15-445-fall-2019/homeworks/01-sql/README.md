# SQL Homework

## Description

https://15445.courses.cs.cmu.edu/fall2019/homework1/

## Questions

### 1. List all distinct types of titles ordered by type.

[My solution](q1_sample.sql)

### 2. List the longest title of each type along with the runtime minutes.

[My solution](q2_uncommon_type.sql)

#### Compared to Solution

The reference solution uses a temporary table to hold the maximum runtime for each title type. 
My approach used a rank window function. Compared to the reference solution my approach is slower as 
the created temporaries are larger. 

However it is much more concise and the runtime is within perhaps 100%.

### 3. List all types of titles along with the number of associated titles.

[My solution](q3_tv_vs_movie.sql)

#### Compared to Solution

Identical to reference solution.

### 4. Which decades saw the most number of titles getting premiered?

[My solution](q4_old_is_not_good.sql)

#### Compared to Solution

The reference solution uses the computed decade in the group by operator, my code does this twice and could be made more concise.

### 5. List the decades and the percentage of titles which premiered in the corresponding decade.

[My solution](q5_percentage.sql)

#### Compared to Solution

I used a percentage value between 0.0 and 1.0, unfortunately on closer reading the question wanted 0 - 100%. 
However functionally identical in all other respects.

### 6. List the top 10 dubbed titles with the number of dubs.

[My solution](q6_dubbed_smash.sql)

#### Compared to Solution

The reference solution performs the limit before the join which makes it more efficient. 
Ideally this is something a query planner could optimise for but the hand rolled solution is definitely faster.

### 7. List the IMDB Top 250 movies along with its weighted rating.

[My solution](q7_imdb_250.sql)

#### Compared to Solution

Very similar to reference solution however the reference solution uses a better join which should make it a 
bit faster.

### 8. List the number of actors / actresses who have appeared in any title with Mark Hamill (born in 1951).

[My solution](q8_number_of_actors.sql)

#### Compared to Solution

Reference solution uses a CTE and a join to compute the list of titles with the actor Mark Hamill. 
I use a subquery on an indexed column. Extremely similar performance, and result.

### 9. List the movies in alphabetical order which cast both Mark Hamill (born in 1951) and George Lucas (born in 1944).

[My solution](q9_movie_names.sql)

#### Compared to Solution

I'd say my solution is a bit neater than the reference solution through its use of the SQL intersect operator.  
Very similar performance, however I missed filtering specifically for movies but because there is only one 
item the final result is the same.

### 10. List all distinct genres and the number of titles associated with them.

[My solution](q10_genre_counts.sql)

#### Compared to Solution

For this one I decided to take a look online for how splitting delimited values is typically solved. I found the 
recursive CTE approach referenced in a SQL cookbook and I copied it from there. Deriving this from first principals 
would have been time consuming.

The solution is functionally identical to the reference solution.