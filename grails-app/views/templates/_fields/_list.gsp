<ul class="property-list ${domainClass}">
    <g:each in="${domainProperties}" var="p">
        <div class="row">
            <div class="col-md-2">${p?.getNaturalName()}</div>
            <div class="col-md-2">${body(p)}</div>            
        </div>
    </g:each>
</ul>