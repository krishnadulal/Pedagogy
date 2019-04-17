
abc.widget.TreeView = function(id) {
    if (id) {
        this.init(id);
    }
};

abc.widget.TreeView.prototype = {

    id: null,
    _el: null,
    _nodes: null,
    locked: false,
    _expandAnim: null,
    _collapseAnim: null,
    _animCount: 0,
    maxAnim: 2,

    setExpandAnim: function(type) {
        if (abc.widget.TVAnim.isValid(type)) {
            this._expandAnim = type;
        }
    },

    setCollapseAnim: function(type) {
        if (abc.widget.TVAnim.isValid(type)) {
            this._collapseAnim = type;
        }
    },
    animateExpand: function(el, node) {

        if (this._expandAnim && this._animCount < this.maxAnim) {
            // this.locked = true;
            var tree = this;
            var a = abc.widget.TVAnim.getAnim(this._expandAnim, el,
                function() {
                    tree.expandComplete(node);
                });
            if (a) { 
                ++this._animCount;
                this.fireEvent("animStart", {
                    "node": node,
                    "type": "expand"
                });
                a.animate();
            }

            return true;
        }

        return false;
    },

    
    animateCollapse: function(el, node) {

        if (this._collapseAnim && this._animCount < this.maxAnim) {
            // this.locked = true;
            var tree = this;
            var a = abc.widget.TVAnim.getAnim(this._collapseAnim, el,
                function() {
                    tree.collapseComplete(node);
                });
            if (a) { 
                ++this._animCount;
                this.fireEvent("animStart", {
                    "node": node,
                    "type": "collapse"
                });
                a.animate();
            }

            return true;
        }

        return false;
    },

    expandComplete: function(node) {
        --this._animCount;
        this.fireEvent("animComplete", {
            "node": node,
            "type": "expand"
        });
    // this.locked = false;
    },

   
    collapseComplete: function(node) {
        --this._animCount;
        this.fireEvent("animComplete", {
            "node": node,
            "type": "collapse"
        });
    // this.locked = false;
    },

   
    init: function(id) {

        this.id = id;

        if ("string" !== typeof id) {
            this._el = id;
            this.id = this.generateId(id);
        }
        this.createEvent("animStart", this);
        this.createEvent("animComplete", this);
        this.createEvent("collapse", this);
        this.createEvent("expand", this);
        this._nodes = [];
        // store a global reference
        abc.widget.TreeView.trees[this.id] = this;
        // Set up the root node
        this.root = new abc.widget.RootNode(this);
    },

    draw: function() {
        var html = this.root.getHtml();
        this.getEl().innerHTML = html;
        this.firstDraw = false;
    },

    getEl: function() {
        if (! this._el) {
            this._el = document.getElementById(this.id);
        }
        return this._el;
    },

   
    regNode: function(node) {
        this._nodes[node.index] = node;
    },

    
    getRoot: function() {
        return this.root;
    },

   
    setDynamicLoad: function(fnDataLoader, iconMode) { 
        this.root.setDynamicLoad(fnDataLoader, iconMode);
    },

  
    expandAll: function() { 
        if (!this.locked) {
            this.root.expandAll(); 
        }
    },

   
    collapseAll: function() { 
        if (!this.locked) {
            this.root.collapseAll(); 
        }
    },

    
    getNodeByIndex: function(nodeIndex) {
        var n = this._nodes[nodeIndex];
        return (n) ? n : null;
    },

   
    getNodeByProperty: function(property, value) {
        for (var i in this._nodes) {
            var n = this._nodes[i];
            if (n.data && value == n.data[property]) {
                return n;
            }
        }

        return null;
    },

   
    getNodesByProperty: function(property, value) {
        var values = [];
        for (var i in this._nodes) {
            var n = this._nodes[i];
            if (n.data && value == n.data[property]) {
                values.push(n);
            }
        }

        return (values.length) ? values : null;
    },

    
    removeNode: function(node, autoRefresh) { 

        // Don't delete the root node
        if (node.isRoot()) {
            return false;
        }

        // Get the branch that we may need to refresh
        var p = node.parent;
        if (p.parent) {
            p = p.parent;
        }

        // Delete the node and its children
        this._deleteNode(node);

        // Refresh the parent of the parent
        if (autoRefresh && p && p.childrenRendered) {
            p.refresh();
        }

        return true;
    },

   
    removeChildren: function(node) { 
        while (node.children.length) {
            this._deleteNode(node.children[0]);
        }


        node.childrenRendered = false;
        node.dynamicLoadComplete = false;
        if (node.expanded) {
            node.collapse();
        } else {
            node.updateIcon();
        }
    },

   
    _deleteNode: function(node) { 
        // Remove all the child nodes first
        this.removeChildren(node);

        // Remove the node from the tree
        this.popNode(node);
    },

   
    popNode: function(node) { 
        var p = node.parent;

        // Update the parent's collection of children
        var a = [];

        for (var i=0, len=p.children.length;i<len;++i) {
            if (p.children[i] != node) {
                a[a.length] = p.children[i];
            }
        }

        p.children = a;

        // reset the childrenRendered flag for the parent
        p.childrenRendered = false;
        // Update the sibling relationship
        if (node.previousSibling) {
            node.previousSibling.nextSibling = node.nextSibling;
        }
        if (node.nextSibling) {
            node.nextSibling.previousSibling = node.previousSibling;
        }
        node.parent = null;
        node.previousSibling = null;
        node.nextSibling = null;
        node.tree = null;
        // Update the tree's node collection 
        delete this._nodes[node.index];
    },
   
    toString: function() {
        return "TreeView " + this.id;
    },
  
    generateId: function(el) {
        var id = el.id;

        if (!id) {
            id = "yui-tv-auto-id-" + abc.widget.TreeView.counter;
            ++abc.widget.TreeView.counter;
        }

        return id;
    },

    onExpand: function(node) { },
  
    onCollapse: function(node) { }
};

