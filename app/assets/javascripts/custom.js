$(document).ready(function() {
         
$( ":radio" ).removeAttr('checked');
          if ($('input:radio[name=g3na]').click(function() 
             {
               $('.wg3na').text($(this).val());
               $('.fna3').val($(this).val());
               if ($(this).val() == 'Team Solomid'){ 
               		$('.lg3na').text('Team Liquid');
               		$('.tna3').val('Team Liquid');
               } else {
               	$('.lg3na').text('Team Solomid');
               	$('.tna3').val('Team Solomid');
               }
             }));
         

          if ($('input:radio[name=g4na]').click(function() 
             {
               $('.wg4na').text($(this).val());
               $('.fna4').val($(this).val());
               if ($(this).val() == 'CLG'){ 
               		$('.lg4na').text('Team Impulse');
               		$('.tna4').val('Team Impulse');


               } else {
               	$('.lg4na').text('CLG');
               	$('.tna4').val('CLG');
               }
             }));



          if ($('input:radio[name=g3eu]').click(function() 
             {
               $('.wg3eu').text($(this).val());
               $('.feu3').val($(this).val());
               if ($(this).val() == 'Fnatic'){ 
               		$('.lg3eu').text('UOL');
               		$('.teu3').val('UOL');
               } else {
               	$('.lg3eu').text('Fnatic');
               	$('.teu3').val('Fnatic');
               }
             }));
         

          if ($('input:radio[name=g4eu]').click(function() 
             {
               $('.wg4eu').text($(this).val());
               $('.feu4').val($(this).val());
               if ($(this).val() == 'H2K'){ 
               		$('.lg4eu').text('ORIGEN');
               		$('.teu4').val('ORIGEN');
               } else {
               	$('.lg4eu').text('H2K');
               	$('.teu4').val('H2K');
               }
             }));




		if ($('input:radio[name=g1gna]').click(function() 
             {
               $('.wg1gna').text($(this).val());
               $('.g1wna').val($(this).val());
             }));

		if ($('input:radio[name=g2gna]').click(function() 
             {
               $('.wg2gna').text($(this).val());
               $('.g2wna').val($(this).val());
             }));

		if ($('input:radio[name=g1geu]').click(function() 
             {
               $('.wg1geu').text($(this).val());
               $('.g1weu').val($(this).val());
             }));

		if ($('input:radio[name=g2geu]').click(function() 
             {
               $('.wg2geu').text($(this).val());
               $('.g2weu').val($(this).val());
             }));

 });
