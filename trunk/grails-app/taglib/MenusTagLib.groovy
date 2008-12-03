/*
 * Copyright 2003-2008 ControlTier Software, Inc. (http://www.controltier.com)
 * All Rights Reserved.
 *
 * Licensed under the Open Software License, Version 2.1 (the "License"); you may
 * not use this file except in compliance with the License. You may obtain
 * a copy of the License at:
 *
 * http://www.controltier.com/OSL21.html
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES, either express or implied.
 * See the License for the specific language governing
 * permissions and limitations under the License.
 *
 * More information on this software can be found at: http://open.controltier.com
 *
 */
 
/*
 * MenusTaglib.java
 * 
 * User: greg
 * Created: Nov 14, 2008 10:43:14 AM
 * $Id$
 */
class MenusTagLib {
    def menulink ={attrs, body ->
        def key='default'
        if(attrs.key){
            key=attrs.key
        }
        def item = attrs.selected
        def submenu=attrs.submenu

        //load messages
        def menukey=key
        def menuliststrtop = g.message(code:"menus.${key}.list")
        def menulisttop=menuliststrtop.split(/,/)
        def menulist
        if(null!=submenu){
            if('0'==submenu){
                submenu=menulisttop[0]
            }
            def String menuliststr = g.message(code:"menus.${key}.content.${submenu}")
            menukey=key+"_"+submenu
            menulist=menuliststr.split(/,/)
        }else{
            menulist=menulisttop
        }
        if(!item || '0'==item){
            item=menulist[0]   
        }


        def mkp = new groovy.xml.MarkupBuilder(out) //this line will be unnecessary in versions of Grails after version 1.2
        String tcode = "menus.${key}.title.${item}"
        def title=g.message(code:tcode)
        if(tcode==title || title==null){
            title=item
        }
        String icode = "menus.${key}.image.${item}"
        def image=g.message(code:icode)
        if(image==icode){
            image=null
        }
        mkp {
            span('class':"menulink ${attrs.class?attrs.class:''}",onmousedown:"menus.doMenuToggle(this,\"${menukey}_gmenu\");return false;",'style':"padding: 4px 2px;display:inline;"){
                if(image){
                    img('src':g.createLinkTo(dir:'images',file:image), 'class':"menuicon")
                }
                span(title)
                img('src':g.createLinkTo(dir:'images/menus',file:'icon-tiny-disclosure.png'), 'class':"disclosureicon",'width':"12px",'height':'12px')
            }
        }
    }

    def menu={ attrs, body ->
        def key='default'
        
        //
        if(attrs.key){
            key=attrs.key
        }

        //load messages
        def submenu=attrs.submenu
        def menukey=key
        def menuliststrtop = g.message(code:"menus.${key}.list")
        def menulisttop=menuliststrtop.split(/,/)
        def menulist
        if(null!=submenu){
            if('0'==submenu){
                submenu=menulisttop[0]
            }
            def String menuliststr = g.message(code:"menus.${key}.content.${submenu}")
            menukey=key+"_"+submenu
            menulist=menuliststr.split(/,/)
        }else{
            menulist=menulisttop
        }


        def mkp = new groovy.xml.MarkupBuilder(out) //this line will be unnecessary in versions of Grails after version 1.2
        mkp {
            div('id': menukey+'_gmenu','class':"gmenu ${attrs.class?attrs.class:''}",'style':"display:none;") {
                div('class':'menuSection'){
                    ul{
                        menulist.each{k->
                            String tcode = "menus.${key}.title.${k}"
                            def title=g.message(code:tcode)
                            if(title==tcode || null==title){
                                title=k
                            }
                            String icode = "menus.${key}.image.${k}"
                            def image=g.message(code:icode)
                            if(image==icode){
                                image=null
                            }
                            String lcode = "menus.${key}.link.${k}"
                            def link=g.message(code:lcode)
                            if(link==lcode){
                                link=null
                            }
                            def parms=[:]
                            if(link && link.indexOf("?")>0){

                                def pstr = link.substring(link.indexOf("?")+1)
                                link = link.substring(0,link.indexOf("?"))
                                pstr.split("&").each{ pair->
                                    if(pair.indexOf("=")>0){
                                        parms[pair.substring(0,pair.indexOf("="))] = pair.substring(pair.indexOf("=")+1)
                                    }else{
                                        parms[pair]=pair
                                    }
                                }
                            }
                            def ctrl=null
                            if(link && (link.indexOf(":")>0)){
                                ctrl=link.substring(0,link.indexOf(":"))
                                link=link.substring(link.indexOf(":")+1)
                            }else if(params.controller){
                                ctrl=params.controller
                            }
                            if(attrs.params && attrs.params instanceof java.util.Map){
                                parms.putAll(attrs.params)
                            }
                            li{
                                a('href':g.createLink('action':link,'controller':ctrl,params:parms), 'class':'menuitem','style':"padding:5px"){
                                    if(image){
                                        img('src':g.createLinkTo(dir:'images',file:image), 'class':"menuicon")
                                    }
                                    span(title)
                                }
                            }
                        }
                    }
                }
            }

        }
        out<<"""
            <script type="text/javascript">
//<!--
if(typeof(menus)=='undefined'){
    menus = new MenuController();
}
Event.observe(window,'load', function(e){
    Event.observe(\$('${menukey}_gmenu'),'mouseout',function(e){menus._mouseoutMenuHide(e,'${menukey}_gmenu');});
});
//-->
</script>
"""

    }

}