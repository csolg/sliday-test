::Spina::Theme.register do |theme|
  
  theme.name = 'main'
  theme.title = 'DB Sustainability'
 
  theme.page_parts = [{
    name:           'text',
    title:          'Text',
    partable_type:  'Spina::Text'
  },{
    name:           'document',
    title:          'Attached Document',
    partable_type:  'Spina::Attachment'
  },{
    name:           'structure',
    title:          'Structure',
    partable_type:  'Spina::Structure'
  }]
 
  theme.structures = [{
    name: 'structure',
    structure_parts: [{
      name:           'title',
      title:          'Title',
      partable_type:  'Spina::Line'
    },{
      name:           'attachment',
      title:          'Part of PDF',
      partable_type:  'Spina::Attachment'
    }]
  }]
 
  theme.view_templates = [{
    name:       'homepage',
    title:      'Homepage',
    page_parts: ['text','document','structure']
  }, {
    name: 'show',
    title:        'Default',
    description:  'A simple page',
    usage:        'Use for your content',
    page_parts:   ['text','document']
  }]
 
  theme.custom_pages = [{
    name:           'homepage',
    title:          'Homepage',
    deletable:      false,
    view_template:  'homepage'
  }]
 
end