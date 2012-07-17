/**
 * jquery.dynamicDropdown.js
 * Creates a chained selection out of a single <select> box
 *
 * @author Sean "Kovik" Smith <kovik@koviko.net>
 * @version 1.0
 * @requires jQuery
 * @fileoverview
 * Usage:
 *   Select the target <select> box and run dynamicDropdown().
 *
 *   i.e.
 *   $("select").dynamicDropdown();
 *
 *   You can also build a dynamic dropdown using the options to select a
 *   delimiter and/or a class name for the <select> boxes.
 *
 *   i.e.
 *   $("select").dynamicDropdown({
 *     "delimiter" : " » ",
 *     "className" : "dynamic-dropdown"
 *   });
 *
 *   The target <select> box must use a delimiter to separate the levels. The
 *   default delimiter is " » " but any can be used. Just be sure to set it in
 *   the options for dynamicDropdown().
 *
 *   i.e.
 *   <select>
 *     <option value="1">Ford » Mustang » 2000</option>
 *     <option value="2">Ford » Mustang » 2005</option>
 *     <option value="3">Ford » Focus » 2010</option>
 *     <option value="4">Oldsmobile » Alero » 1993</option>
 *   </select>
 *
 *   Note that, unlike the above example, the options do not have to have the
 *   same amount of levels in order to work. Also, unlike the above example,
 *   the value of the options does not need to be numeric.
 *
 *   i.e.
 *   <select>
 *     <option value="iphone3">Cell Phone » Apple » iPhone » iPhone 3G</option>
 *     <option value="iphone4">Cell Phone » Apple » iPhone » iPhone 4</option>
 *     <option value="htc-hero">Cell Phone » Android » HTC » Hero</option>
 *     <option value="macbook">Laptop » Apple » Macbook</option>
 *     <option value="zune">MP3 Player » Microsoft » Zune</option>
 *     <option value="other">Other</option>
 *   </select>
 *
 * Options:
 *
 *   delimiter:
 *     The delimiter that separates different levels of the drop down.
 *     The default delimiter is " » ".
 *
 *   className:
 *     The class name of the <select> boxes, for formatting purposes.
 *     The default class name is "dynamic-dropdown".
 */

(function($) {
    $.dynamicDropdown = {
        /**
         * Escape quotation marks and slashes
         * @param {String} String to format
         * @return {String}
         */
        escapeQuotes : function(str) {
            return str.replace(/([""\\])/g, "\\$1");
        },

        /**
         * Build a <select> box from options
         * @param {Array} Options
         * @return {jQuery}
         */
        buildSelectDropdown : function(options) {
            var select = $(document.createElement("select"));
            var option = null;

            // Add options
            for (var i in options) {
                option = $(document.createElement("option"))
                    .val($.isArray(options[i]) ? i : options[i])
                    .html(i)
                    .appendTo(select);
            }

            return select;
        }
    };

    $.fn.dynamicDropdown = function(options) {
        var settings = {
            "delimiter" : " » ",
            "className" : "dynamic-dropdown"
        };

        $.extend(settings, options);

        return $(this).each(function() {
            /**
             * Main dropdown (this)
             * @type jQuery
             */
            var mainDropdown = $(this);

            /**
             * Position of initial value of main dropdown
             * @type Array
             */
            var initialPosition = [];

            /**
             * Main array of all elements
             * @type Array
             */
            var data = [];

            /**
             * Array of all <select> boxes
             * @type Array
             */
            var selectElements = [];

            /**
             * Prepare a dropdown for use as a dynamic dropdown
             * @param {jQuery|string} Dropdown
             * @param {jQuery|HTMLElement} Sibling
             * @param {Number} Level
             * @param {Number} Position in the main array
             * @return {jQuery}
             */
            var prepareDropdown = function(dropdown, sibling, level, position) {
                return $(dropdown)
                    .addClass(settings.className)
                    .data("level", level)
                    .data("position", position)
                    .insertAfter(sibling)
                    .each(buildDynamicDropdown)
                    .change(buildDynamicDropdown);
            };

            /**
             * Initialize the dynamic dropdown <select> boxes
             * @return {jQuery}
             */
            var initializeDynamicDropdown = function() {
                var level = $(this).data("level") + 1;
                var position = "";

                // Get the position in the main data array
                for (var i = 0; i < level; i++) {
                    position += "[\"" + initialPosition[i] + "\"]";
                }

                var selectionOptions = eval("data" + position);

                if ($.isArray(selectionOptions)) {
                    // Build the next dropdown
                    selectElements.push($.dynamicDropdown.buildSelectDropdown(selectionOptions));
                    $(this).val(initialPosition[level - 1]);
                    prepareDropdown(selectElements[selectElements.length - 1], this, level, position);
                }

                return $(this);
            };

            /**
             * Build the dynamic dropdown <select> box
             * @return {jQuery}
             */
            var buildDynamicDropdown = function() {
                var level = $(this).data("level") + 1;
                var position = $(this).data("position") + "[\"" + $.dynamicDropdown.escapeQuotes($(this).val()) + "\"]";
                var selectionOptions = eval("data" + position);

                // Remove old <select> boxes
                for (var i = selectElements.length; i > level; i--) {
                    selectElements.pop().remove();
                }

                if (selectionOptions) {
                    // Add new <select> boxes
                    selectElements.push($.dynamicDropdown.buildSelectDropdown(selectionOptions));
                    prepareDropdown(selectElements[selectElements.length - 1], this, level, position);
                } else {
                    // Set the value
                    mainDropdown.val($(this).val());
                }

                return $(this);
            };

            // Build the dynamic dropdown data
            mainDropdown.children().each(function() {
                var parts = $(this).html().split(settings.delimiter);
                var name = "data";
                var value = null;

                // Set the initial position
                if ($(this).is(":selected")) {
                    initialPosition = parts;
                }

                // Build the position of the current item
                for (var i in parts) {
                    name += "[\"" + $.dynamicDropdown.escapeQuotes(parts[i]) + "\"]";
                    value = eval(name);
                    if (!value) {
                        // Set the level to have an empty array to be filled
                        eval(name + " = [];");
                    } else if (!$.isArray(value)) {
                        // Add data to the array
                        eval(name + " = [" + eval(name) + "];");
                    }
                }

                // Set the final index to have the value
                eval(name + " = \"" + $(this).val() + "\";");
            });

            // Build the dynamic dropdown
            selectElements[0] = $.dynamicDropdown.buildSelectDropdown(data);
            $(selectElements[0])
                    .addClass(settings.className)
                    .data("level", 0)
                    .data("position", "")
                    .insertAfter(this)
                    .each(initializeDynamicDropdown)
                    .change(buildDynamicDropdown);
        }).hide();
    };
})(jQuery);