abc.augment(abc.widget.TreeView, abc.util.EventProvider);
abc.widget.TreeView.nodeCount = 0;
abc.widget.TreeView.trees = [];
abc.widget.TreeView.counter = 0;
abc.widget.TreeView.getTree = function(treeId) {
    var t = abc.widget.TreeView.trees[treeId];
    return (t) ? t : null;
};

abc.widget.TreeView.getNode = function(treeId, nodeIndex) {
    var t = abc.widget.TreeView.getTree(treeId);
    return (t) ? t.getNodeByIndex(nodeIndex) : null;
};


abc.widget.TreeView.addHandler = function (el, sType, fn) {
    if (el.addEventListener) {
        el.addEventListener(sType, fn, false);
    } else if (el.attachEvent) {
        el.attachEvent("on" + sType, fn);
    }
};



abc.widget.TreeView.removeHandler = function (el, sType, fn) {
    if (el.removeEventListener) {
        el.removeEventListener(sType, fn, false);
    } else if (el.detachEvent) {
        el.detachEvent("on" + sType, fn);
    }
};


abc.widget.TreeView.preload = function(prefix) {
    prefix = prefix || "ygtv";
    var styles = ["tn","tm","tmh","tp","tph","ln","lm","lmh","lp","lph","loading"];

    var sb = [];
    
    for (var i = 0; i < styles.length; ++i) { 
        sb[sb.length] = '<span class="' + prefix + styles[i] + '">&#160;</span>';
    }

    var f = document.createElement("div");
    var s = f.style;
    s.position = "absolute";
    s.top = "-1000px";
    s.left = "-1000px";
    f.innerHTML = sb.join("");

    document.body.appendChild(f);

    abc.widget.TreeView.removeHandler(window,
        "load", abc.widget.TreeView.preload);

};

abc.widget.TreeView.addHandler(window,
    "load", abc.widget.TreeView.preload);


abc.widget.Node = function(oData, oParent, expanded) {
    if (oData) {
        this.init(oData, oParent, expanded);
    }
};

