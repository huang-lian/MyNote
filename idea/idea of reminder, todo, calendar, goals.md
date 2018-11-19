| items | descriptions |
|:-:|:-:|
| Date| 17：57.19.11.2018.|
| tag |#idea.app |

# An idea of an application
about reminder, Todo list, calendar, goals track. 

## One line
Enter all information in one line.

**Example**:
`do something ! @someplace *sometime. #tag`

<!--more-->

## Symbol mark
Priority `!`.
Tags `#`.
Date and time `*`.
Position `@`.

## Priority
Use different number of `!` to mark the priority . `!` is more, priority is higher.

Recommend
```markdown
` ` none;
`!` low
`!!` medium
`!!!` high
```


## Tags
Recommend using tag format:`#primarytag.2rdtag.3thtag`

It is better to sort and search.

**example**:
```
#work
#work.ds
#work.ics
#work.ics.note
#work.ics.lab
#work.ics.lab.code
#work.ics.lab.report
```

**Suggest tagname**:
```
\#hobby;\#work;\#sport;\#hosehold;\#friend;

\#hobby.[code|read|realx];
\#work.\<course>.[note|homework|lab.[code|report]]
\#sport.[run|push-up|pull-up|squat]
\#hosehold.[clean|parents|wife]
\#friend.[reconnect|meet]
```

<!--should search with any tag.-->

## Date and time
Just use num date.  
format
`*hour:second.[day].[mouth].[year].`

if having no `*<validtime>` or *speciafy time* default set list.  

<!-- below functions is think-myself. -->
elif just a time point,  set reminder, and default value  
is `day=today,mouth=thismouth,year=thisyear`.

elif using more than two timeitem or using `[+N]`(N is minutes), set event.  
and every event can set a deadline, just use tag `#deadline` defualt set
the end time as deadline. Can use option `-alltime` set event time all day.
use option `-repeat [N][minut|hour|day|week|month|year][M]` means N times
after M (days).
```
N `option`
1 day 1 evey day
1 day M after M day
```
## Position
Just @someplace.
