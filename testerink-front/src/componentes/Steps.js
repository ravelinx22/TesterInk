import React, { Component } from 'react';
import { Form, Button, Grid, Message, List, Divider, Step, Checkbox, Header, Icon, Segment, Item, Image} from 'semantic-ui-react';
import { states } from './States.js';
import { exec } from 'child_process';

export class Inicial extends Component {
    constructor(props) {
        super(props);
        this.state = {
            title:null,
            aplicacion: null,
            aplicaciones: [],
            opcionesApps: [],
            errors: []
        };
        this._onChange = this._onChange.bind(this);
        this._validate = this._validate.bind(this);
    }

    componentDidMount() {

        let opcionesApps = [];

        this.props.aplicaciones.map((i) => {
            return (
                opcionesApps.push({ 'key': i._id, 'value': i.i_id, 'text': i.name })
            )
        });

        this.setState({
            opcionesApps: opcionesApps
        })
    }

    _onChange(e, { name, value }) {
        this.setState({
            [name]: value
        });

        this.props.asignarAplicacion(value);
    }


    _validate(e) {
        e.preventDefault();
        let idAplicacion = this.state.aplicacion;
        if (idAplicacion !== '' && idAplicacion !== undefined && this.state.title) {
            let aplicacion = this.props.aplicaciones.filter(app => (
                app._id === idAplicacion
            ));

            if (aplicacion && aplicacion.length > 0 && this.state.title) {
                this.props.asignarPropiedadesPruebas(aplicacion[0].type, this.state.title);
                
                if (aplicacion[0].type === 'Web') {
                    this.props.next(states.WEB);
                } else {
                    this.props.next(states.MOVIL);
                }
            } else {
                this.setState({
                    errors: ['No es posible direccionar la solicitud']
                })
            }

        } else {
            this.setState({
                errors: ['Seleccione una aplicación']
            });
        }
    }

    render() {
        console.log(this.props.opcionesApps);
        return (
            <div class="col-lg-6">
                
                <Form>
                    
                    <Step.Group widths={3}>
                        <Step active>
                        <Icon name='buysellads' />
                        <Step.Content>
                            <Step.Title>Aplicación</Step.Title>
                        </Step.Content>
                        </Step>
                        <Step disabled>
                        <Icon name='content' />
                        <Step.Content>
                            <Step.Title>Registro de prueba</Step.Title>
                        </Step.Content>
                        </Step>
                        <Step disabled>
                        <Icon name='info'/>
                        <Step.Content>
                            <Step.Title>Confirmación</Step.Title>
                        </Step.Content>
                        </Step>
                    </Step.Group>
                    {this.state.errors.length > 0 &&
                        <Message negative>
                            <p>{this.state.errors.join('. ')}</p>
                        </Message>
                    }
                    <h5>El set de pruebas esta compuesto por una aplicación y el registro de una o varias pruebas.</h5>
                    <Form.Group widths='equal' class="form-group">
                        <Form.Input
                            name='title'
                            value={this.state.title}
                            onChange={this._onChange}
                            label='Titulo del set de prueba'
                            placeholder='Descripción corta' />
                        <Form.Dropdown
                            name='aplicacion'
                            clearable selection
                            value={this.state.aplicacion}
                            onChange={this._onChange}
                            label='Aplicación'
                            placeholder='Aplicación'
                            options={this.props.opcionesApps}>

                        </Form.Dropdown>
                    </Form.Group>
                    <Divider />
                    <Grid>
                        <Grid.Column floated='left' width={5}>

                        </Grid.Column>
                        <Grid.Column floated='right' width={5}>
                            <Button primary onClick={this._validate}>Siguiente</Button>
                        </Grid.Column>
                    </Grid>
                </Form>
            </div>
        );
    }

}

class BaseForm extends Component {
    constructor(props) {
        super(props);
        this.state = {
            type_test: this.props.type,
            type: null,
            description: null,
            run_vrt: true,
            screenshots: 0,
            generate_data: false,
            execution_id: null,
            package_name: null,
            apk_path: null,
            file: [],
            typesTest: [],
            selectedCheckboxes: new Set(),
            errors: []
        }
        this._onChange = this._onChange.bind(this);
        this._validate = this._validate.bind(this);
        this._back = this._back.bind(this);
    }

