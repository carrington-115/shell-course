const initialPage = (req, res) => {
  res.status(200).json({ success: true, data: [] });
};

module.exports = { initialPage };
