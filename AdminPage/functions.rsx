<GlobalFunctions>
  <SqlQueryUnified
    id="getRows"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query={include("./lib/getRows.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="addNewRow"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{ form2.data }}"
    editorMode="gui"
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="comiccharacters"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowBlockPluginId={null}
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "index" },
                { indexType: "display" },
                { index: "{{dataTable.data.length-1}}" },
                { key: null },
              ],
            },
          },
        ],
      }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateRow"
    actionType="UPDATE_BY"
    changesetIsObject={true}
    changesetObject="{{ UpdateUserForm1.data }}"
    doNotThrowOnNoOp={true}
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ dataTable.selectedRow.id }}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="users"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowBlockPluginId={null}
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "key" },
                { indexType: "display" },
                { index: null },
                { key: "{{ dataTable.selectedRow.id }}" },
              ],
            },
          },
        ],
      }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="AddData"
    actionType="BULK_UPSERT_BY_KEY"
    bulkUpdatePrimaryKey="id"
    changeset={
      '[{"key":"name","value":""},{"key":"publisher","value":""},{"key":"page_id","value":""},{"key":"version","value":""},{"key":"url","value":""},{"key":"identity","value":""},{"key":"alignment","value":""},{"key":"sex","value":""},{"key":"id","value":""},{"key":"character_id","value":""}]'
    }
    changesetIsObject={true}
    changesetObject="{{}}"
    editorMode="gui"
    isMultiplayerEdited={false}
    records="{{[form2.data]}}"
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
    runWhenModelUpdates={false}
    tableName="comiccharacters"
  />
  <SqlQueryUnified
    id="getrowscomic"
    query={include("./lib/getrowscomic.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updatecomic"
    actionType="UPDATE_BY"
    changesetIsObject={true}
    changesetObject="{{form1.data}}"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{dataTable.selectedRow.id}}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
    runWhenModelUpdates={false}
    tableName="comiccharacters"
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "key" },
                { indexType: "display" },
                { index: null },
                { key: "{{dataTable.selectedRow.id}}" },
              ],
            },
          },
        ],
      }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="numberInput1SubmitHandler"
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
  />
  <SqlQueryUnified
    id="deleteRow"
    actionType="DELETE_BY"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{dataTable.selectedRow.id}}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
    runWhenModelUpdates={false}
    tableName="comiccharacters"
  />
  <SqlQueryUnified
    id="newid"
    query={include("./lib/newid.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
    resourceTypeOverride=""
    warningCodes={[]}
  />
</GlobalFunctions>
