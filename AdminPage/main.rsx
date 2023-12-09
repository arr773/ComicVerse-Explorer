<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    _disclosedFields={{ array: [] }}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <TextInput
      id="Searchbar"
      formDataKey="{{self.name}}"
      label="Name"
      labelPosition="top"
      placeholder="Enter value"
      showClear={true}
    >
      <Event
        event="change"
        method="refresh"
        params={{ ordered: [] }}
        pluginId="dataTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Text
      id="title"
      _disclosedFields={["color"]}
      style={{ ordered: [{ color: "rgb(23, 61, 36)" }] }}
      value="### Admin Panel"
    />
    <Modal
      id="modal1"
      _disclosedFields={{
        array: ["accent-background", "border-radius", "accent-foreground"],
      }}
      buttonText="Add Character"
      events={[]}
      modalHeight="488px"
      modalHeightType="auto"
      style={{
        ordered: [
          { "accent-background": "rgb(70, 166, 124)" },
          { "border-color": "" },
          { "border-radius": "8px" },
          { "accent-foreground": "rgb(255, 255, 255)" },
        ],
      }}
    >
      <Form
        id="form2"
        initialData=""
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle7"
            value="#### Form title"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <NumberInput
            id="numberInput2"
            currency="USD"
            disabled="true
"
            formDataKey="id"
            hidden="false

"
            inputValue={0}
            label="ID"
            labelPosition="top"
            placeholder="

"
            showSeparators={true}
            showStepper={true}
            value="{{newid.data.c}}"
          >
            <Event
              event="change"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="newid"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="submit"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="AddData"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </NumberInput>
          <TextInput
            id="textInput4"
            formDataKey="name"
            label="Name"
            labelPosition="top"
            placeholder="Enter value"
            required={true}
          />
          <Select
            id="select8"
            emptyMessage="No options"
            formDataKey="publisher"
            itemMode="static"
            label="Publisher"
            labelPosition="top"
            labels={null}
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            values={null}
          >
            <Option id="08076" label="Marvel" value="M" />
            <Option id="0141a" label="DC" value="D" />
          </Select>
          <NumberInput
            id="numberInput3"
            currency="USD"
            formDataKey="page_id"
            inputValue={0}
            label="Page ID"
            labelPosition="top"
            placeholder="Enter value"
            required={true}
            showSeparators={true}
            showStepper={true}
            value={0}
          />
          <EditableText
            id="editableText1"
            editIcon="bold/interface-edit-write-1"
            formDataKey="version"
            inputTooltip="`Enter` to save, `Esc` to cancel"
            label="Version"
            labelPosition="top"
            placeholder="Enter value"
            required={true}
          />
          <EditableText
            id="editableText2"
            editIcon="bold/interface-edit-write-1"
            formDataKey="url"
            inputTooltip="`Enter` to save, `Esc` to cancel"
            label="URL"
            labelPosition="top"
            placeholder="Enter value"
            required={true}
          />
          <Select
            id="select9"
            emptyMessage="No options"
            formDataKey="identity"
            itemMode="static"
            label="Identity"
            labelPosition="top"
            labels={null}
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            values={null}
          >
            <Option id="08076" label="Know to Authorities" value="K" />
            <Option id="0141a" label="Non dual" value="N" />
            <Option id="980b7" label="Not Assigned" value="NA" />
            <Option
              id="93c1a"
              disabled={false}
              hidden={false}
              label="Public"
              value="P"
            />
            <Option
              id="5f329"
              disabled={false}
              hidden={false}
              label="Secret"
              value="S"
            />
            <Option
              id="5f8eb"
              disabled={false}
              hidden={false}
              label="Unknown"
              value="U"
            />
          </Select>
          <Select
            id="select10"
            emptyMessage="No options"
            formDataKey="alignment"
            itemMode="static"
            label="Alignment"
            labelPosition="top"
            labels={null}
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            values={null}
          >
            <Option id="08076" label="Bad" value="B" />
            <Option id="0141a" label="Good" value="G" />
            <Option id="980b7" label="Reformed Criminals" value="R" />
            <Option
              id="f66c6"
              disabled={false}
              hidden={false}
              label="Not Assigned"
              value="NA"
            />
          </Select>
          <Select
            id="select11"
            emptyMessage="No options"
            formDataKey="sex"
            itemMode="static"
            label="Sex"
            labelPosition="top"
            labels={null}
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            values={null}
          >
            <Option id="08076" label="Agender" value="A" />
            <Option id="0141a" label="Female" value="F" />
            <Option id="980b7" label="Genderless" value="G" />
            <Option
              id="680ba"
              disabled={false}
              hidden={false}
              label="Genderfluid"
              value="GF"
            />
            <Option
              id="efb51"
              disabled={false}
              hidden={false}
              label="Male"
              value="M"
            />
            <Option
              id="3a8e4"
              disabled={false}
              hidden={false}
              label="Transgender"
              value="T"
            />
            <Option
              id="a5ff5"
              disabled={false}
              hidden={false}
              label="Not Assigned"
              value="NA"
            />
          </Select>
          <NumberInput
            id="numberInput4"
            currency="USD"
            disabled="True
