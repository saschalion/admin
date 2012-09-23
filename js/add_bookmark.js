function addBookmark(url, title)
{
	if (!url) url = location.href;
	if (!title) title = document.title;
	//Gecko
	if ((typeof window.sidebar == "object") && (typeof window.sidebar.addPanel == "function")) window.sidebar.addPanel ("Ремонт компьютеров", "http://seucomp.ru", "");
	//IE4+
	else if (typeof window.external == "object") window.external.AddFavorite("http://seucomp.ru", "Ремонт компьютеров");
	//Opera7+
	else if (window.opera && document.createElement)
	{
		var a = document.createElement('A');
		if (!a) return false; //IF Opera 6
		a.setAttribute('rel','sidebar');
		a.setAttribute('href',url);
		a.setAttribute('title',title);
		a.click();
	}
	else return false;
	return true;
}