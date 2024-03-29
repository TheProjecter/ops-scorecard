<h1>New Inventory Items</h1>

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Created</th>
        </tr>
    </thead>
    <tbody>
        <g:each in="${inventoryScorecardList}" status="i" var="scorecard">
            <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                <!-- name -->
                <td>
                    <g:link controller="${scorecard.resource.type.metatype}" action="show" id="${scorecard.resource.id}">
                        ${scorecard.resource.name}
                    </g:link>

                </td>
                <td>
                    <%

                        def icon
                        switch (scorecard.resource.class.name) {
                            case "Service":
                                icon="application.png"
                            break
                            case "PhysicalAsset":
                                icon="server.png"
                            break
                            case "ReleaseArtifact":
                                icon="cd.png"
                            break
                        }
                    %>
                    <img src="/scorecard/images/skin/${icon}" alt="${scorecard.resource.class.name}"
                        title="${scorecard.resource.class.name}"/>
                </td>
                <!-- description -->
                <td>
                    ${scorecard.resource.description}
                </td>
                <!--create date-->
                <td title="${scorecard.resource.createDate}">
                <g:relativeDate atDate="${scorecard.resource.createDate}"/>
                </td>


            </tr>
        </g:each>
    </tbody>
</table>