"
            formDataKey="character_id"
            hidden="False"
            inputValue={0}
            label="Character ID"
            labelPosition="top"
            placeholder="Enter value"
            showSeparators={true}
            showStepper={true}
            value="{{newid.data.c}}"
          />
        </Body>
        <Footer>
          <Button
            id="formButton4"
            styleVariant="solid"
            submit={true}
            submitTargetId="form2"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="AddData"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="refresh"
          params={{ ordered: [] }}
          pluginId="dataTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="close"
          params={{ ordered: [] }}
          pluginId="modal1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Table
      id="dataTable"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ getrowscomic.data }}"
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
        size={69.546875}
      />
      <Column
        id="4ad9e"
        alignment="left"
        format="string"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={136.25}
      />
      <Column
        id="36447"
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
        id="4cd00"
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
        id="1457b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="version"
        label="Version"
        placeholder="Select option"
        position="center"
        size={156.078125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="abed7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="url"
        label="URL"
        placeholder="Enter value"
        position="center"
        size={271.75}
        summaryAggregationMode="none"
      />
      <Column
        id="66989"
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
        id="116fb"
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
        id="c298d"
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
        id="d92dd"
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
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updatecomic"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Form
      id="form1"
      initialData="{{ dataTable.selectedRow }}"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle6" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput
          id="textInput2"
          formDataKey="name"
          label="Name"
          labelPosition="top"
          placeholder="Enter value"
          value="{{dataTable.selectedRow.name}}"
        />
        <Select
          id="select3"
          emptyMessage="No options"
          formDataKey="publisher"
          itemMode="static"
          label="Publisher"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{dataTable.selectedRow.publisher}}"
          values={null}
        >
          <Option id="8ada2" label="DC" value="D" />
          <Option id="793ac" label="Marvel" value="M" />
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updatecomic"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <NumberInput
          id="numberInput1"
          currency="USD"
          formDataKey="page_id"
          inputValue={0}
          label="Page ID"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value="0{{dataTable.selectedRow.page_id}}"
        />
        <TextInput
          id="textInput3"
          formDataKey="url"
          label="URL"
          labelPosition="top"
          placeholder="retool.com"
          textBefore="https://"
          value="{{dataTable.selectedRow.url}}"
        />
        <Select
          id="select5"
          emptyMessage="No options"
          formDataKey="identity"
          itemMode="static"
          label="Identity"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{dataTable.selectedRow.identity}}
"
          values={null}
        >
          <Option
            id="8899a"
            disabled={false}
            hidden={false}
            label="Know to Authorities"
            value="K"
          />
          <Option
            id="bb9e7"
            disabled={false}
            hidden={false}
            label="Non Dual"
            value="N"
          />
          <Option
            id="ba4e6"
            disabled={false}
            hidden={false}
            label="Public"
            value="P"
          />
          <Option
            id="e4020"
            disabled={false}
            hidden={false}
            label="Secret"
            value="S"
          />
          <Option
            id="30b3f"
            disabled={false}
            hidden={false}
            label="Unknown"
            value="U"
          />
          <Option
            id="9051a"
            disabled={false}
            hidden={false}
            label="Not Assigned"
            value="NA"
          />
        </Select>
        <Select
          id="select6"
          emptyMessage="No options"
          formDataKey="alignment"
          itemMode="static"
          label="Alignment"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{dataTable.selectedRow.alignment}}
"
          values={null}
        >
          <Option
            id="9219b"
            disabled={false}
            hidden={false}
            label="Bad"
            value="B"
          />
          <Option
            id="857bf"
            disabled={false}
            hidden={false}
            label="Good"
            value="G"
          />
          <Option
            id="82a7a"
            disabled={false}
            hidden={false}
            label="Reformed Criminals"
            value="R"
          />
          <Option
            id="15175"
            disabled={false}
            hidden={false}
            label="Not Assigned"
            value="NA"
          />
        </Select>
        <Select
          id="select7"
          emptyMessage="No options"
          formDataKey="sex"
          itemMode="static"
          label="Sex"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="{{dataTable.selectedRow.sex}}
"
          values={null}
        >
          <Option
            id="6bc22"
            disabled={false}
            hidden={false}
            label="Agender"
            value="A"
          />
          <Option
            id="1575a"
            disabled={false}
            hidden={false}
            label="Female"
            value="F"
          />
          <Option
            id="a0a0f"
            disabled={false}
            hidden={false}
            label="Genderless"
            value="G"
          />
          <Option
            id="6f336"
            disabled={false}
            hidden={false}
            label="Gender Fluid"
            value="GF"
          />
          <Option
            id="91616"
            disabled={false}
            hidden={false}
            label="Male"
            value="M"
          />
          <Option
            id="21541"
            disabled={false}
            hidden={false}
            label="Transgender"
            value="T"
          />
          <Option
            id="77b39"
            disabled={false}
            hidden={false}
            label="Not Assigned"
            value="NA"
          />
        </Select>
      </Body>
      <Footer>
        <Button
          id="formButton3"
          style={{ ordered: [{ background: "rgb(70, 166, 124)" }] }}
          styleVariant="solid"
          submit={true}
          submitTargetId="form1"
          text="Update"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updatecomic"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Button
      id="button1"
      style={{ ordered: [{ background: "rgb(70, 166, 124)" }] }}
      styleVariant="solid"
      text="Delete {{dataTable.selectedRow.name}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="deleteRow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="refresh"
        params={{ ordered: [] }}
        pluginId="dataTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Frame>
</App>
