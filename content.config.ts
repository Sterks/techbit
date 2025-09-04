import { defineContentConfig, defineCollection } from '@nuxt/content'

export default defineContentConfig({
  // Configure your content collections here
  collections: {
    // Default collection to prevent fallback warning
    content: defineCollection({
      type: 'page',
      source: '**/*.md'
    })
    
    // Example: Blog posts
    // blog: defineCollection({
    //   type: 'page',
    //   source: 'blog/*.md'
    // }),
    
    // Example: Documentation  
    // docs: defineCollection({
    //   type: 'page',
    //   source: 'docs/**/*.md'
    // })
  },
  
  // Configure content directory (default is 'content')
  // dir: 'content',
  
  // Configure file extensions to watch
  // watch: ['content/**/*.md', 'content/**/*.json', 'content/**/*.yaml'],
  
  // Configure content transformations
  // transformers: []
})
