import React, { Component } from 'react';
import { Button, Header, Icon, Image, Modal, Item } from 'semantic-ui-react'


class SetPrueba extends Component {
    state = {  }
    render() { 
        const {_id, title, aplication_id, type_test, tests} = this.props.info;
        let nombre=null;
        this.props.apps.forEach(app => {
            if(app._id==aplication_id){
                nombre = app.name + "@" + app.version;
            }
        });

        const inlineStyle = {
            modal : {
              marginTop: '0px !important',
              marginLeft: 'auto',
              marginRight: 'auto'
            }
          };
        
       
        return ( 
        
            <tr>
                <td>{_id}</td>
                <td>{title}</td>
                <td>{nombre}</td>
                <td>{type_test}</td>
                <td>
                    <button onClick={() => this.props.ejecutarSetPrueba(this.props.info)} type="button" className="btn btn-primary btn-space">Ejecutar</button>
                    <button onClick={() => this.props.programarSetPrueba()} type="button" className="btn btn-success btn-space">Programar</button>
                    <button onClick={() => this.props.eliminarSetPrueba(_id)} type="button" className="btn btn-danger btn-space">Eliminar</button>
                    <Modal trigger={<Button>Ver</Button>} style={inlineStyle.modal}>
                        <Modal.Header>Lista de pruebas</Modal.Header>
                        <Modal.Content image scrolling>
                        
                            <Modal.Description>
                                <Header>{title}<br/><h4>{nombre}</h4></Header>
                                
                                <Item.Group>
                                    {tests.map((i) => {
                                        const {apk_path, description, execution_id, file, generate_data, package_name, run_vrt, screenshots, type, type_test} = i;
                                        
                                        return (
                                            <Item key={description}>
                                                <Item.Image size='tiny' src='/imagenes/result-clipboard.png' />

                                                <Item.Content>
                                                    <Item.Header as='a'>{description}</Item.Header>
                                                    <Item.Meta>Descripción</Item.Meta>
                                                    <Item.Description>
                                                
                                                        {type === 'e2e' &&
                                                            <span>Tipo de prueba: End To End, <br/></span>
                                                        }
                                                        {type === 'bdt' &&
                                                            <span>Tipo de prueba: Behavior Driven Testing, <br/></span>
                                                        }
                                                        {type === 'random' &&
                                                            <span>Tipo de prueba: Random Testing, <br/></span>
                                                        }
                                                        {type === 'headless_small_chrome' &&
                                                            <span>Tipo de prueba: Headless Small Chrome, <br/></span>
                                                        }
                                                        {type === 'headless_medium_chrome' &&
                                                            <span>Tipo de prueba: Headless Medium Chrome, <br/></span>
                                                        }
                                                        {type === 'headless_large_chrome' &&
                                                            <span>Tipo de prueba: Headless Large Chrome, <br/></span>
                                                        }
                                                        {type === 'headless_firefox' &&
                                                            <span>Tipo de prueba: Headless Firefox, <br/></span>
                                                        }
                                                        {type === 'mutation' &&
                                                            <span>Tipo de prueba: Mutation Testing, <br/></span>
                                                        }
                                                        {i.type_test === 'Movil' &&
                                                            <span>Paquete de aplicación: {package_name},<br/></span>
                                                        }
                                                        {type !== 'mutation' &&
                                                            <span>Screenshots: {screenshots},<br/></span>
                                                        }
                                                        {type !== 'mutation' &&
                                                            <span>Ejecuta VRT: {run_vrt? 'Si':'No'},<br/></span>
                                                        }
                                                        {type === 'bdt' &&
                                                            <span>Generación de datos: {generate_data? 'Si':'No'},<br/></span>
                                                        }
                                                        {execution_id && 
                                                            <span>Ejecución VRT Inicial: {execution_id},<br/></span>
                                                        }
                                                        
                                                        {i.type_test === 'Movil' &&
                                                            <span>Ruta APK: {apk_path}<br/></span>
                                                        }
                                                    </Item.Description>
                                                </Item.Content>
                                            </Item>
                                        );
                                    })}
                                </Item.Group>
                            </Modal.Description>
                        </Modal.Content>
                    </Modal>
                </td>
            </tr>
         );
    }
}
 
export default SetPrueba;