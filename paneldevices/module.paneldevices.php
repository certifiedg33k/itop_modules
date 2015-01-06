<?php
// iTop module definition file
SetupWebPage::AddModule(
        __FILE__, 
        'paneldevices/',
        array(
                // Identification
                'label' => 'Panel Devices Module',
                'category' => 'business',

                // Setup
                'dependencies' => array(
                        'itop-config-mgmt/2.0.0',
                        'itop-datacenter-mgmt/2.0.0'
                ),
                'mandatory' => false,
                'visible' => true,

                // Components
                'datamodel' => array('model.paneldevices.php'),
                'webservice' => array(),
                'data.struct' => array(),
                'data.sample' => array(
                        'data.sample.paneldevices.xml',
                ),

                // Documentation
                'doc.manual_setup' => '', // hyperlink to manual setup documentation, if any
                'doc.more_information' => '', // hyperlink to more information, if any 

                // Default settings
                'settings' => array(),
        )
);

?>
