# Eduenv - Alpha
An open source data model for modelling the education environment.

# Domain
## Entities

### Admission
A representation of a student's terms of admission to a campus

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different courses within the system. |
| Student | The student that was granted this admission |
| Campus | The campus to which this student was granted admission |

### Campus
A representation of an Institution's Campus

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different campi within the system. |
| Admissions | All admissions granted by this institution. |
| Name | A unique course name. |
| Institution | The institution to which this campus belongs. |
| Course instances | All course instances hosted by this campus |

### Course
Serves as a course definition and is used as the primary container for all resources belonging to the course. A course is defined and administered by an instructor.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different courses within the system. |
| Coordinators | The Coordinator(s) of the course. |
| Criteria Sets | A set of Course Criteria Set used for evaluation of this course's course objectives
| Objectives | A set of course objectives for completing the course. |
| Instnaces | A set of course instances instantiated from this Course | 
| Level | The educational level that this course is intended for. \[Grade 1-12, Undergraduate, Postgraduate\] |
| Name | A unique course name. |

### Course Criteria Set
A container for the set of criterion used to evaluate a course's objectives.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different  objectives within the system. |
| Criteria | The set of course objective criterion that constitutes this course criteria set|
| Course | The course to which this criteria set belongs. | 

### Course Enrolment
Facilitates the enrolment of a student into a Course's CourseInstance 

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different  objectives within the system. |
| Course Instance | A CourseInstance of the Course that this enrolment represents as is attending. |
| End date | The date when this enrolment ended. |
| Start date | The date when this enrolment commenced. |
| Student | The Student who was enrolled into the CourseInstance |
| Succeeded | An indication of whether the student succeeded the Course. |
| Termination Reason | A reason for having terminated this enrolment prematurely |

### Course Instance
Serves as one cycle of a course. Essentially contains all dynamic attributes between instances of a course such as students. 

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different  objectives within the system. |
| Campus | The primary campus that hosts this course instance. |
| Course | The course that this course instance belongs to. |
| End Date | The date on which a course ended. |
| Instructor | The head instructor of this course instance. |
| Start Date | The date on which a course started. |
| Enrolments | The enrolments into this CourseInstance. |

### Course Objective
Serves as a definiton of a particular task or activity required to be completed within the course.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different course objectives within the system. |
| Course | The course for which this course objective belongs |
| Description | A brief description on how to |
| Name | An unique objective name within its course |

### Course Objective Criterion
Serves as a definition for moderating.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different course objective criterion|
| Description | A description of the criterion. |
| Objective | The course objective that this criterion is used with for evaluation |
| Criteria Set | The course criteria set to which this Criterion belongs. |

### Course Objective Evaluation
An evaluation of a single course objective criterion.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different course objective evalution|
| Criterion | The course objective criterion to which this evaluation belongs. |
| Value | The value given for this evaluation |
| Enrolment | The evaluatee of this course objective evaluation |

### Institution
A representation of an educational institution

| Attribute | Description |
| --- | --- | 
| ID | An unique identifier for distinguishing between different students within the system. |
| Name | The name of this institution. |
| Campi | the set of campus owned by this institution |

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
| Gender | Gender of the person. |
| Lastname | Lastname of the person. |
| Title | Title of the person |

### User
A handle for each person within the educational organisation. Each user will have a set of roles associated with them to represent the various responsibilities within the organisation.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different users within the system. |
| Profile | A set of personal details about the user. |
| Roles | A set of roles used for authorization within the system. |

## Role
A role is a special entity used as a form of distinguishment between the particular functions that users have within the system and primarily enables ease of authorization for the various functions. As per the user model, the user may have a set of roles essentially allowing a single user to be captured and re-used for different roles within the system.

### Administrator
A representation of a user’s role as an administrator and their contribution of association within the system. Administrators will be responsible for the creation of new users within the system. 

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different administrators within the system. |
| User | The user to which this administrator role belongs. |
| End Date | The day on which this Administrator was uninstituted |
| End Date | The day on which this Administrator was uninstituted |

### Coordinator
A representation of a user’s role as a Coordinator and their contribution of association within the system. Coordinators will be responsible for the creation and management of new Courses within the system. 

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different administrators within the system. |
| Course | The course which this coordinator contributes to. |
| End Date | The day on which this Coordinator was uninstituted.|
| User | The user to which this administrator role belongs. |
| Start Date | The day on which this Coordinator was instituted. |

### Instructor
A representation of a user as an instructor and their contribution of association within the system. Instructors will be responsible for teaching a course, distributing and scoring the set of course objectives for each course. Instructors do not actively influence the success of a student within the course, however instructors use their discretion to determine the score achieved by a student for each objective within the course - this may be guided by a score criteria.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different instructors within the system. |
| Course Instance | Course instance that was instructed by this instructor. |
| End Date | The day on which this Instructor was uninstituted. |
| Start Date | The day on which this Instructor was instituted. |
| User | The user to which this instructor role belongs. | 

### Parent
A representation of a user’s role as a parent and their contribution of association within the system.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different parents within the system. |
| Child | The User that is a child under responsibility under this Parent |
| End Date | The day on which this Parent was instituted. |
| Start Date | The day on which this Parent was instituted. |
| User | The user to which this parent role belongs. |

### Student
A representation of a user’s role and their contribution of association as a student enrollment to a course within the system. Student’s will engage in the set of course objectives for each of their courses and be scored by them to distinguish success of the course.

| Attribute | Description |
| --- | --- | 
| ID | An unique identifier for distinguishing between different students within the system. |
| End Date | The date this student ended - usually the last day of admission. |
| Enrolments | All course enrolments for this students. |
| Institution | The institution this students was admitted to |
| Start Date| The date this student started - usually the admission date. |
| User | The user to which this student role belongs. |

### Temporary Instructor
A representation of a user’s as a temporary instructor and their contribution of association within the system. Temporary Instructors fill in on behalf of Instructors for particular Course Objectives.

| Attribute | Description |
| --- | --- |
| ID | An unique identifier for distinguishing between different instructors within the system. |
| Course Objective Instances | Course instances that are taught by this tempory instructor. |
| End Date | The day on which this temporary instructor was uninstituted. |
| Start Date | The day on which this temporary instructor was instituted. |
| User | The user to which this instructor role belongs. | 

