function t = exercicio1(func,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t = zeros(20, 1);
t(1) = x0;
erro = zeros(imax, 1);

for ii = 1:imax %usar ii e n i pq i eh imaginarium
  if ii ~= 1
    erro(ii) = abs(t(ii) - t(ii-1))/t(ii); %abs é modulo
    if erro(ii) < es
      break
    endif
  endif
  t(ii+1) = t(ii) - func(t(ii))/func_d(t(ii)); %; faz sumir
endfor
  last_index = find(t, 1, 'last');
  resultado = t(last_index)

  erro = erro(ii)

  resultado_interacoes = ii
t = resultado; % alterar

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction