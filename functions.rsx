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
    changesetObject="{{ CreateUserForm1.data }}"
    editorMode="gui"
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
    id="updatequery"
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
  />
  <SqlQueryUnified
    id="getDataVersion"
    filterBy={'[{"key":"","value":"","operation":"="}]'}
    isMultiplayerEdited={false}
    query={include("./lib/getDataVersion.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
    tableName="comiccharacters"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getCharacterDetails"
    query={include("./lib/getCharacterDetails.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d7effefd-c902-45a3-ac1b-9f3665118cc1"
    warningCodes={[]}
  />
</GlobalFunctions>
