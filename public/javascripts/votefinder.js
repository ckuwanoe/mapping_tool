// JavaScript Document

$(function(){

				// Accordion
				$("#accordion").accordion({ header: "h3" });
	
				// Tabs
				$('#wrapper').tabs();
				
				// Datepicker
				$('#datepicker').datepicker({
					inline: true
				});
	
								
				//hover states on the static widgets
				$('#dialog_link, ul#icons li').hover(
					function() { $(this).addClass('ui-state-hover'); }, 
					function() { $(this).removeClass('ui-state-hover'); }
				);
				
				$('#wrapper').removeClass('ui-corner-all');
				$('body#earlyvote #faq a').button();
				$('#date').datepicker(); 
				$('input:submit').button();
				
				
					   });