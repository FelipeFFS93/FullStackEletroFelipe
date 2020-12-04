export default function Pedidos() {
    return (
        <div>
            <div className="d-flex justify-content-center pt-4">
                <form method="post" className="formContatos w-50">
                    <div className="form-group">
                        <label>Cliente</label>
                        <input className="form-control" name="nomeCliente"type="text" />
                    </div>
                    <div className="form-group">
                        <label>Endereço</label>
                        <input className="form-control" name="endereco"type="text" />
                    </div>
                    <div className="form-group">
                         <label for="exampleFormControlTextarea1">Pedido</label>
                        <textarea className="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <div className="d-flex justify-content-center pb-3">
                    <input className="enviar bg-light mt-1 btn-lg" type="submit" />
                    </div>
                </form>
            </div>   
        </div>    
    )
}