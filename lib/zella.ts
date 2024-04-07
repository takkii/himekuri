class Himekuri{
    OneDay: Date;
    OneYear: number;
    OneMonth: number;
    anyDays: number;
    anything_month: number;
    calc: number;
    week: string[];
    cl_wk: string;
    justnow: any;
    round_calc: any;

    constructor(){
    this.OneDay = new Date()
    this.OneYear= this.OneDay.getFullYear()
    this.anything_month = this.OneDay.getMonth()
    this.OneMonth = this.anything_month + 1
    this.anyDays = this.OneDay.getDate()

    if (this.OneYear % 4 == 0 && this.OneYear % 100 != 0 || this.OneYear % 400 == 0) {
        if (this.OneMonth == 2 && this.anyDays == 29) {
            this.calc = ((365 * this.OneYear + this.OneYear / 4 - this.OneYear / 100 + this.OneYear / 400 +
                     (306 * (this.OneMonth + 1)) / 10 + this.anyDays) - 426) % 7
        }
        else if (this.OneMonth == 11 || this.OneMonth == 12) {
            this.calc = ((365 * this.OneYear + this.OneYear / 4 - this.OneYear / 100 + this.OneYear / 400 + (306 * (this.OneMonth + 1)) / 10 + this.anyDays) - 427) % 7
        }
        else {
            this.calc = ((365 * this.OneYear + this.OneYear / 4 - this.OneYear / 100 + this.OneYear / 400 + (306 * (this.OneMonth + 1)) / 10 + this.anyDays) - 428) % 7
        }
    } else {
        this.calc = (this.OneYear + this.OneYear / 4 - this.OneYear / 100 + this.OneYear / 400 +
                    (13 * this.OneMonth + 8) / 5 + this.anyDays) % 7
    }

    this.round_calc = Math.round(this.calc)
    this.week = ["Sun", "Mon", "Tues", "Wedness", "Thurs", "Fri", "Satur", "Sun"]
    this.cl_wk = (this.week[this.round_calc])
}
        getHimekuri(){
            console.log(`${this.OneYear}/${this.OneMonth}/${this.anyDays} : ${this.cl_wk}day`)
        }
}

const himekuri = new Himekuri()
himekuri.getHimekuri()
