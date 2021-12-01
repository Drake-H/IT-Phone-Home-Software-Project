import React from "react";

function Main_Page(){
    return (
        <div className = "Main Page">
            <div class = "container">
                <div class = "row align items-center my-5">
                    <div class ="col-lg-7">
                        <img
                        class="img-fluid rounded mb-4 mb-lg-0"
                        src="http://placehold.it/900x400"
                        alt=""
                        ></img>
                    </div>
                    <div class="col-lg-5">
                        <h1 class="font-weight-light">Main Page</h1>
                        <p>
                            Home page of the Valour Schedule Planner. Additional content to be added.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    );
}
export default Main_Page