abc.widget.Node.prototype = {
    index: 0,
    children: null,
    tree: null,
    data: null,
    parent: null,
    depth: -1,
    href: null,
    target: "_self",
    expanded: true,
    multiExpand: false,
    renderHidden: false,
    childrenRendered: false,
    dynamicLoadComplete: false,
    previousSibling: null,
    nextSibling: null,
    _dynLoad: false,
    dataLoader: null,
    isLoading: false,
    hasIcon: true,
    iconMode: 0,
    _type: "Node",
    init: function(oData, oParent, expanded) {
        this.data       = oData;
        this.children   = [];
        this.index      = abc.widget.TreeView.nodeCount;
        ++abc.widget.TreeView.nodeCount;
        this.expanded   = expanded;
        this.createEvent("parentChange", this);

        // oParent should never be null except when we create the root node.
        if (oParent) {
            oParent.appendChild(this);
        }
    },

   
    applyParent: function(parentNode) {
        if (!parentNode) {
            return false;
        }

        this.tree   = parentNode.tree;
        this.parent = parentNode;
        this.depth  = parentNode.depth + 1;

        if (!this.href) {
            this.href = "javascript:" + this.getToggleLink();
        }

        if (! this.multiExpand) {
            this.multiExpand = parentNode.multiExpand;
        }

        this.tree.regNode(this);
        parentNode.childrenRendered = false;

        // cascade update existing children
        for (var i=0, len=this.children.length;i<len;++i) {
            this.children[i].applyParent(this);
        }

        this.fireEvent("parentChange");

        return false;
    },

  
    appendChild: function(childNode) {
        if (this.hasChildren()) {
            var sib = this.children[this.children.length - 1];
            sib.nextSibling = childNode;
            childNode.previousSibling = sib;
        }
        this.children[this.children.length] = childNode;
        childNode.applyParent(this);

        return childNode;
    },

   
    appendTo: function(parentNode) {
        return parentNode.appendChild(this);
    },

    insertBefore: function(node) {
        var p = node.parent;
        if (p) {

            if (this.tree) {
                this.tree.popNode(this);
            }

            var refIndex = node.isChildOf(p);
            p.children.splice(refIndex, 0, this);
            if (node.previousSibling) {
                node.previousSibling.nextSibling = this;
            }
            this.previousSibling = node.previousSibling;
            this.nextSibling = node;
            node.previousSibling = this;

            this.applyParent(p);
        }

        return this;
    },
 
   
    insertAfter: function(node) {
        var p = node.parent;
        if (p) {

            if (this.tree) {
                this.tree.popNode(this);
            }

            var refIndex = node.isChildOf(p);

            if (!node.nextSibling) {
                return this.appendTo(p);
            }

            p.children.splice(refIndex + 1, 0, this);

            node.nextSibling.previousSibling = this;
            this.previousSibling = node;
            this.nextSibling = node.nextSibling;
            node.nextSibling = this;

            this.applyParent(p);
        }

        return this;
    },

  
    isChildOf: function(parentNode) {
        if (parentNode && parentNode.children) {
            for (var i=0, len=parentNode.children.length; i<len ; ++i) {
                if (parentNode.children[i] === this) {
                    return i;
                }
            }
        }

        return -1;
    },

   
    getSiblings: function() {
        return this.parent.children;
    },

    
    showChildren: function() {
        if (!this.tree.animateExpand(this.getChildrenEl(), this)) {
            if (this.hasChildren()) {
                this.getChildrenEl().style.display = "";
            }
        }
    },

   
    hideChildren: function() {

        if (!this.tree.animateCollapse(this.getChildrenEl(), this)) {
            this.getChildrenEl().style.display = "none";
        }
    },

    getElId: function() {
        return "ygtv" + this.index;
    },

   
    getChildrenElId: function() {
        return "ygtvc" + this.index;
    },

    
    getToggleElId: function() {
        return "ygtvt" + this.index;
    },

    
    getEl: function() {
        return document.getElementById(this.getElId());
    },

  
    getChildrenEl: function() {
        return document.getElementById(this.getChildrenElId());
    },

    
    getToggleEl: function() {
        return document.getElementById(this.getToggleElId());
    },

   
    getToggleLink: function() {
        return "abc.widget.TreeView.getNode(\'" + this.tree.id + "\'," +
        this.index + ").toggle()";
    },

    
    collapse: function() {
        // Only collapse if currently expanded
        if (!this.expanded) {
            return;
        }

        // fire the collapse event handler
        var ret = this.tree.onCollapse(this);

        if (false === ret) {
            return;
        }

        ret = this.tree.fireEvent("collapse", this);

        if (false === ret) {
            return;
        }

        if (!this.getEl()) {
            this.expanded = false;
            return;
        }

        // hide the child div
        this.hideChildren();
        this.expanded = false;

        this.updateIcon();

    // this.getSpacer().title = this.getStateText();

    },

   
    expand: function() {
        // Only expand if currently collapsed.
        if (this.expanded) {
            return;
        }

        // fire the expand event handler
        var ret = this.tree.onExpand(this);

        if (false === ret) {
            return;
        }
        
        ret = this.tree.fireEvent("expand", this);

        if (false === ret) {
            return;
        }

        if (!this.getEl()) {
            this.expanded = true;
            return;
        }

        if (! this.childrenRendered) {
            this.getChildrenEl().innerHTML = this.renderChildren();
        } else {
        }

        this.expanded = true;

        this.updateIcon();

      
        if (this.isLoading) {
            this.expanded = false;
            return;
        }

        if (! this.multiExpand) {
            var sibs = this.getSiblings();
            for (var i=0; i<sibs.length; ++i) {
                if (sibs[i] != this && sibs[i].expanded) { 
                    sibs[i].collapse(); 
                }
            }
        }

        this.showChildren();
    },

    updateIcon: function() {
        if (this.hasIcon) {
            var el = this.getToggleEl();
            if (el) {
                el.className = this.getStyle();
            }
        }
    },

   
    getStyle: function() {
        if (this.isLoading) {
            return "ygtvloading";
        } else {
            // location top or bottom, middle nodes also get the top style
            var loc = (this.nextSibling) ? "t" : "l";

            // type p=plus(expand), m=minus(collapase), n=none(no children)
            var type = "n";
            if (this.hasChildren(true) || (this.isDynamic() && !this.getIconMode())) {
                // if (this.hasChildren(true)) {
                type = (this.expanded) ? "m" : "p";
            }

            return "ygtv" + loc + type;
        }
    },

   
    getHoverStyle: function() { 
        var s = this.getStyle();
        if (this.hasChildren(true) && !this.isLoading) { 
            s += "h"; 
        }
        return s;
    },

   
    expandAll: function() { 
        for (var i=0;i<this.children.length;++i) {
            var c = this.children[i];
            if (c.isDynamic()) {
                alert("Not supported (lazy load + expand all)");
                break;
            } else if (! c.multiExpand) {
                alert("Not supported (no multi-expand + expand all)");
                break;
            } else {
                c.expand();
                c.expandAll();
            }
        }
    },

   
    collapseAll: function() { 
        for (var i=0;i<this.children.length;++i) {
            this.children[i].collapse();
            this.children[i].collapseAll();
        }
    },

    setDynamicLoad: function(fnDataLoader, iconMode) { 
        if (fnDataLoader) {
            this.dataLoader = fnDataLoader;
            this._dynLoad = true;
        } else {
            this.dataLoader = null;
            this._dynLoad = false;
        }

        if (iconMode) {
            this.iconMode = iconMode;
        }
    },

    isRoot: function() { 
        return (this == this.tree.root);
    },

   
    isDynamic: function() { 
        var lazy = (!this.isRoot() && (this._dynLoad || this.tree.root._dynLoad));
        return lazy;
    },

   
    getIconMode: function() {
        return (this.iconMode || this.tree.root.iconMode);
    },

    
    hasChildren: function(checkForLazyLoad) { 
        return ( this.children.length > 0 || 
            (checkForLazyLoad && this.isDynamic() && !this.dynamicLoadComplete) );
    },

   
    toggle: function() {
        if (!this.tree.locked && ( this.hasChildren(true) || this.isDynamic()) ) {
            if (this.expanded) {
                this.collapse();
            } else {
                this.expand();
            }
        }
    },

  
    getHtml: function() {

        this.childrenRendered = false;

        var sb = [];
        sb[sb.length] = '<div class="ygtvitem" id="' + this.getElId() + '">';
        sb[sb.length] = this.getNodeHtml();
        sb[sb.length] = this.getChildrenHtml();
        sb[sb.length] = '</div>';
        return sb.join("");
    },

    getChildrenHtml: function() {

        var sb = [];
        sb[sb.length] = '<div class="ygtvchildren"';
        sb[sb.length] = ' id="' + this.getChildrenElId() + '"';
        if (!this.expanded) {
            sb[sb.length] = ' style="display:none;"';
        }
        sb[sb.length] = '>';

        // Don't render the actual child node HTML unless this node is expanded.
        if ( (this.hasChildren(true) && this.expanded) ||
            (this.renderHidden && !this.isDynamic()) ) {
            sb[sb.length] = this.renderChildren();
        }

        sb[sb.length] = '</div>';

        return sb.join("");
    },

    
    renderChildren: function() {


        var node = this;

        if (this.isDynamic() && !this.dynamicLoadComplete) {
            this.isLoading = true;
            this.tree.locked = true;

            if (this.dataLoader) {

                setTimeout( 
                    function() {
                        node.dataLoader(node, 
                            function() { 
                                node.loadComplete(); 
                            });
                    }, 10);
                
            } else if (this.tree.root.dataLoader) {

                setTimeout( 
                    function() {
                        node.tree.root.dataLoader(node, 
                            function() { 
                                node.loadComplete(); 
                            });
                    }, 10);

            } else {
                return "Error: data loader not found or not specified.";
            }

            return "";

        } else {
            return this.completeRender();
        }
    },

  
    completeRender: function() {
        var sb = [];

        for (var i=0; i < this.children.length; ++i) {
            // this.children[i].childrenRendered = false;
            sb[sb.length] = this.children[i].getHtml();
        }
        
        this.childrenRendered = true;

        return sb.join("");
    },

   
    loadComplete: function() {
        this.getChildrenEl().innerHTML = this.completeRender();
        this.dynamicLoadComplete = true;
        this.isLoading = false;
        this.expand();
        this.tree.locked = false;
    },

   
    getAncestor: function(depth) {
        if (depth >= this.depth || depth < 0)  {
            return null;
        }

        var p = this.parent;
        
        while (p.depth > depth) {
            p = p.parent;
        }

        return p;
    },

    getDepthStyle: function(depth) {
        return (this.getAncestor(depth).nextSibling) ? 
        "ygtvdepthcell" : "ygtvblankdepthcell";
    },

   
    getNodeHtml: function() { 
        return ""; 
    },

   
    refresh: function() {
        // this.loadComplete();
        this.getChildrenEl().innerHTML = this.completeRender();

        if (this.hasIcon) {
            var el = this.getToggleEl();
            if (el) {
                el.className = this.getStyle();
            }
        }
    },

    
    toString: function() {
        return "Node (" + this.index + ")";
    }

};

