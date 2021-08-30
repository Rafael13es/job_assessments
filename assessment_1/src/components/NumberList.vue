<template>
  <div id="number-list">
    <h1>Unordered List from 3 to 103</h1>
    <div id="number-array" v-for="number in divisibleNumbers" :key="number">
      <h3>{{ number }}</h3>
    </div>
  </div>
</template>

<script>
export default {
  name: "NumberList",
  data() {
    return {
      divisibleNumbers: [],
      start: 3,
      end: 103,
    };
  },
  created() {
    this.createUnorderedList(this.start, this.end);
  },
  methods: {
    createUnorderedList(start, end) {
      try {
        if (this.evaluateInput(start, end)) {
          Array(end - start + 1)
            .fill()
            .map((_, idx) => start + idx)
            .sort(function () {
              return 0.5 - Math.random();
            })
            .forEach(this.evaluateNumbers);
        }
      } catch (error) {
        this.divisibleNumbers[0] = "The inputs are not numbers.";
      }
    },
    evaluateNumbers(value) {
      try {
        if (value) {
          if (value % 5 == 0 && value % 3 == 0) {
            this.divisibleNumbers.push(value + " - three and five");
          } else if (value % 5 == 0) {
            this.divisibleNumbers.push(value + " - five");
          } else if (value % 3 == 0) {
            this.divisibleNumbers.push(value + " - three");
          }
        } else {
          this.divisibleNumbers[0] = "The value can't be null.";
        }
      } catch (error) {
        this.divisibleNumbers[0] = "The value can only be a number.";
      }
    },
    evaluateInput(start, end) {
      if (start === null || end === null) {
        this.divisibleNumbers[0] = "The inputs can't be nulls.";
        return false;
      }

      if (start < 0 || end < 0) {
        this.divisibleNumbers[0] = "Inputs have to be positive.";
        return false;
      }

      if (start > end) {
        this.divisibleNumbers[0] = "'end' have to be bigger than 'start'";
        return false;
      }

      return true;
    },
  },
};
</script>
