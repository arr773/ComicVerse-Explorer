<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    _disclosedFields={{ array: [] }}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Navigation
      id="navigation"
      itemMode="static"
      src="https://retool-templates.s3.us-west-2.amazonaws.com/app-templates/admin-panel-logo.png"
      style={{
        ordered: [
          { highlightBackground: "" },
          { highlightText: "rgb(70, 166, 124)" },
          { hoverText: "" },
        ],
      }}
    >
      <Option
        id="1a78b"
        appTarget="2114ed2e-dc6f-11ed-8b27-abe90d00641d"
        itemType="app"
        key="e94bb"
      />
      <Option
        id="16313"
        appTarget="9a90eacc-9254-11ee-b12d-ab713060df2d"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="app"
        key="8e770"
      />
    </Navigation>
    <TextInput
      id="Searchbar"
      formDataKey="{{self.name}}"
      label="Name"
      labelPosition="top"
      placeholder="Enter value"
      showClear={true}
    />
    <Text
      id="text1"
      value="### Welcome to the ComicVerse"
      verticalAlign="center"
    />
    <Table
      id="dataTable"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ getRows.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "dee66", direction: "desc" } }]}
      enableSaveActions={true}
      primaryKeyColumnId="dee66"
      searchTerm="{{Searchbar.value}}"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      style={{
        border: "rgb(204, 204, 204)",
        borderRadius: "8px",
        accent: "rgb(70, 166, 124)",
      }}
      templatePageSize={20}
    >
      <Column
        id="dee66"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={133.546875}
      />
      <Column
        id="4ad9e"
        alignment="left"
        format="string"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={142.59375}
      />
      <Column
        id="5af6b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="publisher"
        label="Publisher"
        placeholder="Select option"
        position="center"
        size={70.65625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f0759"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="page_id"
        label="Page ID"
        placeholder="Enter value"
        position="center"
        size={60.078125}
        summaryAggregationMode="none"
      />
      <Column
        id="50ceb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="version"
        label="Version"
        placeholder="Select option"
        position="center"
        size={151.375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b1afe"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="url"
        label="URL"
        placeholder="Enter value"
        position="center"
        size={255.140625}
        summaryAggregationMode="none"
      />
      <Column
        id="28dea"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="identity"
        label="Identity"
        placeholder="Select option"
        position="center"
        size={60.453125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7b1da"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="alignment"
        label="Alignment"
        placeholder="Select option"
        position="center"
        size={75.515625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="cbd5b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sex"
        label="Sex"
        placeholder="Select option"
        position="center"
        size={42.765625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="9a7ba"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="character_id"
        label="Character ID"
        placeholder="Enter value"
        position="center"
        size={88.96875}
        summaryAggregationMode="none"
      />
    </Table>
    <Table
      id="CharacterDetail"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getCharacterDetails.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="3337b"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="3337b"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="character_id"
        label="Character ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8ce27"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="eyes"
        label="Eyes"
        placeholder="Select option"
        position="center"
        size={139.6875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="2258e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="hair"
        label="Hair"
        placeholder="Select option"
        position="center"
        size={135.703125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="85e9b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="gsm"
        label="Gsm"
        placeholder="Select option"
        position="center"
        size={109.421875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="12072"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={216.6875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a52c6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="appearances"
        label="Appearances"
        placeholder="Enter value"
        position="center"
        size={194.15625}
        summaryAggregationMode="none"
      />
      <Column
        id="c9924"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="first_appearance_month"
        label="First appearance month"
        placeholder="Select option"
        position="center"
        size={329.25}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="e1e2d"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="first_appearance_year"
        label="First appearance year"
        placeholder="Enter value"
        position="center"
        size={142.25}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="CharacterDetail"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="CharacterDetail"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getCharacterDetails"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </Frame>
</App>
