# eduenv
An open source data model for modelling the education environment.

# Domain
## Entities

### Course
Serves as a course definition and is used as the primary container for all resources belonging to the course. A course is defined and administered by an instructor.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different courses within the system. |
| Coordinators | The Coordinator(s) of the course. |
| Course Objectives | A set of course objectives for completing the course. |
| Grade | Enumerator for distinguishing a Grade. |
| Minimum Success Score | The minimum accumulated score required  from course objectives in order to pass. |
| Name | A unique course name. |


### Course Instance
Serves as one cycle of a course. Essentially contains all dynamic attributes between instances of a course such as students. 

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different  objectives within the system. |
| Course | The course that this course instance belongs to. |
| End Date | The date on which a course ended. |
| Instructor | The head instructor of this course instance. |
| Start Date | The date on which a course started. |
| Enrolments | The enrolments into this CourseInstance. |

### Course Enrolment
Facilitates the enrolment of a student into a Course's CourseInstance 

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different  objectives within the system. |
| Course Instance | A CourseInstance of the Course that this enrolment represents as is attending. |
| End date | The date when this enrolment ended. |
| Enrollment succeeded | A flag indicating whether the enrolment was succeeded by its Student. |
| Start date | The date when this enrolment commenced. |
| Student | The Student who was enrolled into the CourseInstance |
| Succeeded | An indication of whether the student succeeded the Course. |
| Termination Reason | A reason for having terminated this enrolment prematurely |

### Course Objective
Serves as a definiton of a particular task or activity required to be completed within the course.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different course objectives within the system. |
| Course | The course for which this course objective belongs |
| Description | A brief description on how to |
| Maximum Score | A maximum score that can be achieved by completing this objective |
| Name | An unique objective name within its course |
| Success Required | A flag indicating whether this course objective is required to be succeeded in order to pass |

### Course Objective Instance
An instance of a course objective contains the variable attributes of it course objective such as score and which course enrollment the course belongs to.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different course objective instances within the system.|
| Course Objective | The course objective which this course objective instance represents. |
| Score | The score achieved by the student for the course objective. |
| Student | The student to which this course objective instance belongs. |

### Profile
A container for storing personal details about a particular user within the system

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different profiles within the system. |
| Address | The primary address of the person. |
| Contact Number | The primary contact number of the person. |
| DOB | Date of birth of the person. |
| Email Address | The primary email address of the person. |
| Firstname | Firstname of the person. |
| Lastname | Lastname of the person. |

### User
A handle for each person within the educational organisation. Each user will have a set of roles associated with them to represent the various responsibilities within the organisation.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different users within the system. |
| Password | A hashed password used in combination with the username for system authentication. |
| Profile | A set of personal details about the user. |
| Roles | A set of roles used for authorization within the system. |
| Username | An unique username used with the password for system authentication. |




## Role
A role is a special entity used as a form of distinguishment between the particular functions that users have within the system and primarily enables ease of authorization for the various functions. As per the user model, the user may have a set of roles essentially allowing a single user to be captured and re-used for different roles within the system.

### Administrator
A representation of a user’s role as an administrator and their contribution of association within the system. Administrators will be responsible for the creation of new users within the system. 

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different administrators within the system. |
| User | The user to which this administrator role belongs. |

### Coordinator
A representation of a user’s role as a Coordinator and their contribution of association within the system. Coordinators will be responsible for the creation and management of new Courses within the system. 

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different administrators within the system. |
| Course | The course which this coordinator contributes to. |
| User | The user to which this administrator role belongs. |

### Instructor
A representation of a user as an instructor and their contribution of association within the system. Instructors will be responsible for teaching a course, distributing and scoring the set of course objectives for each course. Instructors do not actively influence the success of a student within the course, however instructors use their discretion to determine the score achieved by a student for each objective within the course - this may be guided by a score criteria.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different instructors within the system. |
| Administered courses | All courses that were created/administered by this instructor. |
| Course Instances | Course instances that is taught by this instructor. |
| User | The user to which this instructor role belongs. | 

### Parent
A representation of a user’s role as a parent and their contribution of association within the system.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different parents within the system. |
| Children | A set of users that are children of this parent. |
| User | The user to which this parent role belongs. |


### Student
A representation of a user’s role and their contribution of association as a student enrollment to a course within the system. Student’s will engage in the set of course objectives for each of their courses and be scored by them to distinguish success of the course.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different students within the system. |
| User | The user to which this student role belongs. |
| Enrolments | All course enrolments for this students |

### Temporary Instructor
A representation of a user’s as a temporary instructor and their contribution of association within the system. Temporary Instructors fill in on behalf of Instructors for particular Course Objectives.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different instructors within the system. |
| Course Objective Instances | Course instances that is taught by this instructor. |
| User | The user to which this instructor role belongs. | 

