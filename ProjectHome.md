# **Welcome to the Ops Scorecard Project** #

Don't forget to subscribe to our blog: http://opsscorecard.org


---


## What is Ops Scorecard? ##
Ops Scorecard is a tool for auditing, tracking, and analyzing an organization's IT service management capabilities and performance.

Ops Scorecard is about objectively assessing an organization's current service management capabilities, reinforcing ongoing best practices, and measuring improvement over time.

The first goal of Ops Scorecard is to provide the immediate feedback that your engineering and operations teams need to both reinforce IT service management best practices and push them towards continuous improvement. The second goal of Ops Scorecard is to provide your organization's upper management with a clear picture of your IT service management improvement efforts (and help them measure their return on investment).

If you are familiar with concepts like [ITIL](http://en.wikipedia.org/wiki/ITIL) or [Visible Ops](http://www.itpi.org/home/visibleops.php), you should feel right at home with Scorecard. If not, Ops Scorecard should still make sense based on your practical service management experience. In any design decisions, we've tried to error on the side of making things as simple and straightforward as possible.

Please provide us with feedback wherever you can.


---



## What reports does Ops Scorecard provide? ##
The priority of Ops Scorecard is to provide you with a dashboard style report that provides a roll-up assessment of your organization’s service management capabilities and performance.

![http://ops-scorecard.googlecode.com/svn/trunk/web/images/scorecard_report_screen.png](http://ops-scorecard.googlecode.com/svn/trunk/web/images/scorecard_report_screen.png)

From there, you're able to drill into capability and performance details related to the management of a particular service.

Scorecard also has subscription feature which lets you receive emails containing your latest capability and performance information.


---


## What data does Ops Scorecard need to provide useful output? ##
Scorecard needs to know certain basic information about both the services you are managing and the processes that you use to do that management.

Scorecard provides a simple, yet effective, inventory database (or “CMDB”, if you prefer) to keep track of this information.

![http://ops-scorecard.googlecode.com/svn/trunk/web/images/inventory_overview_screen.png](http://ops-scorecard.googlecode.com/svn/trunk/web/images/inventory_overview_screen.png)

Once you’ve defined your services, there are two primary inputs that feed Scorecard the data it needs:

1. _Capability Audits_ - these are carried out periodically and examine the state of you organization’s IT management capabilities. Each individual Capability Audit is focused on capabilities that pertain to a particular service.

2. _Process Receipts_ - these provide the metrics needed to analyze ongoing performance and process improvement. Each receipt is focused on the specific execution of a service management process and are often tied to a ticket from an incident management system (if you use a incident or trouble ticket management system)

At this time, both audit and receipts are provided directly by either your change management personnel (e.g. a release manager) or an auditor from outside of your operations team.  As Scorecard evolves we except much of the data to be imported directly from your existing IT management tools.


---


## How do I get started with Ops Scorecard? ##

Go to the [the Ops Scorecard wiki](http://code.google.com/p/ops-scorecard/wiki/) for installation (download source from SVN), configuration, and user documentation.

Need help? Got feedback? Want to get involved? [Visit the Ops Scorecard discussion group](http://groups.google.com/group/opsscorecard).