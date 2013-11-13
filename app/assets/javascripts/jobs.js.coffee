# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$.extend $.fn.dataTableExt.oStdClasses,
  sWrapper: "dataTables_wrapper form-inline"

ready = ->
        $('#jobs').dataTable
        	sDom: "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
        	sPaginationType: "bootstrap"




# Relace "jQuery" with "ready =" and use the code below
# Fixes turbolinks issue with not loading javascripts (rails 4.0)        	
$(document).ready(ready)
$(document).on('page:load', ready)