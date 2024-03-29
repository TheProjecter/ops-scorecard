<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <meta name="guideitem" content="audit"/>
    <title>Audit: CapabilityAudit List</title>
</head>
<body>

<g:if test="${capabilityAuditList}">
    <div class="body">
        <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
        </g:if>
        <div class="buttons">
        <g:form>
            <span class="button"><g:actionSubmit class="create" value="Create"/></span>
        </g:form>
        </div>
        <div class="dialog">
            <table>
                <thead>
                    <tr>

                        <th>&nbsp;</th>

                        <g:sortableColumn property="title" title="Title"/>

                        <g:sortableColumn property="auditor" title="Auditor"/>

                        <g:sortableColumn property="auditDate" title="Audit Date"/>
                        <th>Service Name</th>
                        <th>Service Type</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${capabilityAuditList}" status="i" var="capabilityAudit">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}"
                                onmouseover="$('controls.${capabilityAudit.id}').show();"
                                onmouseout="$('controls.${capabilityAudit.id}').hide();">
                            <td width="16px">
                                <div id="controls.${capabilityAudit.id}" style="display:none">
                                    <g:link action="edit" params="[id:capabilityAudit.id]">
                                        <img src="${createLinkTo(dir: 'images/skin', file: 'pencil.png')}" alt="edit" width="16px" height="16px"/>
                                    </g:link>
                                </div>
                            </td>
                            <td>
                                <g:link action="show" id="${fieldValue(bean:capabilityAudit, field:'id')}">
                                    ${fieldValue(bean: capabilityAudit, field: 'title')}
                                </g:link>
                            </td>

                            <td>
                                <g:link controller="user" action="show" id="${capabilityAudit.auditor.id}">
                                    ${fieldValue(bean: capabilityAudit, field: 'auditor')}
                                </g:link>
                            </td>

                            <td>${fieldValue(bean: capabilityAudit, field: 'auditDate')}</td>

                            <td>
                                <g:if test="${capabilityAudit.service?.name}">
                                    <g:link controller="service" action="show" id="${capabilityAudit.service.id}">
                                        ${capabilityAudit.service.name}
                                    </g:link>
                                </g:if>
                            </td>
                            <td>
                                ${capabilityAudit.service.type.name}
                            </td>

                        </tr>
                    </g:each>
                </tbody>
            </table>
        </div>
        <div class="paginateButtons">
            <g:paginate total="${CapabilityAudit.count()}"/>
        </div>
    </div>
</g:if>
<g:else>
    <g:if test="${Service.count()>0}">
        <div class="body">
                <h3>There are no capability audits defined yet.</h3>
                <div class="info">Press the &quot;Create Audit&quot; button to create a new one.</div>
                <span class="menuButton"><g:link class="create" action="create">Create Audit</g:link></span>
        </div>
    </g:if>
    <g:else>
        <div class="body">
                <h3>There are no services defined yet.</h3>
                <div class="info">Press the &quot;Create Service&quot; button to create a new one.</div>
                <span class="menuButton"><g:link class="create" controller="service" action="create">Create Service</g:link></span>

        </div>
        <div class="sidebar">
            <span class="menuButton"><g:link class="create" controller="service" action="create">Create Service</g:link></span>
        </div>
    </g:else>
</g:else>

</body>
</html>
