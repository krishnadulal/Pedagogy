if (typeof abc == "undefined") {
    var abc = {};
}

abc.namespace = function() {
    var a=arguments, o=null, i, j, d;
    for (i=0; i<a.length; ++i) {
        d=a[i].split(".");
        o=abc;

      
        for (j=(d[0] == "abc") ? 1 : 0; j<d.length; ++j) {
            o[d[j]]=o[d[j]] || {};
            o=o[d[j]];
        }
    }

    return o;
};

abc.log = function(msg, cat, src) {
    var l=abc.widget.Logger;
    if(l && l.log) {
        return l.log(msg, cat, src);
    } else {
        return false;
    }
};

abc.extend = function(subc, superc, overrides) {
    var F = function() {};
    F.prototype=superc.prototype;
    subc.prototype=new F();
    subc.prototype.constructor=subc;
    subc.superclass=superc.prototype;
    if (superc.prototype.constructor == Object.prototype.constructor) {
        superc.prototype.constructor=superc;
    }

    if (overrides) {
        for (var i in overrides) {
            subc.prototype[i]=overrides[i];
        }
    }
};

abc.augment = function(r, s) {
    var rp=r.prototype, sp=s.prototype, a=arguments, i, p;
    if (a[2]) {
        for (i=2; i<a.length; ++i) {
            rp[a[i]] = sp[a[i]];
        }
    } else {
        for (p in sp) { 
            if (!rp[p]) {
                rp[p] = sp[p];
            }
        }
    }
};

abc.namespace("util", "widget", "example");

