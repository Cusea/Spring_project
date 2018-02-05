<%@ page pageEncoding="UTF-8"%>
<ul class="pagination justify-content-center">
  <c:if test='${pagingVo.page!=1}'>
     	<li class="page-item"><a class="page-link" href="1">first</a></li>
  </c:if>
  <li class="page-item <c:if test='${!pagingVo.prev}'>disabled</c:if>"><a class="page-link" href="${pagingVo.page-1}">Previous</a></li>
  <c:forEach begin="${pagingVo.begin_page}" end="${pagingVo.end_page}" var="i">
 	 <li class="page-item <c:if test='${pagingVo.page==i}'> active</c:if>">
 	 	<a class="page-link" href="${i}">${i}</a>
 	 </li>
  </c:forEach>
  <li class="page-item <c:if test='${!pagingVo.next}'>disabled</c:if>"><a class="page-link" href="${pagingVo.page+1}">Next</a></li>
  <c:if test='${pagingVo.page!=pagingVo.total_page}'>
  	<li class="page-item"><a class="page-link" href="${pagingVo.total_page}">last</a></li>
  </c:if>
</ul>
