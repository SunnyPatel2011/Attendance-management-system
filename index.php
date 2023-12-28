<?php
include("db.php");
include("attendance.php");
$flag=0;
$update=0;

if(isset($_POST['submit']))

{
    $date=date("Y-m-d");
    
$records=mysqli_query($con,"select * from attendance_records where date='$date'");
$num=mysqli_num_rows($records);

if($num)
{
    foreach($_POST['attendance_status'] as $id=>$attendance_status)

    {
        $student_name=$_POST['student_name'] [$id];
        $roll_number=$_POST['roll_number'] [$id];
    
    $result=mysqli_query($con,"update attendance_records set student_name='$student_name',roll_number='$roll_number',attendance_status='$attendance_status',date='$date'
    where date='$date';
    ");
    if($result)
    {
     $update=1;
    }

    }
    
}
else
{
foreach($_POST['attendance_status'] as $id=>$attendance_status)

{
    $student_name=$_POST['student_name'] [$id];
    $roll_number=$_POST['roll_number'] [$id];

$result=mysqli_query($con,"insert into attendance_records(student_name,roll_number,attendance_status,date)values('$student_name','$roll_number','$attendance_status','$date')");
if($result)
{
     $flag=1;
}
}

}

}
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  <script type="text/javascript">
  function preventBack(){window.history.forward()};
  setTimeout("preventBack()",0);
  window.onunload=function(){null;}
</script>
<style>
i{
justify-content: left;
position: absolute;
left: 10px;
top: 20px;
color: black;
}
</style>
</head>
<body>
    <a href="loginform.html"><i class="fa fa-arrow-circle-o-left fa-2x"></i></a>
    

</body>
</html>

<!--------------------- PHP ---------------------->
<div class="panel panel-default">

<div class="panel panel-heading">

    <h2>

        <a class="btn btn-success" href="add.php">Add Student </a>
        <a class="btn btn-info pull-right" href="view_all.php">View All </a>
       
        
    </h2>
<?php if($flag) { ?>
<div class="alert alert-success">
Attendance Date Insert successfully
</div>
<?php } ?>

<?php if($update) { ?>
<div class="alert alert-success">
Student Attendance updated successfully.
</div>
<?php } ?>
<h3>

    <div class="well text-center">Date:<?php echo date("d-m-Y"); ?> </div>
</h3>

    <div class="panel panel-body">
        <form action="index.php" method="Post">
            <table class="table table-striped">
                <tr>
                <th>#Serial Number</th><th>Student Name</th><th>Roll Name</th><th>Attendance Status</th>
</tr>
                <?php $result=mysqli_query($con,"select * from attendance");
                $serialnumber=0;
                $counter=0;
                    while($row=mysqli_fetch_array($result))
                    {
                        $serialnumber++;
                ?>
                <tr>
                    <td> <?php echo $serialnumber; ?> </td>
                    <td> <?php echo $row['student_name']; ?>
                    <input type="hidden" value="<?php echo $row['student_name']; ?>" name="student_name[]">
                 </td>
                    <td> <?php echo $row['roll_number']; ?> 
                    <input type="hidden" value="<?php echo $row['roll_number']; ?>" name="roll_number[]">
                </td>
                    <td> 
                        <input type="radio" name="attendance_status[<?php echo $counter; ?>]" value="Present" 
                        <?php if(isset($_POST['$attendance_status'][$counter]) && $_POST['$attendance_status'][$counter]=="Present"){
                            echo "checked=checked";
                        }
                        ?>
                        required>Present
                        <input type="radio" name="attendance_status[<?php echo $counter; ?>]" value="Absent" 
                        <?php if(isset($_POST['$attendance_status'][$counter]) && $_POST['$attendance_status'][$counter]=="Absent"){
                            echo "checked=checked";
                        }
                        ?>
                        required>Absent
                
                </td>
                    </tr>
                <?php  
                $counter++;
                }
            
                    ?>
            </table>
            <input type="submit" name="submit" value="submit" class="btn btn-primary">
        </form>


    </div>
</div>

</div>
</div>
