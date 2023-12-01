module.exports.GetFaker = function () {
    const { faker } = require('@faker-js/faker/locale/en')
    return faker;
}
