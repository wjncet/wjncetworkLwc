import { LightningElement, api, track } from "lwc";
export default class ForTrackApi extends LightningElement {
  field0 = {
    field0_1: "field0_1",
    field0_2: ""
  };

  @track field1 = "input field1 を入力してください";
  @track field2 = "input field2 を入力してください";

  handleChange(event) {
    const field = event.target.name;

    if (field === "forfield0") {
      this.field0 = {
        field0_1: event.target.value
      };
    } else if (field === "forfield1") {
      this.field1 = event.target.value;
      this.parm = {
        name: this.field1
      };
    } else if (field === "forfield2") {
      this.field2 = event.target.value;
    }
  }

  btnclickCnt = 1;
  handleClick() {
    this.btnclickCnt = this.btnclickCnt + 1;
  }

  myarrary = [
    {
      key: "item1",
      value: "item1 value"
    },
    {
      key: "item2",
      value: "item2 value"
    }
  ];

 get myarraryFunction() {
    return this.myarrary;
  }

  @api
  recordId;
  @api
  objectApiName;
}