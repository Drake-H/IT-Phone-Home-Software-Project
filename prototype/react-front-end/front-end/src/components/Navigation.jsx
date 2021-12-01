import React from "react";
import {NavLink} from "react-router-dom";

function Navigation(){
    return(
        <div className = "navigation">
            <nav className = "navbar mavbar-expand navbar-dark bg-dark">
                <div className = "container">
                    <NavLink className = "navbar-brand" to="/">
                        Valour Schedule Planner
                    </NavLink>
                </div>
                <ul className = "navbar-nav ml-auto">
                    <li className = "nav-item">
                    <NavLink className = "nav-link" to = "/">
                        Main Page
                    </NavLink>   
                    </li>
                    <li className = "nav-item">
                        <NavLink className = "nav-link" to="/Schedule Detail">
                            Schedule Detail
                        </NavLink>
                    </li>
                    <li className = "nav-item">
                        <NavLink className = "nav-link" to="/Schedule Planner">
                            Schedule Planner
                        </NavLink>
                    </li>
                </ul>
            </nav>
        </div>
    );
}
export default Navigation;