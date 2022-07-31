local galaxyline = require('galaxyline')
local colors = require('galaxyline.theme').default
local condition = require('galaxyline.condition')
local section = galaxyline.section

section.left[1] = {
  RainbowRed = {
    provider = function() return '▊ ' end,
    highlight = { colors.blue,colors.bg }
  },
}

section.left[2] = {
  ViMode = {
    provider = function()
      local mode_color = {
        n = colors.red, i = colors.green,v=colors.blue,
        [''] = colors.blue,V=colors.blue,
        c = colors.magenta,no = colors.red,s = colors.orange,
        S=colors.orange,[''] = colors.orange,
        ic = colors.yellow,R = colors.violet,Rv = colors.violet,
        cv = colors.red,ce=colors.red, r = colors.cyan,
        rm = colors.cyan, ['r?'] = colors.cyan,
        ['!']  = colors.red,t = colors.red
      }

      vim.api.nvim_command('hi GalaxyViMode guifg=' .. mode_color[vim.fn.mode()])
      return '  '
    end,

    highlight = { colors.red,colors.bg, 'bold' },
  },
}

section.left[3] = {
  FileSize = {
    provider = 'FileSize',
    condition = condition.buffer_not_empty,
    highlight = { colors.fg,colors.bg }
  }
}

section.left[4] = {
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = { require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg },
  },
}

section.left[5] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = { colors.magenta,colors.bg, 'bold' }
  }
}

section.right[3] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = { 'NONE', colors.bg },
    highlight = { colors.violet,colors.bg, 'bold' },
  }
}

section.right[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = { colors.violet,colors.bg, 'bold' },
  }
}

section.right[8] = {
  RainbowBlue = {
    provider = function() return '  ▊' end,
    highlight = { colors.blue, colors.bg }
  },
}
