# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# Initialize Wizard Fuel

$ ->
  $("#MyWizard").on "change", (e, data) ->
    console.log "change"
    $("#wizard-submit").hide() 
  
    $("#wizard-submit").show()  if data.step is 4 and data.direction is "next"

    switch data.step
      when 1
        if data.direction is "next"
          $("#btnWizardPrev").removeAttr("disabled");
        else
          $("#btnWizardPrev").attr("disabled", true)
        $("#btnWizardNext").show()
      when 2
        if data.direction is "next"
          $("#btnWizardPrev").show()
          $("#btnWizardNext").show()
        else
          $("#btnWizardPrev").attr("disabled", true)
          $("#btnWizardNext").show()
      when 3
        if data.direction is "next"
          $("#btnWizardPrev").show()
          $("#btnWizardNext").show()
        else
          $("#btnWizardPrev").show()
          $("#btnWizardNext").show()
      when 4
        if data.direction is "next"
          $("#btnWizardPrev").show()
          $("#btnWizardNext").hide()
        else
          $("#btnWizardPrev").show()
          $("#btnWizardNext").show()
      when 5
        if data.direction is "next"
          $("#btnWizardNext").hide()
        else
          $("#btnWizardNext").show()
        $("#btnWizardPrev").show()
      else
        $("#btnWizardPrev").show()
        $("#btnWizardNext").show()

  $("#MyWizard").on "changed", (e, data) ->
    console.log "changed"

  $("#MyWizard").on "finished", (e, data) ->
    console.log "finished"

  $("#btnWizardPrev").on "click", ->
    $("#MyWizard").wizard "previous"

  $("#btnWizardNext").on "click", ->
    $("#MyWizard").wizard "next"

  $("#btnWizardStep").on "click", ->
    item = $("#MyWizard").wizard("selectedItem")
    console.log item.step



