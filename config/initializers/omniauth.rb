Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'DrnumrRzhiMBdg19hGVPspk1Y', 'MOCTMj5URtW4xzy6650cDJKF9zt3LGRddpbrODg9ztf9MxpuKc'
  provider :facebook, '627646657323206', '10d83108a276b02ee08b78b8d314232e'
end