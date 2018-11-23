import React, { Component } from 'react';


class CrearAplicacion extends Component {

    // crear los refs
    tipoAppRef = React.createRef();
    nombreAppRef = React.createRef();
    urlAppRef = React.createRef();
    urlAppGithubRef = React.createRef();
    urlAppApkRef = React.createRef();
    versionAppRef = React.createRef();

    crearApp = (e) =>{
        e.preventDefault();
        
        const app = {
            name : this.nombreAppRef.current.value,
            type : this.tipoAppRef.current.value,
            version: this.versionAppRef.current.value,
            url_test: this.urlAppRef.current.value,
            url_github : this.urlAppGithubRef.current.value,
            url_apk : this.urlAppApkRef.current.value
        }

        this.props.crearAplicacion(app);

        //limpiar formulario
        e.currentTarget.reset();
    }
    
    render() { 
        return ( 
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Nueva Aplicación</h2>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <form onSubmit={this.crearApp}>
                            <div class="form-group">
                                <label htmlFor="tipoAplicacion">Tipo:</label>
                                <input type="text" class="form-control" id="tipoAplicacion" ref={this.tipoAppRef}/>
                            </div>
                            <div class="form-group">
                                <label htmlFor="nombreAplicacion">Nombre:</label>
                                <input type="text" class="form-control" id="nombreAplicacion" ref={this.nombreAppRef}/>
                            </div>
                            <div class="form-group">
                                <label htmlFor="versionAplicacion">Version:</label>
                                <input type="text" class="form-control" id="versionAplicacion" ref={this.versionAppRef}/>
                            </div>
                            <div class="form-group">
                                <label htmlFor="urlAplicacion">URL (pruebas):</label>
                                <input type="text" class="form-control" id="urlAplicacion" ref={this.urlAppRef}/>
                            </div>
                            <div class="form-group">
                                <label htmlFor="urlAppGithub">URL GitHub:</label>
                                <input type="text" class="form-control" id="urlAppGithub" ref={this.urlAppGithubRef}/>
                            </div>
                            <div class="form-group">
                                <label htmlFor="urlAppApk">URL APK:</label>
                                <input type="text" class="form-control" id="urlAppApk" ref={this.urlAppApkRef}/>
                            </div>

                            <button class="btn btn-primary" id="enviar" type="submit">Crear</button>
                        </form>
                    </div>
                </div>
            </div>
         );
    }
}
 
export default CrearAplicacion;
