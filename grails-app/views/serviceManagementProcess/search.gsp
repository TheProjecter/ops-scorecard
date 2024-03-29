

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <meta name="guideitem" content="process"/>
        <title>Inventory: ServiceManagementProcess List</title>
    </head>
    <body>

        <div class="body">
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:if test="${serviceManagementProcessList}">
            <div class="dialog">
                <table>
                    <thead>
                        <tr>
                        
                   	        <th>&nbsp;</th>
                        
                   	        <g:sortableColumn property="name" title="Name" />
                        
                   	        <g:sortableColumn property="description" title="Description" />
                        
                   	        <g:sortableColumn property="category" title="Category" />
                        
                   	        <th>Target Service</th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${serviceManagementProcessList}" status="i" var="serviceManagementProcess">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}"
                                onmouseover="$('controls.${serviceManagementProcess.id}').show();"
                                onmouseout="$('controls.${serviceManagementProcess.id}').hide();">
                            <td width="16px">
                               <div id="controls.${serviceManagementProcess.id}" style="display:none">
                                <g:link action="edit" params="[id:serviceManagementProcess.id]">
                                    <img src="${createLinkTo(dir:'images/skin',file:'pencil.png')}" alt="edit" />
                                </g:link>
                               </div>
                            </td>


                            <td>
                                <g:link action="show" id="${serviceManagementProcess.id}">
                                    ${fieldValue(bean:serviceManagementProcess, field:'name')}
                                </g:link>
                            </td>
                        
                            <td>${fieldValue(bean:serviceManagementProcess, field:'description')}</td>
                        
                            <td>${fieldValue(bean:serviceManagementProcess, field:'category')}</td>
                        

                            <td>
                                <g:if test="${serviceManagementProcess?.service}">
                                    ${serviceManagementProcess?.service?.name}
                                </g:if>
                            </td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${ServiceManagementProcess.count()}" />
            </div>
            </g:if>
            <g:else>
                <h3>There are no processes matching the search criteria.</h3>
                <div class="info">Press the &quot;All&quot; link to the right to list existing processes.</div>
            </g:else>
        </div>
    </body>
</html>
