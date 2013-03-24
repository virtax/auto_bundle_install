require 'test/unit'
require 'stringio'

class AutoBundleInstallTest < Test::Unit::TestCase
  def test_bundle_install
    out = StringIO.new
    begin
      $stdout = out
      $stderr = out
      Dir.chdir('test')
      File.open('Gemfile', 'w') {|f| f.write('# test 1') }
      require 'auto_bundle_install'
      sleep(1)
      File.open('Gemfile', 'w') {|f| f.write('# test 2') }
      sleep(1)
      Dir.chdir('..')
      $stdout.flush
    ensure
      $stdout = STDOUT
      $stderr = STDERR
    end
    puts out.string
    assert (out.string.match 'Your bundle is complete'), 'Error'+out.string
  end
end