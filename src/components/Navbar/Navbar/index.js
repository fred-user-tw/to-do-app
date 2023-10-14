import React from "react";
import Bookmark from "@material-ui/icons/Bookmark";
import "./styles.scss";

export default function Navbar() {
  return (
    <div>
      <nav>
        <div className="container">
          <div>
            <Bookmark/>
            <h1>To Do - Grupo 6 </h1>
            <h1>Alex </h1>
            <h1>Carolina </h1>
            <h1>Pato</h1>
            <h1>Freddy</h1>
          </div>
          
        </div>
      </nav>
    </div>
  );
}
