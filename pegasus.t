Prologue
--------
  $ cd ~/C\:\\Jenkins\\workspace\\OSG_Connect_Pegasus/unit-tests
  $ cp -a ~/C\:\\Jenkins\\workspace\\OSG_Connect_Pegasus/unit-tests/C\:\\Jenkins\\workspace\\OSG_Connect_Pegasus\\tutorial-pegasus ./tutorial-pegasus
  $ cd tutorial-pegasus
  $ cd wordfreq-workflow

submit
------
  $ sed 's:<profile namespace="condor" key="+ProjectName" >"con-train"</profile>:#commented out +ProjectName line:' submit > temp
  $ rm submit
  $ mv temp submit

  $ chmod +x submit

  $ cp ${TESTDIR}/pegasus_wait.sh .
  $ chmod +x pegasus_wait.sh

  $ ./submit | grep pegasus-status
| cut -f 8 -d " "
  $ ./pegasus_wait.sh /home/antonyu/data/workflows/antonyu/pegasus/wordfreq-workflow/*0500
  
  # Workflow summary:
  #   Summary of the workflow execution. It shows total
  #   tasks/jobs/sub workflows run, how many succeeded/failed etc.
  #   In case of hierarchical workflow the calculation shows the
  #   statistics across all the sub workflows.It shows the following
  #   statistics about tasks, jobs and sub workflows.
  #     * Succeeded - total count of succeeded tasks/jobs/sub workflows.
  #     * Failed - total count of failed tasks/jobs/sub workflows.
  #     * Incomplete - total count of tasks/jobs/sub workflows that are
  #       not in succeeded or failed state. This includes all the jobs
  #       that are not submitted, submitted but not completed etc. This
  #       is calculated as  difference between 'total' count and sum of
  #       'succeeded' and 'failed' count.
  #     * Total - total count of tasks/jobs/sub workflows.
  #     * Retries - total retry count of tasks/jobs/sub workflows.
  #     * Total+Retries - total count of tasks/jobs/sub workflows executed
  #       during workflow run. This is the cumulative of retries,
  #       succeeded and failed count.
  # Workflow wall time:
  #   The walltime from the start of the workflow execution to the end as 
  #   reported by the DAGMAN.In case of rescue dag the value is the
  #   cumulative of all retries.
  # Workflow cumulative job wall time:
  #   The sum of the walltime of all jobs as reported by kickstart.
  #   In case of job retries the value is the cumulative of all retries.
  #   For workflows having sub workflow jobs (i.e SUBDAG and SUBDAX jobs),
  #   the walltime value includes jobs from the sub workflows as well.
  # Cumulative job walltime as seen from submit side:
  #   The sum of the walltime of all jobs as reported by DAGMan.
  #   This is similar to the regular cumulative job walltime, but includes
  #   job management overhead and delays. In case of job retries the value 
  #   is the cumulative of all retries. For workflows having sub workflow 
  #   jobs (i.e SUBDAG and SUBDAX jobs), the walltime value includes jobs
  #   from the sub workflows as well.
  ------------------------------------------------------------------------------
  Type           Succeeded Failed  Incomplete  Total     Retries   Total+Retries
  Tasks          1000      0       0           1000      0         1000         
  Jobs           34        0       0           34        0         34           
  Sub-Workflows  0         0       0           0         0         0            
  ------------------------------------------------------------------------------
  
  Workflow wall time* (glob)
  Workflow cumulative job wall time* (glob)
  Cumulative job walltime as seen from submit side* (glob) 
  
  Summary* (glob)
  
   # jobs succeeded   :     34 (100.00%)
   # jobs failed      :      0 (0.00%)
   # jobs unsubmitted :      0 (0.00%)
  
verify output
------------- 
