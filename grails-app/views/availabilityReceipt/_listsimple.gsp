<%--
  Created by IntelliJ IDEA.
  User: greg
  Date: Dec 16, 2008
  Time: 12:39:34 PM
  To change this template use File | Settings | File Templates.
--%>
<div id="listcontent">
<g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${availabilityReceipt}">
            <div class="errors">
                <g:renderErrors bean="${availabilityReceipt}" as="list"/>
            </div>
        </g:hasErrors>
 <g:if test="${availabilityReceiptList}">

            <table>
                <tbody>
                    <tr>
                        <th ${!hide_service_info? 'colspan="2"':''}>${title?title:'Most Recent'}</th>
                    </tr>
                    <g:each in="${availabilityReceiptList}" status="i" var="availabilityReceipt">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'} ${selected&& selected==availabilityReceipt.id?'hilite':''}">
                            <td class="cardlink" width="50%">
                                <g:link action="show" controller="availabilityReceipt" id="${fieldValue(bean:availabilityReceipt, field:'id')}"  title="View Receipt" >
                                    ${fieldValue(bean: availabilityReceipt, field: 'level')}%
                                        for <g:relativeDate start="${availabilityReceipt.startDate}" end="${availabilityReceipt.endDate}" duration="true"/>


                                    <g:if test="${hide_service_info && availabilityReceipt.process?.name}">
                                        &rarr;
                                        cause:
                                        ${availabilityReceipt.process.category}

                                    </g:if>

                                    <div class="subtitle ">
                                        <span class="ago ended">
                                            <g:relativeDate atDate="${availabilityReceipt.startDate}" />
                                        </span>
                                    </div>
                                <div class="subtitle">
                                    %{--by ${fieldValue(bean: availabilityReceipt, field: 'reporter')}--}%
                                    <g:if test="${availabilityReceipt?.comment}">
                                        <span class="comment">
                                            ${fieldValue(bean: availabilityReceipt, field: 'comment')}
                                        </span>
                                    </g:if>

                                </div>
                                </g:link>
                            </td>

                            <g:if test="${!hide_service_info}">

                            <td>
                                <div>
                                <g:if test="${availabilityReceipt.service?.name}">
                                    <g:link controller="service" action="show" id="${availabilityReceipt.service.id}"  title="View Service">
                                        ${availabilityReceipt.service}
                                    </g:link>
                                </g:if>
                                <g:if test="${availabilityReceipt.process?.name}">
                                    cause &rarr;
                                    <g:link controller="serviceManagementProcess" action="show" id="${availabilityReceipt.process.id}"  title="View Process">
                                        ${availabilityReceipt.process}
                                    </g:link>

                                </g:if>
                                </div>
                            </td>
                            </g:if>
                        </tr>
                    </g:each>
                </tbody>
            </table>
                </g:if>
            <g:else>
                <div class="section info note">
                    None
                </div>
            </g:else>
</div>