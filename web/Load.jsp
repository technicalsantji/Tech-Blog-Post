<%@page import="sant.entity.User"%>
<%@page import="com.dao.LikeDao"%>
<%@page import="sant.entity.Post"%>
<%@page import="java.util.List"%>
<%@page import="sant.helper.ConnectionProvider"%>
<%@page import="com.dao.PostDao"%>
<div class="row">
     
<% 
 PostDao d=new PostDao(ConnectionProvider.getConnection());
  int cid=Integer.parseInt(request.getParameter("cid"));
  List<Post> li=null;
  if(cid==0){
      li=d.getAllpost();
  }else{
      li=d.getPostByCatid(cid);
  }
  if(li.size()==0)
  {
      out.print("<h5 class='display-4 text-center'> No Post Available this category</h5>");
      return;
  }
for(Post p:li){
    

%>
<div class="col-md-6 mt-3">
    <div class="card">
        <div class="card-body">
            <img src="b_pic/<%= p.getPpic() %>" class="img-fluid text-center" alt="alt" style="max-width:335px;"/> <br> 
            <b> <%= p.getPtitle() %></b>
            <p><%= p.getPcontent()  %></p>
            
            <div class="card-footer text-center" style="background-color:#ffffff">
                
               
                <% 
                  User hs=(User)session.getAttribute("currentuser");
                LikeDao ld=new LikeDao(ConnectionProvider.getConnection());
                %>
                <a href="#" onclick="doLike(<%=p.getPid()%>,<%=hs.getId() %>)" class="btn btn-outline-primary btn-sm"><i class="fa fa-thumbs-o-up"></i><span class="like-count"><%=ld.countLikesOnPost(p.getPid())  %></span></a>
                <a href="ReadMorePage.jsp?pid=<%=p.getPid()%>" class="btn btn-outline-primary btn-sm">Read more</a>
                <a href="#" class="btn btn-outline-primary btn-sm"><i class="fa fa-commenting-o"></i><span>10</span></a>
            </div>     
        </div>
    </div>
         
</div>

<% 
}

%>
</div>