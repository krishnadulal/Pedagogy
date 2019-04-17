
function jktreeview(treeid){
    this.treetop=new abc.widget.TreeView(treeid)
   
}

jktreeview.prototype.addItem=function(itemText, noderef, href){
    var treebranch;
    var noderef=(typeof noderef!="undefined" && noderef!="")? noderef : this.treetop.getRoot()
    var n=itemText.split("\:");
    if("Course"==n[0])
        {
        treebranch=new abc.widget.TextNode(itemText, noderef,true)
        }
    else if("Course modules"==n[0])
        {
        treebranch=new abc.widget.TextNode(itemText, noderef,true)
        }
        
         else
        {
        treebranch=new abc.widget.TextNode(itemText, noderef,false)
        }
     if (typeof href!="undefined")
        treebranch.href=href
    return treebranch
}
