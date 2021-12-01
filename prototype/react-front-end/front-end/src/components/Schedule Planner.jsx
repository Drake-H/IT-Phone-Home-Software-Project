import React from "react";
import Box from '@material-ui/core/Box';

function Schedule_Planner(){
    return (
        <div className = "Schedule Planner">
            <div class = "container">
                <div class = "row align items-center my-5">
                    <div class ="col-lg-6 container">
                        <p>Schedule stuff here</p>
                    </div>
                    <div class="col-lg-3">
                        <h1 class="font-weight-light">Schedule Planner</h1>
                        <p>
                            Detailed view of the currently selected schedule. Additional content to be added.
                        </p>
                        
                    </div>
                    <div class="col-lg-3">
                        <p>Schedule content goes here</p>
                    </div>
                </div>
            </div>
        </div>
    );
}
export default Schedule_Planner;