abc.augment(abc.widget.Node, abc.util.EventProvider);


abc.widget.RootNode = function(oTree) {
	
    this.init(null, null, true);
	
	
    this.tree = oTree;
};

abc.extend(abc.widget.RootNode, abc.widget.Node, {
    
    // overrides abc.widget.Node
    getNodeHtml: function() { 
        return ""; 
    },

    toString: function() { 
        return "RootNode";
    },

    loadComplete: function() { 
        this.tree.draw();
    }

});

abc.widget.TextNode = function(oData, oParent, expanded) {

    if (oData) { 
        this.init(oData, oParent, expanded);
        this.setUpLabel(oData);
    }

};

abc.extend(abc.widget.TextNode, abc.widget.Node, {
    labelStyle: "ygtvlabel",
    labelElId: null,
    label: null,
    textNodeParentChange: function() {
        if (this.tree && !this.tree.hasEvent("labelClick"))
        {
            this.tree.createEvent("labelClick", this.tree);
        }

    },

  
    setUpLabel: function(oData) { 
        
        // set up the custom event on the tree
        this.textNodeParentChange();
        this.subscribe("parentChange", this.textNodeParentChange);

        if (typeof oData == "string") {
            oData = {
                label: oData
            };
        }
        this.label = oData.label;
        
        // update the link
        if (oData.href) {
            this.href = oData.href;
        }

        // set the target
        if (oData.target) {
            this.target = oData.target;
        }

        if (oData.style) {
            this.labelStyle = oData.style;
        }

        this.labelElId = "ygtvlabelel" + this.index;
    },

   
    getLabelEl: function() { 
        return document.getElementById(this.labelElId);
    },

    // overrides abc.widget.Node
    getNodeHtml: function() { 
        var sb = [];

        sb[sb.length] = '<table border="0" cellpadding="0" cellspacing="0">';
        sb[sb.length] = '<tr>';
        
        for (var i=0;i<this.depth;++i) {
            // sb[sb.length] = '<td class="ygtvdepthcell">&#160;</td>';
            sb[sb.length] = '<td class="' + this.getDepthStyle(i) + '">&#160;</td>';
        }

        var getNode = 'abc.widget.TreeView.getNode(\'' +
        this.tree.id + '\',' + this.index + ')';

        sb[sb.length] = '<td';
        // sb[sb.length] = ' onselectstart="return false"';
        sb[sb.length] = ' id="' + this.getToggleElId() + '"';
        sb[sb.length] = ' class="' + this.getStyle() + '"';
        if (this.hasChildren(true)) {
            sb[sb.length] = ' onmouseover="this.className=';
            sb[sb.length] = getNode + '.getHoverStyle()"';
            sb[sb.length] = ' onmouseout="this.className=';
            sb[sb.length] = getNode + '.getStyle()"';
        }
        sb[sb.length] = ' onclick="javascript:' + this.getToggleLink() + '">';

       

        sb[sb.length] = '&#160;';

        sb[sb.length] = '</td>';
        sb[sb.length] = '<td >';
        sb[sb.length] = '<a';
        sb[sb.length] = ' id="' + this.labelElId + '"';
        sb[sb.length] = ' class="' + this.labelStyle + '"';
        sb[sb.length] = ' href="' + this.href + '"';
        sb[sb.length] = ' target="' + this.target + '"';
        sb[sb.length] = ' onclick="return ' + getNode + '.onLabelClick(' + getNode +')"';
        if (this.hasChildren(true)) {
            sb[sb.length] = ' onmouseover="document.getElementById(\'';
            sb[sb.length] = this.getToggleElId() + '\').className=';
            sb[sb.length] = getNode + '.getHoverStyle()"';
            sb[sb.length] = ' onmouseout="document.getElementById(\'';
            sb[sb.length] = this.getToggleElId() + '\').className=';
            sb[sb.length] = getNode + '.getStyle()"';
        }
        sb[sb.length] = ' >';
        sb[sb.length] = this.label;
        sb[sb.length] = '</a>';
        sb[sb.length] = '</td>';
        sb[sb.length] = '</tr>';
        sb[sb.length] = '</table>';

        return sb.join("");
    },

   
    onLabelClick: function(me) { 
        return me.tree.fireEvent("labelClick", me);
    //return true;
    },

    toString: function() { 
        return "TextNode (" + this.index + ") " + this.label;
    }

});

