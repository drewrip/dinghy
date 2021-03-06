package main

import (
	"github.com/drewrip/dinghy/testing/raft"
	"log"
	"database/sql"
	"flag"
	_ "github.com/mattn/go-sqlite3"
	"fmt"
	"time"
)

func main(){
	var initial bool
	var nodenum int
	flag.BoolVar(&initial, "i", false, "Whether to create the necessary rows of the database")
	flag.IntVar(&nodenum, "n", -1, "Number of nodes to run test on ")
	flag.Parse()
	db, err := sql.Open("sqlite3", "../data/dinghyvanilla.db")
	if err != nil {
		log.Fatal("Failed to open database:", err)
	}
	defer db.Close()
	create, _ := db.Prepare("CREATE TABLE IF NOT EXISTS benchmarks (Nodes INTEGER, Time REAL, Trials INTEGER)")
	create.Exec()

	if initial{
		for i:=3; i<=51; i+=2{
			newNodeRow, err :=db.Prepare("INSERT INTO benchmarks (Nodes, Time, Trials) VALUES (?, ?, ?)")
			if err != nil{
				log.Fatal(err)
			}
			newNodeRow.Exec(i, 0, 0)	
		}
		fmt.Printf("Initialized Database\n")
	}
	if nodenum != -1{
		cl:=raft.MakeCluster(nodenum, true, nil, 5, true)
		time.Sleep(1500 * time.Millisecond)
		cl.StartRetarget(1000 * time.Millisecond)
		testTime := cl.Test(10000 * time.Millisecond)
		fmt.Printf("%d\t%d\t%d\n", nodenum, testTime, 1)
		/*updatedb, err := db.Prepare("UPDATE benchmarks SET Time = Time + ?, Trials = Trials + ? WHERE Nodes = ?")
		if err != nil{
			log.Fatal(err)
		}
		updatedb.Exec(testTime, 1, nodenum)
		*/
	}

}