    componentDidMount() {
        let typesTest = null;
        if (this.props.type === 'Web') {
            typesTest = [
                { text: 'End To End', value: 'e2e' },
                { text: 'Behavior Driven Testing', value: 'bdt' },
                { text: 'Random Testing', value: 'random' },
                { text: 'Headless Small Chrome', value: 'headless_small_chrome' },
                { text: 'Headless Medium Chrome', value: 'headless_medium_chrome' },
                { text: 'Headless Large Chrome', value: 'headless_large_chrome' },
                { text: 'Headless Firefox', value: 'headless_firefox' },
                { text: 'Mutation Testing', value: 'mutation' }
            ];
        } else if (this.props.type === 'Movil') {
            typesTest = [
                { text: 'Behavior Driven Testing', value: 'bdt' },
                { text: 'Random Testing', value: 'random' },
                { text: 'Mutation Testing', value: 'mutation' }
            ];
        } else {
            typesTest = [];
        }

        this.setState({
            typesTest: typesTest,
            //run_vrt: true,
            generate_data: true
        })
    }

    _back(e) {
        e.preventDefault();
        this.props.back(states.INICIAL);
    }

    _onChange(e, { name, value }) {
        this.setState({
            [name]: value
        });
    }

    handleChangeData = (e) => {
        this.setState({
            generate_data: !this.state.generate_data
        });
        
    }

    handleChangeVRT = (e) => {
        this.setState({
            run_vrt: !this.state.run_vrt
        });
    }

    handleFileUpload = (event) => {
        this.setState({ file: event.target.files[0] });
    }

    toggleCheckbox = label => {
        if (this.state.selectedCheckboxes.has(label)) {
          this.state.selectedCheckboxes.delete(label);
        } else {
          this.state.selectedCheckboxes.add(label);
        }
        console.log(this.state.selectedCheckboxes);
      }

    _validate(e) {
        e.preventDefault();
        // You can add your validation logic here

        let type = this.state.type;
        let description = this.state.description;
        let type_test = this.state.type_test;
        let package_name = this.state.package_name;
        if (type && description) {
            if(type_test === 'Movil' && !package_name){
                this.setState({
                    errors: ['Debe ingresar el nombre del paquete principal de la App']
                });
            }else{
                this.props.saveForm({
                    type_test: this.props.type,
                    type: this.state.type,
                    description: this.state.description,
                    file: this.state.file,
                    package_name: this.state.package_name,
                    screenshots: this.state.screenshots,
                    run_vrt: this.state.run_vrt,
                    generate_data: this.state.generate_data,
                    execution_id: this.state.execution_id
                });
        
                this.props.next(this.props.nextState);
            }
            
        } else {
            this.setState({
                errors: ['Debe ingresar por lo menos descripción y tipo de prueba']
            });
        }

        
    }

