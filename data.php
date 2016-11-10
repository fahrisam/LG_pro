<?php
$con = mysql_connect("localhost","root","");

if (!$con) {
  die('Could not connect: ' . mysql_error());
}

mysql_select_db("lgproject", $con);

$query = mysql_query("select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln1' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln2' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln3' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln4' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln5' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln6' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln7' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln8' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln9' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln10' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln11' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln12' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln13' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln14' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln15' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln16' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln17' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln18' 
union all 
select line_model.id_line, SUM(actual) as actual, plan_line as plan from line_model, line where line.id_line = line_model.id_line and line_model.id_line = 'ln19'");

$category = array();
$category['name'] = 'id_line';

$series1 = array();
$series1['name'] = 'plan';

$series2 = array();
$series2['name'] = 'actual';


while($r = mysql_fetch_array($query)) {
    $category['data'][] = $r['id_line'];
    $series1['data'][] = $r['plan'];
    $series2['data'][] = $r['actual'];   
}

$result = array();
array_push($result,$category);
array_push($result,$series1);
array_push($result,$series2);


print json_encode($result, JSON_NUMERIC_CHECK);

mysql_close($con);
?> 
