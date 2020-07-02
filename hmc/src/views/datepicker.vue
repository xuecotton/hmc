<template>
  <div>
    <mt-datetime-picker
      v-model="pickerVisible"
      ref="pickerData"
      type="date"
      year-format="{value} 年"
      month-format="{value} 月"
      date-format="{value} 日"
      @confirm="handleConfirm"
      :startDate="startDate"
    ></mt-datetime-picker>

    <mt-button @click="dataClick">show</mt-button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      pickerVisible: "",
      startDate: new Date(),
      time: ""
    };
  },
  methods: {
    rentInformat() {
      this.$router.push("/rentInformation");
    },
    dataClick() {
      this.$refs.pickerData.open(); // 触发
      // this.$refs.pickerData.close() ; // 关闭
    },
    handleConfirm(val) {
      // console.log(val,this.pickerVisible)
      this.time = val;
    }
  }
};
</script>