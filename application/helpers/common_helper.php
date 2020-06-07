<?php 
function x($data=null){
	echo"<pre>";
    print_r($data);exit;
}

function y($data=null,$show=true){
    if($show){
        echo"<pre>";
        print_r($data);
    }
}