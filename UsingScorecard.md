# Introduction #

Scorecard's goal is to help you improve your service management capabilities.  The concept "service" anchors the whole system.

A service is a resource that provides some utility to an organization or another resource. Many things can be viewed as a service in this light but the most typical examples for Scorecard are business applications.

For Scorecard, one's service management capabilities are based in the management processes that support the service. There are several categories of management processes each supporting some aspect of the ongoing operation of the service. The better you implement these processes the better your capabilities become.

After you define your service and current management processes, Scorecard will generate a set of scores that you can use to track and drive improvement.


# Where to begin #

## The main menu ##

The first screen you'll encounter is likely the main menu.

![http://ops-scorecard.googlecode.com/svn/trunk/web/images/main_menu_screen.png](http://ops-scorecard.googlecode.com/svn/trunk/web/images/main_menu_screen.png)

Things to know about this screen:

1. This takes you to the Ops Scorecard reports (I know that you are excited to see results but you'll need to input some info before you can generate reports)

2. This takes you to the area of the application where you can audit you IT service management capabilities. This info feeds into your Ops Scorecard reports.

3. This takes you to the inventory tool (which is basically a simple, yet effective "CMDB"). This is where you keep basic information on services, management processes, physical assets, and software artifacts. Ops Scorecard only requires minimal information about these items but, beyond that, you are free to keep as much detail as you wish in the inventory tool.

4. This takes you to where you manage people and groups.

5. This takes you to the area of the application where you can create and review process receipts. Process receipts track when a service management process has been executed. Process receipts aren't necessary to generate your first scorecard report (only capability audits are required), however they provide a level of objective performance detail that is essential to tracking improvement over time.

6. Which user you are logged in as is displayed in the upper right corner.

7. The Ops Scorecard logo is a link that always takes you back to this main menu.

## Register yourself as a user ##

Go to the Scorecard main menu. If you aren't logged in you will be taken to the login screen by selecting one of the items on the main menu page. Click on the "register here" link and create a user. Don't worry if there are no groups defined. You can add groups later. The rest of the inputs should be self-explanatory.

After you have created an account, log in.

## Define your service ##

Services are maintained in the Scorecard "Inventory" accessible from the Scorecard homepage. The Inventory lets you maintain information about your services, assets, release artifacts and management processes.
Inside the Inventory page click on the "Services" box.

![http://ops-scorecard.googlecode.com/svn/trunk/web/images/select_service_screen.png](http://ops-scorecard.googlecode.com/svn/trunk/web/images/select_service_screen.png)

Since you don't have any services defined, you will see a prompt to define a service. Click on the "Add Service" link on the right to add your first service.

Note: Each service must have a service type. Types help you distinguish different kinds of services (eg, estore versus fulfillment). They come in handy when you need to categorize a service or if you need to refer to multiple instances of a service (e.g. "prod" and "qa").

If you haven't yet defined any service types you will automatically be taken to a form to define your first service type.

![http://ops-scorecard.googlecode.com/svn/trunk/web/images/create_service_type_screen.png](http://ops-scorecard.googlecode.com/svn/trunk/web/images/create_service_type_screen.png)

Once you've created a service type you can now go ahead and create a service. To get back to the service creation form use the menu links in the context bar just below the Ops Scorecard logo.

![http://ops-scorecard.googlecode.com/svn/trunk/web/images/select_services_menu_screen.png](http://ops-scorecard.googlecode.com/svn/trunk/web/images/select_services_menu_screen.png)

Select the "Add Service" link on the right. Fill out the form to define a service. It's good to not that you don't need to fill out the complete form as you can go back later to answer some of those questions.


![http://ops-scorecard.googlecode.com/svn/trunk/web/images/create_service_screen.png](http://ops-scorecard.googlecode.com/svn/trunk/web/images/create_service_screen.png)



## Define your service management processes ##

After saving your service definition, you will see links to create service management processes. From the "show" page of the service you will see a button to create a process. Click that to add your first process.

![http://ops-scorecard.googlecode.com/svn/trunk/web/images/link_add_process_screen.png](http://ops-scorecard.googlecode.com/svn/trunk/web/images/link_add_process_screen.png)

There are several categories of management processes (acceptance, build, deployment, detective, escalation, implementation, monitoring, release, verification), each of which supports the service at some point.
You may not have all of these processes formalized so don't worry about defining them now. Any business applications will always have some form of "build" and "deployment" process (somehow it was built and deployed, right?), so go ahead and define those the best you can.

![http://ops-scorecard.googlecode.com/svn/trunk/web/images/define_process_screen.png](http://ops-scorecard.googlecode.com/svn/trunk/web/images/define_process_screen.png)



## Audit your capability ##

With your service and management processes preliminarily described, you have enough to audit your capability. Go to the main menu and choose "Audit" and then press the "Create audit" button. The audit is a survey form that asks you a series of questions about how you manage change and process for your service.
Answer the questions to the best of your knowledge.

![http://ops-scorecard.googlecode.com/svn/trunk/web/images/create_audit_screen.png](http://ops-scorecard.googlecode.com/svn/trunk/web/images/create_audit_screen.png)


## Create a scorecard ##

With your service, processes and audit information, Scorecard has enough to generate a scorecard. Go to the home page and choose "Scores"  then press the "Score" button. Scorecard will generate a scorecard for you that gives you an overall measurement and set of metrics.

Since you minimally described your processes, you won't have a high score but you now have a point of departure. From here, you should go back and describe the rest of your processes and re-run the scorecard. Audits can be done periodically (eg, monthly or quarterly) to help track your improvement.

## Other information ##

You will notice that other information can be described as you go about defining your processes and service. Processes are supported by people so you will want to define individuals and teams.
The Inventory area of Scorecard is a basic CMDB  where you can define physical assets and release artifacts.
Process receipts track when a service management process has been executed.

# Stay informed #

Scorecard has a simple subscription feature which lets you receive emails containing your service scorecard. Click your login name in the top right of the Scorecard page, and press the "Edit" link in the Subscriptions box. Choose the service you want emails about and press "Add".