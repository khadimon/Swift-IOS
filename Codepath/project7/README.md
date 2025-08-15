# Project 7 - *Task Tracker*

Submitted by: **Khadichabonu Valieva**

**Task Tracker** is an app that to create a to-do list, edit, delete and display in a list and calendar views.

Time spent: **4** hours spent in total

## Required Features

The following **required** functionality is completed:

- [X] App displays a list of tasks
- [X] Users can add tasks to the list
- [X] Session persists when application is closed and relaunched (tasks dont get deleted when closing app) 
  - [X] Note: You have to quit the app, not minimize it, in order to see the persistence.
- [X] Tasks can be deleted
- [X] Users have a calendar view via navigation controller that displays tasks	


The following **additional** features are implemented:

- [X] Tasks can be toggled completed
- [X] User can edit tasks by tapping on the task in the feed view
- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough

<div>
    <a href="https://www.loom.com/share/655f761026fb4b849c6dafd0d9e7f658">
    </a>
    <a href="https://www.loom.com/share/655f761026fb4b849c6dafd0d9e7f658">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/655f761026fb4b849c6dafd0d9e7f658-with-play.gif">
    </a>
  </div>

## Notes

In my code, whenever i used id to compare if the new task existed or not, it wouldn't work and result in duplicates. For that reason, i used title instead of id to compare the tasks.
Now in my app, if the task has the same title, but different descriptions, it would update the existing task with a new description. 

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
