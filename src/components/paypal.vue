<template>
    <paypal-buttons
        [props]="{
          createOrder: createOrder,
          onApprove: onApprove
      }"
    ></paypal-buttons>
</template>

<script>
import config from '@/config';
const PayPalButton = paypal.Buttons.driver("vue", window.Vue);
export default {
    components: {
      "paypal-buttons": PayPalButton,
    },
    computed: {
        createOrder(){}
    },
    mounted() {
        this.loadScript(this.generateButton);
    },
    methods: {
        loadScript(loaded) {
            const paypalScript = document.createElement('script');
            paypalScript.setAttribute(
                'src',
                paypalScript.setAttribute('src', 'https://www.paypal.com/sdk/js?client-id=' + config.paypalclientid);
            );
            paypalScript.async = true;
            paypalScript.defer = true;
            paypalScript.onload = loaded;
            document.head.appendChild(paypalScript);
        },
        generateButton() {
            const paypal = window.paypal;
            const button = Object.assign({
                createOrder: this.createOrder,
                onApprove: this.onApprove
            });
            paypal.Buttons(button).render(this.$el);
        }
    }
};
</script>