abc.widget.MenuNode = function(oData, oParent, expanded) {
    if (oData) {
        this.init(oData, oParent, expanded);
        this.setUpLabel(oData);
    }

    /*
     * Menus usually allow only one branch to be open at a time.
     */
    this.multiExpand = false;


};

abc.extend(abc.widget.MenuNode, abc.widget.TextNode, {

    toString: function() { 
        return "MenuNode (" + this.index + ") " + this.label;
    }

});

abc.widget.HTMLNode = function(oData, oParent, expanded, hasIcon) {
    if (oData) { 
        this.init(oData, oParent, expanded);
        this.initContent(oData, hasIcon);
    }
};

abc.extend(abc.widget.HTMLNode, abc.widget.Node, {

    
    contentStyle: "ygtvhtml",

  
    contentElId: null,

  
    content: null,

   
    initContent: function(oData, hasIcon) { 
        if (typeof oData == "string") {
            oData = {
                html: oData
            };
        }

        this.html = oData.html;
        this.contentElId = "ygtvcontentel" + this.index;
        this.hasIcon = hasIcon;

    },

   
    getContentEl: function() { 
        return document.getElementById(this.contentElId);
    },

    // overrides abc.widget.Node
    getNodeHtml: function() { 
        var sb = [];

        sb[sb.length] = '<table border="0" cellpadding="0" cellspacing="0">';
        sb[sb.length] = '<tr>';
        
        for (var i=0;i<this.depth;++i) {
            sb[sb.length] = '<td class="' + this.getDepthStyle(i) + '">&#160;</td>';
        }

        if (this.hasIcon) {
            sb[sb.length] = '<td';
            sb[sb.length] = ' id="' + this.getToggleElId() + '"';
            sb[sb.length] = ' class="' + this.getStyle() + '"';
            sb[sb.length] = ' onclick="javascript:' + this.getToggleLink() + '"';
            if (this.hasChildren(true)) {
                sb[sb.length] = ' onmouseover="this.className=';
                sb[sb.length] = 'abc.widget.TreeView.getNode(\'';
                sb[sb.length] = this.tree.id + '\',' + this.index +  ').getHoverStyle()"';
                sb[sb.length] = ' onmouseout="this.className=';
                sb[sb.length] = 'abc.widget.TreeView.getNode(\'';
                sb[sb.length] = this.tree.id + '\',' + this.index +  ').getStyle()"';
            }
            sb[sb.length] = '>&#160;</td>';
        }

        sb[sb.length] = '<td';
        sb[sb.length] = ' id="' + this.contentElId + '"';
        sb[sb.length] = ' class="' + this.contentStyle + '"';
        sb[sb.length] = ' >';
        sb[sb.length] = this.html;
        sb[sb.length] = '</td>';
        sb[sb.length] = '</tr>';
        sb[sb.length] = '</table>';

        return sb.join("");
    },

    toString: function() { 
        return "HTMLNode (" + this.index + ")";
    }

});