    render() {

        return (
            <div class="col-lg-6">
                <Form>
                    <Step.Group widths={3}>
                        <Step>
                        <Icon name='buysellads' />
                        <Step.Content>
                            <Step.Title>Aplicación</Step.Title>
                        </Step.Content>
                        </Step>
                        <Step active>
                        <Icon name='content' />
                        <Step.Content>
                            <Step.Title>Registro de prueba</Step.Title>
                        </Step.Content>
                        </Step>
                        <Step disabled>
                        <Icon name='info'/>
                        <Step.Content>
                            <Step.Title>Confirmación</Step.Title>
                        </Step.Content>
                        </Step>
                    </Step.Group>
                    {this.state.errors.length > 0 &&
                        <Message negative>
                            <p>{this.state.errors.join('. ')}</p>
                        </Message>
                    }
                    <Form.Group widths='equal'>
                        <Form.Input
                            name='description'
                            value={this.state.description}
                            onChange={this._onChange}
                            label='Nombre Prueba'
                            placeholder='Descripción corta' />
                        <Form.Dropdown
                            name='type'
                            clearable selection
                            value={this.state.type}
                            onChange={this._onChange}
                            label='Tipo Prueba'
                            placeholder='Seleccione ...'
                            options={this.state.typesTest} />
                    </Form.Group>
                    { this.state.type != 'mutation' && this.state.type_test === 'Web' &&
                    <Form.Group widths='equal'>
                        <Form.Checkbox name='run_vrt' label='Ejecutar VRT' key='Ejecutar VRT' onChange={this.handleChangeVRT} defaultChecked={this.state.run_vrt} toggle/>
                        <Form.Input label={`Screenshots: ${this.state.screenshots}`} min={0} max={20} name='screenshots'
                            onChange={this._onChange} step={1} type='range' value={this.state.screenshots} />
                    </Form.Group>
                    }
                    { this.state.type === 'bdt' && this.state.type_test === 'Web' &&
                    <Form.Group widths='equal'>
                        <Form.Checkbox name='generate_data' key='Generar Data' label='Generar Data' onChange={this.handleChangeData} defaultChecked={this.state.generate_data} toggle/>
                        <Form.Input
                            name='execution_id'
                            value={this.state.execution_id}
                            onChange={this._onChange}
                            label='Ejecución asociada'
                            placeholder='Número de Ejecucion para VRT' />
                    </Form.Group>
                    }
                    { this.state.type_test === 'Web' &&
                    <Form.Group widths='equal'>
                        <Form.Input
                            name='file'
                            ref={(ref) => { this.uploadInput = ref; }}
                            onChange={this.handleFileUpload}
                            label='Archivo'
                            type='file'
                            placeholder='Archivo' />
                    </Form.Group>
                    }
                    { this.state.type_test === 'Movil' &&
                    <Form.Group widths='equal'>
                        <Form.Input
                            name='package_name'
                            value={this.state.package_name}
                            onChange={this._onChange}
                            label='Nombre de paquete de la App' />
                    </Form.Group>
                    }
                    <Divider />
                    <Grid className='two ui buttons'>
                        <Grid.Column floated='right' width={5}>
                            <Button primary onClick={this._validate}>Siguiente</Button>
                        </Grid.Column>
                    </Grid>
                </Form>
            </div>
        );
    }
}

export const MovilForm = (props) => {
    return (
        <BaseForm
            type='Movil'
            next={props.next}
            back={props.back}
            saveForm={props.saveForm}
            nextState={states.CONFIRM} />
    );
}

export const WebForm = (props) => {
    return (
        <BaseForm
            type='Web'
            next={props.next}
            back={props.back}
            saveForm={props.saveForm}
            nextState={states.CONFIRM} />
    );
}


export class Confirm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            app: null,
            aplicaciones: [],
            errors: []
        };
    }

    componentDidMount() {

        let app = null;

        this.props.aplicaciones.forEach(application => {
            if(application._id===this.props.aplicacion){
                app = application;
            }
        });

        this.setState({
            app: app
        })
    }

    render() {
        /*
         * Here is our final step. In the real world, we would
         * obviously do something more complicated than a javascript
         * alert
         */
        return (
            <div class="col-lg-6">
                <Step.Group widths={3}>
                        <Step disabled>
                        <Icon name='buysellads' />
                        <Step.Content>
                            <Step.Title>Aplicación</Step.Title>
                        </Step.Content>
                        </Step>
                        <Step disabled>
                        <Icon name='content' />
                        <Step.Content>
                            <Step.Title>Registro de prueba</Step.Title>
                        </Step.Content>
                        </Step>
                        <Step active>
                        <Icon name='info'/>
                        <Step.Content>
                            <Step.Title>Confirmación</Step.Title>
                        </Step.Content>
                        </Step>
                    </Step.Group>
                <h3>Pruebas registradas</h3>
                {this.state.app && 
                    <h2>{this.state.app.name}@{this.state.app.version} - {this.state.app.type}</h2>
                }
                <Item.Group>
                    {this.props.pruebas.map((i) => {
                        const {apk_path, description, execution_id, file, generate_data, package_name, run_vrt, screenshots, type, type_test} = i;
                        console.log(i);
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
                                        {type !== 'mutation' && screenshots > 0 && 
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
                <Divider />
                {this.props.registrado > 0 &&
                    <Grid>
                        <Grid.Column floated='left' width={5}>
                            {this.props.tipoAplicacion === 'Web' &&
                                <Button secondary onClick={() => this.props.next(states.WEB)}>Agregar</Button>
                            }
                            {this.props.tipoAplicacion === 'Movil' &&
                                <Button secondary onClick={() => this.props.next(states.MOVIL)}>Agregar</Button>
                            }
                        </Grid.Column>
                        <Grid.Column floated='right' width={5}>
                            <Button primary onClick={() => this.props.registrarSetPrueba()}>Registrar</Button>
                        </Grid.Column>

                    </Grid>
                }
            </div>
        );
    }
}