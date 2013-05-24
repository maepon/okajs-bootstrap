@echo off

copy /Y img\* mockup\img

call lessc -x less\bootstrap.less > mockup\css\bootstrap.min.css
call lessc -x less\responsive.less > mockup\css\bootstrap-responsive.css

copy /B js\bootstrap-transition.js+js\bootstrap-alert.js+js\bootstrap-button.js+js\bootstrap-carousel.js+js\bootstrap-collapse.js+js\bootstrap-dropdown.js+js\bootstrap-modal.js+js\bootstrap-tooltip.js+js\bootstrap-popover.js+js\bootstrap-scrollspy.js+js\bootstrap-tab.js+js\bootstrap-typeahead.js mockup\js\bootstrap.js

call .\node_modules\.bin\uglifyjs --ascii mockup\js\bootstrap.js > mockup\js\bootstrap.min.js

call node hogan/
