import pandas as pd

def model(dbt, session):

    dbt.config(materialized="table",
        submission_method="all_purpose_cluster",
        create_notebook=True,
        cluster_id="0426-154059-dox4kjfg",
        enabled=False
    )

    notebook = '/Shared/dbt_python_model/external_storage/example/linked_notebook_test'

    dbutils.notebook.run(notebook, 600)
  
    final_df = dbt.ref("my_first_dbt_model")
    
    return final_df