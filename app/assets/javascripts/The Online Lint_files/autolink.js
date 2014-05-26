function correctLinks()
{
    if (document.getElementsByTagName)
    {
        var aSpanLinks = document.getElementsByTagName("SPAN");
        for (var iCnt = 0; iCnt < aSpanLinks.length; iCnt++)
        {
            // is this a span tag with a disguised link?
            var oDomSpan = aSpanLinks[iCnt];
            if (oDomSpan.className === "email_addr" &&
            	typeof(oDomSpan.innerHTML) != "undefined" &&
                oDomSpan.innerHTML.indexOf("&lt;at&gt;") > -1)
            {
                // turn it into a hyperlink
                var sAddress = oDomSpan.innerHTML.replace("&lt;at&gt;", "@");
                oDomSpan.innerHTML = "<a href=\"mailto:" + sAddress + "\">" + sAddress + "</a>";
            }
        }

    }
}

window.onload = correctLinks;