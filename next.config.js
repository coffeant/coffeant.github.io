const withNextra = require('nextra')('nextra-theme-blog', './theme.config.js')

/**
 * 静态导出,部署到 GitHub Pages 用户主站 https://coffeant.github.io/
 * coffeant.github.io 是 user site,Pages 从仓库根路径提供服务,无需 basePath
 * 本地预览: npm run dev
 */
module.exports = withNextra({
  output: 'export',
  images: { unoptimized: true },
  trailingSlash: true
})
