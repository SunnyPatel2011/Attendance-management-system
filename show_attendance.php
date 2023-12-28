<?php
include("db.php");
include("attendance.php");

?>

<div class="panel panel-default">

<div class="panel panel-heading">

    <h2>

        <a class="btn btn-success" href="add.php">Add Student </a>
        <a class="btn btn-info pull-right" href="index.php"> Back </a>
    </h2>



    <div class="panel panel-body">
        <form action="index.php" method="Post">
            <table class="table table-hover">
                <tr>
                <th>#Serial Number</th><th>Student Name</th><th>Roll Name</th><th>Attendance Status</th>
</tr>
                <?php
                 $result=mysqli_query($con,"select * from attendance_records where date='$_POST[date]'");
                $serialnumber=0;
                $counter=0;
                    while($row=mysqli_fetch_array($result))
                    {
                        $serialnumber++;
                ?>
                <tr>
                    <td> <?php echo $serialnumber; ?> </td>
                    <td> <?php echo $row['student_name']; ?>
                   
                 </td>
                    <td> <?php echo $row['roll_number']; ?> 
                </td>
                    <td> 
                        <?php echo $row['attendance_status']; ?>
                    </td>
                    </tr>
                <?php  
                $counter++;
                    }
                    ?>
            </table>
           
        </form>


    </div>
</div>

</div>
</div>
