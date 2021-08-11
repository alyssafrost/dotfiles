# Defined via `source`
function configs --wraps='config status' --description 'alias configs=config status'
  config status $argv; 
end
