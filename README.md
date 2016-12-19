# eduenv
An open source data model for modelling the education environment.

# Domain
## Entities

### Course
Serves as a course definition and is used as the primary container for all resources belonging to the course. A course is defined and administered by an instructor.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different courses within the system. |
| Name | A unique course name. |
| Grade | Enumerator for distinguishing a Grade. |
| Course Objectives | A set of course objectives for completing the course. |
| Minimum Success Score | The minimum accumulated score required  from course objectives in order to pass. |

### Course Enrollment
Serves as a place holder to indicate which course intance a student has enrolled with.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different course enrollments within the system. |
| Course Instance | The course instance that this enrollment belongs to. |
| Student | The student that this enrollment is owned by. |


### Course Instance
Serves as one cycle of a course. Essentially contains all dynamic attributes between instances of a course such as students,  
| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different  objectives within the system. |
| Enrollments | The course enrollments that belong to this course instance. |
| Course | The course that this course instance belongs to. |
| Succeeded | A flag indicating whether the student succeeded within the course. |
| Start date | The date that this course instance started. |
| End date | The date that this course instance ended. |
| Terminated date | The date that this course instance was terminated in. |
| Termination reason | The reason for terminating this course instance. |

### Course Objective
Serves as a definiton of a particular task or activity required to be completed within the course.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different course objectives within the system. |
| Name | An unique objective name within its course |
| Course | The course for which this course objective belongs |
| Description | A brief description on how to |
| Maximum Score | A maximum score that can be achieved by completing this objective |
| Success Required | A flag indicating whether this course objective is required to be succeeded in order to pass |

### Course Objective Instance
An instance of a course objective contains the variable attributes of it course objective such as score and which course enrollment the course belongs to.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different course objective instances within the system.|
| Student | The student to which this course objective instance belongs. |
| Course Enrollment | The course enrollment which this course objective instance belongs to. |
| Course Objective | The course objective which this course objective instance represents. |
| Score | The score achieved by the student for the course objective. |

### Profile
A container for storing personal details about a particular user within the system

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different profiles within the system. |
| Firstname | Firstname of the person. |
| Lastname | Lastname of the person. |
| DOB | Date of birth of the person. |
| Email Address | The primary email address of the person. |
| Address | The primary address of the person. |
| Contact Number | The primary contact number of the person. |

### User
A handle for each person within the educational organisation. Each user will have a set of roles associated with them to represent the various responsibilities within the organisation.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different users within the system. |
| Username | An unique username used with the password for system authentication. |
| Password | A hashed password used in combination with the username for system authentication. |
| Roles | A set of roles used for authorization within the system. |
| Profile | A set of personal details about the user. |




## Role
A role is a special entity used as a form of distinguishment between the particular functions that users have within the system and primarily enables ease of authorization for the various functions. As per the user model, the user may have a set of roles essentially allowing a single user to be captured and re-used for different roles within the system.

### Administrator
A representation of a user’s role as an administrator and their contribution of association within the system. Administrators will be responsible for the creation of new users within the system. 

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different administrators within the system. |
| User | The user to which this administrator role belongs. |

### Instructor
A representation of a user’s employment as a instructor and their contribution of association within the system. Instructors will be responsible for teaching a set of courses, distributing and scoring the set of course objectives for each course.Instructors do not directly influence the success of a student within the course, however instructors use their discretion to determine the score achieved by a student for each objective within the course - this may be guided by a score criteria.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different instructors within the system. |
| User | The user to which this instructor role belongs. | 
| Employment start date | When the Instructor started their employment. | 
| Employment end date | When the Instructor’s employment ended. |
| Taught course instances | All course instances that were taught by this instructor. |
| Administered courses | All courses that were created/administered by this instructor. |

### Parent
A representation of a user’s role as a parent and their contribution of association within the system.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different parents within the system. |
| User | The user to which this parent role belongs. |
| Children | A set of users that are children of this parent. |


### Student
A representation of a user’s role and their contribution of association as a student enrollment of a specific grade within the system. A student will take up a set of courses matched to the student’s grade. Student’s will engage in the set of course objectives for each of their courses and be scored by them to distinguish success of the course.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different students within the system. |
| Grade | Enumerator for distinguishing different grades within the system. |
| User | The user to which this student role belongs. |
| Enrollment Start date | The date when the student was enrolled. |
| Enrollment End date | The date when the student ended their enrollment. |
| Enrollment succeeded | A flag indicating whether the student succeeded the duration of enrollment. |
