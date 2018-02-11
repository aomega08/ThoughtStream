module MetaDataUtils
  class << self
    include Rails.application.routes.url_helpers

    def post_meta(post)
      base = {
        title: post.meta_title.presence || post.title,
        description: post.meta_description,
        article: {
          section: 'Technology',
          published_time: post.published_at.iso8601,
          modified_time: post.updated_at.iso8601
        }
      }

      base.merge!(twitter_metas(post)) if Settings.social.twitter_username
      base.merge!(facebook_metas(post)) if Settings.social.facebook_app_id
      base
    end

    def twitter_metas(post)
      {
        twitter: {
          card: 'summary',
          site: Settings.social.twitter_username,
          title: post.title,
          description: post.meta_description,
          domain: Settings.host
          # image: post.main_medium&.file&.url(:large)
        }
      }
    end

    def facebook_metas(post)
      {
        fb: {
          app_id: Settings.social.facebook_app_id
        },
        og: {
          title: post.title,
          description: post.meta_description,
          # image: post.main_medium&.file&.url(:large),
          url: post_url(post),
          site_name: Settings.site_name,
          locale: I18n.locale,
          type: 'article'
        }
      }
    end

    def website_jsonld
      {
        '@id': root_url,
        '@context': 'https://schema.org',
        '@type': 'WebSite',
        url: root_url,
        name: Settings.site_name,
        description: Settings.tagline
      }
    end

    def post_jsonld(post)
      data = {
        '@id': post_url(post),
        '@context': 'https://schema.org',
        '@type': 'BlogPosting',
        headline: post.title,
        description: post.meta_description,
        datePublished: post.published_at.iso8601,
        dateModified: post.updated_at.iso8601,
        mainEntityOfPage: 'True',
        author: {
          '@type': "Person",
          # name: "Francesco Boffa",
          # url: "https://francescoboffa.com"
        },
        publisher: {
          '@type' => "Organization",
          name: Settings.site_name,
          # logo: {
          #   '@type' => "imageObject",
          #   url: asset_url('logo.png')
          # }
        },
        articleBody: post.content
      }
    end
  end
end
