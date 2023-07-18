
// tax.js

// Export the tax data object
module.exports = {
  global: {
    db: {
      data: {
        tax: 0
      }
    }
  },
  updateTaxAmount: function(amount) {
    this.global.db.data.tax += amount;
  }
};





