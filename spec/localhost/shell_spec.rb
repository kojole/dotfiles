require 'spec_helper'

describe 'shell' do
  describe user(Etc.getlogin) do
    it { should have_login_shell('/usr/local/bin/zsh') }
  end

  describe file(File.expand_path('.zgen/zgen.zsh', '~/')) do
    it { should be_file }
    it { should be_executable.by_user(Etc.getlogin) }
  end

  describe file(File.expand_path('.tmux/plugins/tpm/tpm', '~/')) do
    it { should be_file }
    it { should be_executable.by_user(Etc.getlogin) }
  end
end
