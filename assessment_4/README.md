
# Assessment 4

## Cloning Production Codebase Process

**Step 1: [Jira](https://www.atlassian.com/software/jira?&aceid=&adposition=&adgroup=95003645449&campaign=9124878702&creative=475726743524&device=c&keyword=jira&matchtype=e&network=g&placement=&ds_kids=p51242189318&ds_e=GOOGLE&ds_eid=700000001558501&ds_e1=GOOGLE&gclid=CjwKCAjw4KyJBhAbEiwAaAQbE-m9uZKEiWnneW0hAKtBxLIZ3TzkMj-XJgPtZiU3BaV0juAZKUSnChoCgnUQAvD_BwE&gclsrc=aw.ds)**

- I look for the specific story so I can read the requirements and make a development plan.
- Then, I create the task that I will need to do in order to complete the story.

**Step 2: Git**

- After that, I will be cloning the project from the repository from [Bitbucket](https://bitbucket.org/).
- I get the https or SSH url and copy it to my console or git client to make the clone.
- If I use the console, I use the command `git clone https://example.url/user/repository_name` 
- If I use the git client, I use the client functionality to paste the url and clone it.

**Step 3: Setting up the branches**

- Afterwards, I would create a new branch from the **development** branch. Normaly, this branch has the lastest changes in the code.
- The name of the branch will depend on the company's braching naming conventions. For example, I use the the word feature follow by a slash and the number of the task in the history. **`feature/prefix-story_number`**
- I do the same with the tasks. An example will be **`feature/prefix-task_number`**
- This allows me to organize the changes that I am going to make. Also, it let me do more readable commits that are realated to each task. This makes reading the Pull Request less confusing.
- If I do this on console, I use the command `git checkout -b branch_name` as it allow me to create the branch and checkout into it.
- Then, I proceed to do a `git push` of the new branch so it is created on the online repository.
- To add the new changes, I use `git add file_name` or `git add .` depending on the use case I need.
- For the commits, I use the command `git commit -m "`*`descripction of the commit`*`"`
- If I am using the git client, I will use the integrated functionality to do the same thing.

**Step 4: Pull Request**
- Eventually, I would do pull request from the current task branch to the main feature from each of the task branches to get the changes reviewed.
- To do this, I use the integrated functionlity that bitbucket has. I created the pull request and add the reviewers so they are aware of it.

**Step 5: Going to Development**
- Next, when I’m done with the development of the new feature and the coverage of the unit test is acceptable, I would do a pull request from the main feature branch to development.
- After it is deploy in development, I will do some functional testing so I can make sure everything is doing what it is suppose to do.

**Step 6: Going to Release**
- I create another pull request from development to release.
- Now it its time to go to release so the new feature can be testing by a QA to ensure its quality.
- If the QA finish all the testing correctly with no end to end or logical errors, it is time to go a production environment.

**Step 7: Going to production**
- Normaly, this step is made by a software architect.
- He or she do a pull request from release branch to the main branch and it is reviewed by other software architects.
- Once it is approve, the architect merge the branches and usually they made some kind of testing to see if it deploy correctly. 
- Finally, if everything pass correctly, the new feature is deploy sucessfully in the production environment.