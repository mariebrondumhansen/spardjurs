// RESOURCE #1 BEGIN
//Change link for nyheder rotator
$ts.Observer.Register('blocklistlayout_1_2', 'listRotatorInitialized', forsideChangeNyhederLink);
function forsideChangeNyhederLink()
{
	$chain('a.module1_2_layoutbox2').each(function(elm)
	{
		var link = $elm('div.layout1sub2mergefield99 div.vdcontent', elm).innerHTML;
		
		if( link != '')
		{
			elm.setAttribute('href', link);
			
			if(link.indexOf('http') != -1)
			{
				elm.setAttribute('target', '_blank');
			}
		}
	});
}


//Change link for nyheder page in overview
function nyhederPageChangeLink()
{
	$chain('a.module27_12_layoutbox1, a.module27_2_layoutbox1').each(function(elm)
	{
		var link = $elm('div.layout27sub12mergefield99 div.vdcontent', elm) || $elm('div.layout27sub2mergefield99 div.vdcontent', elm);
		
		if( link.innerHTML != '')
		{
			elm.setAttribute('href', link.innerHTML);
			
			if(link.innerHTML.indexOf('http') != -1)
			{
				elm.setAttribute('target', '_blank');
			}
		}
	});
}




//================ Cookie info snippet ================

$ts.addEvent( window, 'DOMContentLoaded', function()
{
	//move box in DOM
	Tangora.DOM.MoveElement( $elm( '#cookieInfo' ), $elm( 'body' ));
	
	//hidecontent text if shown on phones
	//if( $ts.getContentWidth( $elm( 'body' ) ) <= 480 ) $elm( '#cookieInfo .content-text' ).style.display = 'none';

	//change positioning if shown on mobile devices (tablets, phones)
	if( ismobile() ) $elm('#cookieInfo').style.position = 'static';

	//check for cookie
	var cookieInfoShown = $ts.getCookie('cookieInfo');

	//check if box was already shown
	if( !cookieInfoShown )
	{
		$ts.addClass( $elm( '#cookieInfo' ), 'show' );
		
		$chain('#cookieInfo #accept, #cookieInfo #reject').addEvent('click', function()
		{
			$ts.setCookie( 'cookieInfo', 'true', 365 );
			$ts.Animation.Change($elm( '#cookieInfo' ), 'bottom', '-300px', 500);
			
			setTimeout( function()
			{
				$elm( '#cookieInfo' ).style.display = 'none';
			}, 500);
		
		});
		
		/*
		$ts.addEvent( $elm( '#cookieInfo .content-header' ), 'click', function()
		{
			
			$ts.UI.Animation.Expand( $elm( '#cookieInfo .content-text' ) );
		});
		*/
	}


	function ismobile()
	{
		if( navigator.userAgent.match( /(iPad|iPhone|iPod)/ )
			|| navigator.userAgent.match( /(Windows Phone)/ )
			|| navigator.userAgent.match( /(Android)/ )
			|| navigator.userAgent.match( /(Tablet)/ ) 
			|| navigator.userAgent.match( /(Mobile)/ ) 
			|| navigator.userAgent.match( /(Phone)/ )
			|| screen.width <= 480 
			) 
		{
			return true
		}
		else 
		{
			return false
		}
	}
});
//================ End of Cookie info snippet ================


// RESOURCE #1 END
