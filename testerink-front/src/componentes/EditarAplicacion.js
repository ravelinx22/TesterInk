import React, { Component } from 'react';
import {Link} from 'react-router-dom';
import axios from 'axios';


class EditarAplicacion extends Component {

    state={
        app:Object,
        redirectPage:false
    }

    // crear los refs
    tipoAppRef = React.createRef();
    nombreAppRef = React.createRef();
    urlAppRef = React.createRef();
    urlAppGithubRef = React.createRef();
    urlAppApkRef = React.createRef();
    versionAppRef = React.createRef();

    componentDidMount(){
        this.obtenerApp(this.props.idApp);
    }

    editarApp = (e) =>{
        e.preventDefault();
        
        const app = {
            name : this.nombreAppRef.current.value,
            type : this.tipoAppRef.current.value,
            url_test: this.urlAppRef.current.value,
            url_github : this.urlAppGithubRef.current.value,
            url_apk : this.urlAppApkRef.current.value,
            version : this.versionAppRef.current.value,
            _id :  this.props.idApp
        }

        this.props.editarAplicacion(app);

        this.setState({
            app : app,
            redirectPage : true
        })
    }

    obtenerApp=(id)=>{
        axios.get(`https://testerink-api.herokuapp.com/api/apps/${id}`).then(res => {
            if(res.status === 200){
                this.setState({
                    app : res.data.data
                })
            }
            
        })
    }

    

    mostrarFormulario = () => {
        
        if(!this.state.app) return null;
        console.log(this.state.app);
        const {_id, create_date, name, type, version, url_test, url_github, url_apk} = this.state.app;

        return (
            

            <div className="row">
                <div className="col-lg-12">
                    <h2 className="page-header">Editar Aplicación :: {name}</h2>
                </div>
                <div className="col">
                    <form onSubmit={this.editarApp}>
                        <div className="form-group">
                            <label htmlFor="tipoAplicacion">Tipo:</label>
                            <input type="text" className="form-control" id="tipoAplicacion" ref={this.tipoAppRef} defaultValue={type}/>
                        </div>
                        <div className="form-group">
                            <label htmlFor="nombreAplicacion">Nombre:</label>
                            <input type="text" className="form-control" id="nombreAplicacion" ref={this.nombreAppRef} defaultValue={name}/>
                        </div>
                        <div className="form-group">
                            <label htmlFor="versionAplicacion">Version:</label>
                            <input type="text" className="form-control" id="versionAplicacion" ref={this.versionAppRef} defaultValue={version}/>
                        </div>
                        <div className="form-group">
                            <label htmlFor="urlAplicacion">URL (pruebas):</label>
                            <input type="text" className="form-control" id="urlAplicacion" ref={this.urlAppRef} defaultValue={url_test}/>
                        </div>
                        <div className="form-group">
                            <label htmlFor="urlAppGithub">URL GitHub:</label>
                            <input type="text" className="form-control" id="urlAppGithub" ref={this.urlAppGithubRef} defaultValue={url_github}/>
                        </div>
                        <div className="form-group">
                            <label htmlFor="urlAppApk">URL APK:</label>
                            <input type="text" className="form-control" id="urlAppApk" ref={this.urlAppApkRef} defaultValue={url_apk}/>
                        </div>

                        <button className="btn btn-primary" id="enviar" type="submit">Guardar</button>
                        <Link to={`/conf/apps/`} className="btn btn-danger">Cancelar</Link>
                    </form>
                </div>
            </div>
        );
    }
    
    render() { 
        return ( 
            <React.Fragment>
                {this.mostrarFormulario()}
            </React.Fragment>
         );
    }
}
 
export default EditarAplicacion;
