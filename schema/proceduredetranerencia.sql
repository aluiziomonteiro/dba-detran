/*Fazer uma procedure transferencia que passe como parâmetro a conta de origem
  a conta de destino e valor*/
delimiter $$
   drop procedure if exists sp_transferencia $$
   create procedure sp_transferencia
   (
		p_conta_origem varchar(10), 
		p_conta_destino varchar(10),
		p_valor decimal(10,2)
   )
   begin
      declare saldo_atual decimal(10,2);
      select saldo into saldo_atual from conta where num_conta = p_conta_origem;
      if (saldo_atual > p_valor) 
	  then
         update conta set saldo = saldo - p_valor where num_conta = p_conta_origem;
		 update conta set saldo = saldo + p_valor where num_conta = p_conta_destino;
         select num_conta, cliente, saldo, 'Débito por transferência ' as operacao
           from conta where num_conta = p_conta_origem
         union   
		 select num_conta, cliente, saldo, 'Crédito por transferência ' as operacao
           from conta where num_conta = p_conta_destino;
       else 
          select num_conta, cliente, saldo, 'Saldo insuficiente para efetuar a transferência ' as operacao
           from conta where num_conta = p_conta_origem;
		 
	 end if;
   end $$
delimiter ;   
          
select * from conta;  
call sp_transferencia('555-0', '500-0', 600.00);