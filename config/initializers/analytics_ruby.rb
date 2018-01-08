Analytics = Segment::Analytics.new({
    write_key: '5qcYzPX8dW8G4u0Dlv103F809TjlPxAA',
    on_error: Proc.new { |status, msg| print msg }
})
