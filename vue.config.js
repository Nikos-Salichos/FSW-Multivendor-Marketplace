const path = require('path');
const VueAutoRoutingPlugin = require('./plugins/vue-auto-routing-webpack-plugin.js');

module.exports = {
    transpileDependencies: ['vuetify'],
    productionSourceMap: false,
    configureWebpack: function(config) {
        // config.plugins.delete('preload') // TODO: need test
        // config.plugins.delete('prefetch') // TODO: need test
        config.resolve = {
            alias: {
                '@': path.resolve(__dirname, 'src')
            }
        };
        switch (process.env.NODE_ENV) {
            case 'development':
                config.devtool = 'cheap-source-map';
                break;
            case 'production':
                // config.optimization.minimizer=[];
                // const terserWebpackPlugin = config.optimization.minimizer[0];
                // const terserOptions = terserWebpackPlugin.options.terserOptions;
                // terserOptions.output.comments = null;
                break;
        }
        config.plugins.push(
            new VueAutoRoutingPlugin({
                pages: 'src/pages',
                nested: true
            })
        );
    },
    chainWebpack: function(config) {
        config.externals({
            MyTrc: 'MyTrc'
        });
        // console.log(config.plugins)
        config.plugins.delete('preload');
        config.plugins.delete('prefetch');
    },
    publicPath: process.env.NODE_ENV === 'production' ? '' : '/',
    outputDir: '../app'
};
