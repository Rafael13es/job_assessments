import NumberList from "@/components/NumberList.vue";
import {
    shallowMount
} from "@vue/test-utils";

describe("NumberList.vue", () => {
    let wrapper;

    afterEach(() => {
        wrapper = null;
    });

    it("renders", () => {
        wrapper = shallowMount(NumberList, {
            data() {
                return {
                    divisibleNumbers: [],
                    start: 3,
                    end: 103
                }
            }
        })
        expect(wrapper.exists()).toBe(true);
    });

    it("if pass other object that is not a number", () => {
        wrapper = shallowMount(NumberList, {
            data() {
                return {
                    divisibleNumbers: [],
                    start: "a",
                    end: "b"
                }
            }
        })
        expect(wrapper.find("h3").text()).toBe("The inputs are not numbers.");
    });

    it("if pass a null", () => {
        wrapper = shallowMount(NumberList, {
            data() {
                return {
                    divisibleNumbers: [],
                    start: null,
                    end: null
                }
            }
        })
        expect(wrapper.find("h3").text()).toBe("The inputs can't be nulls.");
    });

    it("if pass a 'end' is bigger than 'start'", () => {
        wrapper = shallowMount(NumberList, {
            data() {
                return {
                    divisibleNumbers: [],
                    start: 30,
                    end: 21
                }
            }
        })
        expect(wrapper.find("h3").text()).toBe("'end' have to be bigger than 'start'");
    });

    it("if pass negative number", () => {
        wrapper = shallowMount(NumberList, {
            data() {
                return {
                    divisibleNumbers: [],
                    start: 30,
                    end: -21
                }
            }
        })
        expect(wrapper.find("h3").text()).toBe("Inputs have to be positive.");
    });
})