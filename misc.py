
class dattr(dict):
    """
    "dict-attr", used for when you don't want to type [""] all the time
    """
    def __getattr__(self,name):
        """
        With a dattr, you can do this:
        >>> x = dattr({"abc":True})
        >>> x.abc
        True

        """
        if type(self[name]) == type({}): 
            #make sure we wrap any nested dicts when we encounter them
            self[name] = dattr(self[name]) #has to assign to save any changes to nested dattrs
            #e.g.  x.abc.fed = "in" 
        #otherwise just make our key,value pairs accessible through . (e.g. x.name)
        return self[name]
    def __setattr__(self,name,value):
        """
        With a dattr, you can do this:

        >>> x = dattr({"abc":True})
        >>> x.abc = False
        >>> x.abc
        False
        """
        self[name] = value