abc.widget.TVAnim = function() {
    return {
        
        FADE_IN: "TVFadeIn",
        FADE_OUT: "TVFadeOut",
        getAnim: function(type, el, callback) {
            if (abc.widget[type]) {
                return new abc.widget[type](el, callback);
            } else {
                return null;
            }
        },

       
        isValid: function(type) {
            return (abc.widget[type]);
        }
    };
} ();


abc.widget.TVFadeIn = function(el, callback) {
    
    this.el = el;

   
    this.callback = callback;

};

abc.widget.TVFadeIn.prototype = {
   
    animate: function() {
        var tvanim = this;

        var s = this.el.style;
        s.opacity = 0.1;
        s.filter = "alpha(opacity=10)";
        s.display = "";

        var dur = 0.4; 
        var a = new abc.util.Anim(this.el, {
            opacity: {
                from: 0.1,
                to: 1,
                unit:""
            }
        }, dur);
        a.onComplete.subscribe( function() {
            tvanim.onComplete();
        } );
        a.animate();
    },

   
    onComplete: function() {
        this.callback();
    },

   
    toString: function() {
        return "TVFadeIn";
    }
};


abc.widget.TVFadeOut = function(el, callback) {
   
    this.el = el;

   
    this.callback = callback;

};

abc.widget.TVFadeOut.prototype = {
   
    animate: function() {
        var tvanim = this;
        var dur = 0.4;
        var a = new abc.util.Anim(this.el, {
            opacity: {
                from: 1,
                to: 0.1,
                unit:""
            }
        }, dur);
        a.onComplete.subscribe( function() {
            tvanim.onComplete();
        } );
        a.animate();
    },

   
    onComplete: function() {
        var s = this.el.style;
        s.display = "none";
        // s.opacity = 1;
        s.filter = "alpha(opacity=100)";
        this.callback();
    },

   
    toString: function() {
        return "TVFadeOut";
    }
};

