package  'LORAWAN_Library Library' {
    import ARCADIA::**; 
    @PackageMeta {
        type = "Library";
    } 
    enum def 'ProgressStatus' :> EnumerationPropertyType  { 
        enum 'DRAFT'; 
        enum 'TO_BE_REVIEWED'; 
        enum 'TO_BE_DISCUSSED'; 
        enum 'REWORK_NECESSARY'; 
        enum 'UNDER_REWORK'; 
        enum 'REVIEWED_OK'; 
    }  
    package  'LORAWAN_Library' {
        @PackageMeta {
            type = "SystemEngineering";
        } 
        package  'Operational Analysis' {
            @PackageMeta {
                type = "OperationalAnalysis";
            } 
            package  'Roles' {
                @PackageMeta {
                    type = "RolePkg";
                } 
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
            } 
            package  'Operational Capabilities' {
                @PackageMeta {
                    type = "OperationalCapabilityPkg";
                } 
            } 
            package  'Operational Entities' {
                @PackageMeta {
                    type = "EntityPkg";
                } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
            } 
            package  'Operational Activities' {
                @PackageMeta {
                    type = "OperationalActivityPkg";
                } 
                action 'Root Operational Activity' : OperationalActivity  { 
                    attribute :>> isDerived = false; 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isUnique = false; 
                    attribute :>> isOrdered = false; 
                }  
            } 
        } 
        package  'System Analysis' {
            @PackageMeta {
                type = "SystemAnalysis";
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "SystemComponentPkg";
                } 
                part 'HI Facility' : SystemComponent { 
                    attribute :>> isActor = false; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    attribute :>> isAbstract = false; 
                    allocation '5bd9bda2-d388-4d2a-8b4f-080691cae7e4' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'HI Facility';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies' ; 
                    allocation 'b2b2212a-5774-4ee1-8239-95504728328d' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'HI Facility';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment' ; 
                    state 'System State Machine' : StateMachine  { 
                        attribute :>> isControlOperator = false; 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'HI Facility'.'5bd9bda2-d388-4d2a-8b4f-080691cae7e4',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'HI Facility'.'b2b2212a-5774-4ee1-8239-95504728328d'); 
                    ref :>> ownedStateMachines =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'HI Facility'.'System State Machine'); 
                }  
                part 'Business or Campus Staff' : SystemComponent { 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    attribute :>> isAbstract = false; 
                    allocation 'b9c3e237-29d2-4b66-8a77-ba9b3b2201e1' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Monitor Alerts'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'Business or Campus Staff';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Monitor Alerts' ; 
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'Business or Campus Staff'.'b9c3e237-29d2-4b66-8a77-ba9b3b2201e1'); 
                }  
                part 'Environment' : SystemComponent { 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    attribute :>> isAbstract = false; 
                    allocation '33cf866d-3de0-4de3-96d7-bdb7d6ab43b9' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Heat Influence'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'Environment';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Heat Influence' ; 
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'Environment'.'33cf866d-3de0-4de3-96d7-bdb7d6ab43b9'); 
                }  
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityPkg";
                } 
            } 
            package  'Missions' {
                @PackageMeta {
                    type = "MissionPkg";
                } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                package  'Predefined Types' {
                    @PackageMeta {
                        type = "DataPkg";
                    } 
                } 
            } 
            package  'System Functions' {
                @PackageMeta {
                    type = "SystemFunctionPkg";
                } 
                action 'Root System Function' : SystemFunction  { 
                    attribute :>> isDerived = false; 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isUnique = false; 
                    attribute :>> isOrdered = false; 
                    action 'Monitor Alerts' : SystemFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Monitor Alerts'.'FIP 1'); 
                    }  
                    action 'Detect Temperature Anomolies' : SystemFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies'.'FIP 1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies'.'FOP 1'); 
                    }  
                    action 'Transfered from Environment' : SystemFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment'.'FIP 1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment'.'FOP 1'); 
                    }  
                    action 'Heat Influence' : SystemFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Heat Influence'.'FOP 1'); 
                    }  
                    interface '9e10a619-a0f3-44fd-9c7c-7dbee2a6d87f' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Heat Influence'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Heat"; 
                    }  
                    interface 'ec381121-d7fb-48d4-bf63-072179c11166' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Temp"; 
                    }  
                    interface '123d0820-a562-4a75-aebd-12b12c705aae' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Monitor Alerts'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Alerts"; 
                    }  
                    ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Monitor Alerts',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Heat Influence'); 
                     
                    ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'9e10a619-a0f3-44fd-9c7c-7dbee2a6d87f',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'ec381121-d7fb-48d4-bf63-072179c11166',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'123d0820-a562-4a75-aebd-12b12c705aae'); 
                }  
            } 
        } 
        package  'Logical Architecture' {
            @PackageMeta {
                type = "LogicalArchitecture";
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
            } 
            package  'Logical Functions' {
                @PackageMeta {
                    type = "LogicalFunctionPkg";
                } 
                action 'Root Logical Function' : LogicalFunction  { 
                    attribute :>> isDerived = false; 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isUnique = false; 
                    attribute :>> isOrdered = false; 
                    action 'Monitor Alerts' : LogicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                             
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Monitor Alerts'.'FIP 1'); 
                         
                    }  
                    action 'Detect Temperature Anomolies' : LogicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        action 'Convert Temp to Lora Message' : LogicalFunction  { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> isControl = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                attribute :>> isControlType = false; 
                                 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> isControl = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                attribute :>> isControlType = false; 
                            }  
                            ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'FIP 1'); 
                            ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'FOP 1'); 
                        }  
                        action 'Deliver Lora Message to Integration' : LogicalFunction  { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> isControl = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                attribute :>> isControlType = false; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> isControl = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                attribute :>> isControlType = false; 
                            }  
                            ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'FIP 1'); 
                            ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'FOP 1'); 
                        }  
                        action 'Generate Alerts for Users' : LogicalFunction  { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            in port 'FIP 1' : FunctionInputPort  { 
                                attribute :>> isControl = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                attribute :>> isControlType = false; 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                attribute :>> isControl = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                attribute :>> isControlType = false; 
                                 
                            }  
                            ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'FIP 1'); 
                            ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'FOP 1'); 
                        }  
                        interface 'e732050b-f4ad-43dc-973d-dac9c472326b' : FunctionalExchange 
                            connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'FOP 1'
                            to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'FIP 1' { 
                            attribute :>> isMulticast = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> interfaceName = "Lora Message"; 
                        }  
                        interface '1bfb12a5-6a67-4f71-afa8-d21b87ded632' : FunctionalExchange 
                            connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'FOP 1'
                            to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'FIP 1' { 
                            attribute :>> isMulticast = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> interfaceName = "Lora Message"; 
                        }  
                        ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'); 
                         
                        ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'e732050b-f4ad-43dc-973d-dac9c472326b',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'1bfb12a5-6a67-4f71-afa8-d21b87ded632'); 
                    }  
                    action 'Transfered from Environment' : LogicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                             
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                             
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment'.'FIP 1'); 
                         
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment'.'FOP 1'); 
                    }  
                    action 'Heat Influence' : LogicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                             
                        }  
                         
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Heat Influence'.'FOP 1'); 
                    }  
                    interface '8a55efbe-f001-4bbc-a1b8-d5ae0a00ad8d' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Heat Influence'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Heat"; 
                         
                    }  
                    interface '05f37f9e-02be-4719-9d35-1dbb20048e68' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Temp"; 
                         
                    }  
                    interface '368ef63a-3091-459d-b616-48f29a52a3d1' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Monitor Alerts'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Alerts"; 
                         
                    }  
                    ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Monitor Alerts',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Heat Influence'); 
                     
                    ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'8a55efbe-f001-4bbc-a1b8-d5ae0a00ad8d',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'05f37f9e-02be-4719-9d35-1dbb20048e68',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'368ef63a-3091-459d-b616-48f29a52a3d1'); 
                }  
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "LogicalComponentPkg";
                } 
                part 'HI IOT System' : LogicalComponent { 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    attribute :>> isAbstract = false; 
                    part 'Helium Network' : LogicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation 'b0150f28-6479-491a-8faa-32099853efe1' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Helium Network';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Helium Network'.'b0150f28-6479-491a-8faa-32099853efe1'); 
                    }  
                    part 'Cloud Applications' : LogicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation 'f6b06e55-c426-4f6c-8527-1161a7906fb9' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Cloud Applications';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Cloud Applications'.'f6b06e55-c426-4f6c-8527-1161a7906fb9'); 
                    }  
                    part 'Lora Devices' : LogicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '7b1b7569-2041-4644-96ce-fa6482d77d6c' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Lora Devices';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Lora Devices'.'7b1b7569-2041-4644-96ce-fa6482d77d6c'); 
                    }  
                    part 'Facilities' : LogicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation 'dca603b5-7efa-4c28-8a84-d978cce72211' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Facilities';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Facilities'.'dca603b5-7efa-4c28-8a84-d978cce72211'); 
                    }  
                     
                    ref :>> ownedLogicalComponents =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Helium Network',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Cloud Applications',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Lora Devices',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Facilities'); 
                     
                }  
                part 'Business or Campus Staff' : LogicalComponent { 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> isAbstract = false; 
                    allocation '9ed8d284-901f-4c77-af7e-7c46abb26a0f' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Monitor Alerts'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'Business or Campus Staff';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Monitor Alerts' ; 
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'Business or Campus Staff'.'9ed8d284-901f-4c77-af7e-7c46abb26a0f'); 
                     
                     
                }  
                part 'Environment' : LogicalComponent { 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> isAbstract = false; 
                    allocation 'b3883d93-dce9-416f-a45a-9f23614b39c2' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Heat Influence'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'Environment';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Heat Influence' ; 
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'Environment'.'b3883d93-dce9-416f-a45a-9f23614b39c2'); 
                     
                     
                }  
            } 
        } 
        package  'Physical Architecture' {
            @PackageMeta {
                type = "PhysicalArchitecture";
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
            } 
            package  'Physical Functions' {
                @PackageMeta {
                    type = "PhysicalFunctionPkg";
                } 
                action 'Root Physical Function' : PhysicalFunction  { 
                    attribute :>> isDerived = false; 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isUnique = false; 
                    attribute :>> isOrdered = false; 
                    action 'Monitor Alerts' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                             
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Monitor Alerts'.'FIP 1'); 
                         
                    }  
                    action 'Detect Temperature Anomolies' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        action 'Convert Temp to Lora Message' : PhysicalFunction  { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            action 'Transmit over Lorawan' : PhysicalFunction  { 
                                attribute :>> isDerived = false; 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isFinal = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isUnique = false; 
                                attribute :>> isOrdered = false; 
                                in port 'Lora Downlink' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                out port 'Lora UpLink' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora Downlink',
                                'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'FIP 2'); 
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora UpLink',
                                'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'FOP 2'); 
                            }  
                            action 'Compute Temp and Humidity' : PhysicalFunction  { 
                                attribute :>> isDerived = false; 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isFinal = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isUnique = false; 
                                attribute :>> isOrdered = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                in port 'FIP 3' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 1',
                                'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 2',
                                'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 3'); 
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FOP 1'); 
                            }  
                            action 'Convert Humidity to Electrical' : PhysicalFunction  { 
                                attribute :>> isDerived = false; 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isFinal = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isUnique = false; 
                                attribute :>> isOrdered = false; 
                                in port 'Hum Sig In' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'.'Hum Sig In'); 
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'.'FOP 1'); 
                            }  
                            action 'Convert Temp to Electrical ' : PhysicalFunction  { 
                                attribute :>> isDerived = false; 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isFinal = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isUnique = false; 
                                attribute :>> isOrdered = false; 
                                in port 'Temp Sig In' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '.'Temp Sig In'); 
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '.'FOP 1'); 
                            }  
                            ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '); 
                             
                        }  
                        action 'Deliver Lora Message to Integration' : PhysicalFunction  { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            action 'Transfer Uplink Data' : PhysicalFunction  { 
                                attribute :>> isDerived = false; 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isFinal = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isUnique = false; 
                                attribute :>> isOrdered = false; 
                                in port 'From sensors' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                     
                                }  
                                out port 'To Cloud Console' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'.'From sensors'); 
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'.'To Cloud Console'); 
                            }  
                            action 'Process Data Per Device and Pass to Integrations' : PhysicalFunction  { 
                                attribute :>> isDerived = false; 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isFinal = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isUnique = false; 
                                attribute :>> isOrdered = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                out port 'FOP 3' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FIP 1'); 
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FOP 2',
                                'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FOP 3'); 
                            }  
                            action 'Transfer Downlink Data' : PhysicalFunction  { 
                                attribute :>> isDerived = false; 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isFinal = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isUnique = false; 
                                attribute :>> isOrdered = false; 
                                in port 'From Cloud Console' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                out port 'To Sensor' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'.'From Cloud Console'); 
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'.'To Sensor'); 
                            }  
                            interface 'd8a11236-e063-4288-af7a-758a32e6392d' : FunctionalExchange 
                                connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FOP 2'
                                to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'.'From Cloud Console' { 
                                attribute :>> isMulticast = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> interfaceName = "Down Link"; 
                            }  
                            ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'); 
                             
                            ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'d8a11236-e063-4288-af7a-758a32e6392d'); 
                        }  
                        action 'Generate Alerts for Users' : PhysicalFunction  { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            action 'Generate Alerts' : PhysicalFunction  { 
                                attribute :>> isDerived = false; 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isFinal = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isUnique = false; 
                                attribute :>> isOrdered = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                     
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                     
                                }  
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts'.'FIP 1'); 
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts'.'FOP 1'); 
                            }  
                            action 'Display Data' : PhysicalFunction  { 
                                attribute :>> isDerived = false; 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isFinal = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isUnique = false; 
                                attribute :>> isOrdered = false; 
                                in port 'FIP 1' : FunctionInputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    attribute :>> isControl = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                    attribute :>> isControlType = false; 
                                }  
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'.'FIP 1'); 
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'.'FOP 1'); 
                            }  
                            ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'); 
                             
                        }  
                        interface '02dbc8f4-3ae5-41ea-a9d4-6eb4fe60f63f' : FunctionalExchange 
                            connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora UpLink'
                            to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'.'From sensors' { 
                            attribute :>> isMulticast = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> interfaceName = "Lora Message"; 
                             
                        }  
                        interface '1e77e07f-e493-41ea-9d1d-40568cf2fcaa' : FunctionalExchange 
                            connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'.'To Sensor'
                            to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora Downlink' { 
                            attribute :>> isMulticast = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> interfaceName = "Down Link Data"; 
                        }  
                        ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'); 
                         
                        ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'02dbc8f4-3ae5-41ea-a9d4-6eb4fe60f63f',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'1e77e07f-e493-41ea-9d1d-40568cf2fcaa'); 
                    }  
                    action 'Transfered from Environment' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                             
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                             
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment'.'FIP 1'); 
                         
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment'.'FOP 1'); 
                    }  
                    action 'Heat Influence' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                             
                        }  
                         
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence'.'FOP 1'); 
                    }  
                    action 'View Device Data' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View Device Data'.'FIP 1'); 
                    }  
                    action 'Capture Data' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'.'FIP 1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'.'FOP 1'); 
                    }  
                    action 'Duplicate 7' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::DUPLICATE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                             
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FIP 1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FOP 1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FOP 2'); 
                    }  
                    action 'Deliver Device Alerts' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FIP 1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FOP 1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FOP 2'); 
                    }  
                    action 'Duplicate 9' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::DUPLICATE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FIP 1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FOP 1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FOP 2'); 
                    }  
                    action 'Email' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Email'.'FIP 1'); 
                    }  
                    action 'Webhook' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'.'FIP 1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'.'FOP 1'); 
                    }  
                    action 'Text' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                    }  
                    action 'App Function' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function'.'FIP 1'); 
                    }  
                    action 'Transmit over LoraWAN' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1_1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        in port 'LoraWAN In_1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'LoraWAN Out_1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'FIP 1_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN In_1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN Out_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'FOP 2'); 
                    }  
                    action 'Apply Power for Computation' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 2_1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        in port 'Power In_1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation'.'FIP 2_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation'.'Power In_1'); 
                    }  
                    action 'Provide LED Light' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1_1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'LED Out_1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'FIP 1_1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'LED Out_1'); 
                    }  
                    action 'Compute GPS + Battery Status' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1_1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        in port 'FIP 3_1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        in port 'FIP 4_1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1_1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 2_1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 3' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 1_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 3_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 4_1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 1_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 2_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 3'); 
                    }  
                    action 'Provide display' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'.'FIP 1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'.'FOP 1'); 
                    }  
                    action 'Receive GPS Signal' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'GPS In_1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1_1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'GPS In_1'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'FOP 1_1'); 
                    }  
                    action 'Provide status' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FIP 1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FIP 2'); 
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FOP 1'); 
                    }  
                    action 'Charge Battery' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        out port 'FOP 1_1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        out port 'FOP 2_1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'.'FOP 1_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'.'FOP 2_1'); 
                    }  
                    action 'View LED and Display' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display'.'FIP 1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display'.'FIP 2'); 
                    }  
                    action 'Send GPS Signals' : PhysicalFunction  { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            attribute :>> isControl = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            attribute :>> isControlType = false; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals'.'FOP 1'); 
                    }  
                    interface 'f07fc0c3-9245-4663-a094-0f029023ecee' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Heat"; 
                         
                    }  
                    interface '0c5120cd-6643-4bfa-97c2-3a735f8130e3' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Monitor Alerts'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Alerts"; 
                         
                    }  
                    interface '72b9641e-37d8-4466-a31c-ed2e64ac6e8a' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'FIP 2' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Lora Uplink"; 
                    }  
                    interface '0b42cd70-6145-42ba-ae2e-c7ff1c0294f2' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'FOP 2'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 3' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Lora Downlink"; 
                    }  
                    interface '61b64f59-cdd8-442d-820b-2be9dbe1259b' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Temp Signal"; 
                    }  
                    interface 'bf405b31-3084-40b3-bce8-4a7ce9f116b3' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 2' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Humidity Signal"; 
                    }  
                    interface 'a4857226-6356-4277-86cb-f501aa0b69e9' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'.'Hum Sig In' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Humidity"; 
                    }  
                    interface '6ad8b3e7-a6fb-43c7-99ab-f0a7a5401cc1' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '.'Temp Sig In' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Temperattur"; 
                    }  
                    interface 'b778396b-85a1-41c1-b264-f760d1571478' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Lora Message"; 
                         
                    }  
                    interface 'f4c453de-b1dc-4500-9c67-778a8f29a62b' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FOP 3'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Lora Message"; 
                    }  
                    interface '7b162984-edbd-406f-95b1-d3f459a6e296' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FOP 2'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Lora Message"; 
                    }  
                    interface '8e8e9930-1b08-4387-904d-820277fb0f97' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Data"; 
                    }  
                    interface '83f878b9-4d00-4114-83d0-da13682def6c' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View Device Data'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Data "; 
                    }  
                    interface 'f14e3dd8-1e57-4073-96de-2b3d3b54f939' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Uplink Data"; 
                    }  
                    interface '9044060c-4073-4af1-9c32-4199f88a36e8' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'.'To Cloud Console'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Uplink Data"; 
                    }  
                    interface '9ca99e53-d568-49d3-b32f-24448d854a6a' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FOP 2'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Uplink Data"; 
                    }  
                    interface 'be85b473-a28b-4264-94f5-4423cbc4dee2' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Email'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Email"; 
                    }  
                    interface 'a0d63d92-b2b9-4330-93f7-703cec69c508' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FOP 2'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Webhook"; 
                    }  
                    interface '5438e077-8d2d-4c77-96ca-8b9188cf2b30' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Webhook"; 
                    }  
                    interface 'f3763d4b-193e-40c8-b642-b91af71acc8e' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'.'FOP 2_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation'.'FIP 2_1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Battery Level"; 
                    }  
                    interface '61dd373e-4e2c-484e-86fa-5b5f7477f35b' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'FOP 2'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Lorawan Status"; 
                    }  
                    interface '0c7f9233-676f-4f20-a195-b0ddce0be41b' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Status"; 
                    }  
                    interface '8721a327-b701-47b4-961d-a0afd60b113c' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 2_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'FIP 1_1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Data Packet"; 
                    }  
                    interface 'e0b6084d-e5db-4014-a5b8-c84e0e2d73af' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'.'FOP 1_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 3_1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Battery State"; 
                    }  
                    interface '659334ce-9521-4c2a-88fe-1b86100ff20b' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 1_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'FIP 1_1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "LED Status_1"; 
                    }  
                    interface '77495d9f-8fe1-4e9c-b6a2-1ae40e4bfd63' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'FOP 1_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 4_1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "GPS Data_1"; 
                    }  
                    interface '3a524588-b16b-45f4-ba1f-997494776a00' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 3'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FIP 2' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "GPS Status"; 
                    }  
                    interface '61bd7e0f-de4b-468b-a0c8-d41b023ae5b2' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN Out_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'.'From sensors' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Uplink"; 
                    }  
                    interface '701f3a68-a4d2-4d93-88b2-83e18e9f1555' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'.'To Sensor'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN In_1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Down Lin"; 
                    }  
                    interface '8bcb2e0b-5cbf-4d05-8e73-a89de8afd53d' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display'.'FIP 1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "Display"; 
                    }  
                    interface '6c09f5b5-c2dd-4536-897f-6af0a6a38979' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'LED Out_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display'.'FIP 2' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "LEDs"; 
                    }  
                    interface '435686ac-01a1-41ec-894d-8de1c5f4ce52' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'GPS In_1' { 
                        attribute :>> isMulticast = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> interfaceName = "GPS Signa;l"; 
                    }  
                    ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Monitor Alerts',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View Device Data',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Email',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Text',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals'); 
                     
                    ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f07fc0c3-9245-4663-a094-0f029023ecee',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'0c5120cd-6643-4bfa-97c2-3a735f8130e3',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'72b9641e-37d8-4466-a31c-ed2e64ac6e8a',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'0b42cd70-6145-42ba-ae2e-c7ff1c0294f2',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'61b64f59-cdd8-442d-820b-2be9dbe1259b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'bf405b31-3084-40b3-bce8-4a7ce9f116b3',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'a4857226-6356-4277-86cb-f501aa0b69e9',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'6ad8b3e7-a6fb-43c7-99ab-f0a7a5401cc1',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'b778396b-85a1-41c1-b264-f760d1571478',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f4c453de-b1dc-4500-9c67-778a8f29a62b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'7b162984-edbd-406f-95b1-d3f459a6e296',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8e8e9930-1b08-4387-904d-820277fb0f97',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'83f878b9-4d00-4114-83d0-da13682def6c',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f14e3dd8-1e57-4073-96de-2b3d3b54f939',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'9044060c-4073-4af1-9c32-4199f88a36e8',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'9ca99e53-d568-49d3-b32f-24448d854a6a',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'be85b473-a28b-4264-94f5-4423cbc4dee2',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'a0d63d92-b2b9-4330-93f7-703cec69c508',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5438e077-8d2d-4c77-96ca-8b9188cf2b30',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f3763d4b-193e-40c8-b642-b91af71acc8e',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'61dd373e-4e2c-484e-86fa-5b5f7477f35b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'0c7f9233-676f-4f20-a195-b0ddce0be41b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8721a327-b701-47b4-961d-a0afd60b113c',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'e0b6084d-e5db-4014-a5b8-c84e0e2d73af',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'659334ce-9521-4c2a-88fe-1b86100ff20b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'77495d9f-8fe1-4e9c-b6a2-1ae40e4bfd63',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'3a524588-b16b-45f4-ba1f-997494776a00',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'61bd7e0f-de4b-468b-a0c8-d41b023ae5b2',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'701f3a68-a4d2-4d93-88b2-83e18e9f1555',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8bcb2e0b-5cbf-4d05-8e73-a89de8afd53d',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'6c09f5b5-c2dd-4536-897f-6af0a6a38979',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'435686ac-01a1-41ec-894d-8de1c5f4ce52'); 
                }  
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "PhysicalComponentPkg";
                } 
                constraint '44d67d9e-527b-4339-a7a9-1704fa9aafe2' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    
                    
                } 
                constraint '42b668bf-c782-45f5-980c-7775dd9e253d' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    
                    
                } 
                constraint '7d06124d-86b4-4fec-96a8-80088d571afa' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    
                    
                } 
                constraint 'eab9ed9f-cd9e-49a9-bea5-f1423f44e284' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    ref :>> constrainedElements =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'1c93882c-ca71-415d-8825-912707232ec4',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud');
                    
                } 
                constraint '88f92b41-b622-4485-a126-ed24abd9b957' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    ref :>> constrainedElements =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'5993b206-7ab1-4528-acf5-41e00bbab73b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud');
                    
                } 
                constraint 'd97b7abc-41a0-4e68-b842-f7dcb0c90c41' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    
                    
                } 
                constraint '950ec803-c281-4d9f-a9b5-ed06f58f0b07' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    
                    
                } 
                interface 'a84cbf50-7229-45bd-8c41-102ed10c23b9' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Software'.'CP 1'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'CP 3' { 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> isOriented = false; 
                    attribute :>> interfaceName = "LHT HW SW"; 
                }  
                interface '55ab6430-8535-456f-9d3c-86e3dc758f91' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 3'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'CP 2' { 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> isOriented = false; 
                    attribute :>> interfaceName = "C 2"; 
                }  
                interface '32909d00-a7f9-4205-aa16-88314dcb8d9d' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'Text Out'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'CP 5' { 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> isOriented = false; 
                    attribute :>> interfaceName = "Text"; 
                }  
                interface '1bf3cbdb-1fc3-40ab-b1ae-a0e03cc2ec9c' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'Email out'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'CP 6' { 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> isOriented = false; 
                    attribute :>> interfaceName = "Email"; 
                }  
                interface '3d048bfb-66ba-4b0c-b982-23050d5dbe80' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1' { 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> isOriented = false; 
                    attribute :>> interfaceName = "HW SW Interface"; 
                    allocation 'c83d518c-feff-4c66-8514-f7c318b7cb9a' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'e0b6084d-e5db-4014-a5b8-c84e0e2d73af'
                        to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'; 
                    allocation '2ceb86dc-6354-452c-ab89-ddcafb2b70af' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8721a327-b701-47b4-961d-a0afd60b113c'
                        to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'; 
                    allocation '9a9869a0-76ae-46c8-b94b-775914f4d07b' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'77495d9f-8fe1-4e9c-b6a2-1ae40e4bfd63'
                        to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'; 
                    allocation 'a41a09a1-0f4b-41bc-bf5a-e51306b4dbf9' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'659334ce-9521-4c2a-88fe-1b86100ff20b'
                        to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'.'c83d518c-feff-4c66-8514-f7c318b7cb9a',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'.'2ceb86dc-6354-452c-ab89-ddcafb2b70af',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'.'9a9869a0-76ae-46c8-b94b-775914f4d07b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'.'a41a09a1-0f4b-41bc-bf5a-e51306b4dbf9'); 
                }  
                interface '3d85e650-8105-46c8-b9e8-d0357ca1a953' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS'.'CP 2'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'GPS In' { 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> isOriented = false; 
                    attribute :>> interfaceName = "C 6"; 
                    allocation '07453591-a134-479a-9753-8413f3b7b0ad' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'435686ac-01a1-41ec-894d-8de1c5f4ce52'
                        to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d85e650-8105-46c8-b9e8-d0357ca1a953'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d85e650-8105-46c8-b9e8-d0357ca1a953'.'07453591-a134-479a-9753-8413f3b7b0ad'); 
                }  
                interface '6c09fd2e-72ac-4cc3-9354-21079c8bb23a' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LHT In'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment'.'PP 1' {
                    attribute :>> interfaceName = "Temp Humidty"; 
                }  
                interface '18429206-7e1a-4b8f-9d3b-20b8c54c7013' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'PP 1'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 2' {
                    attribute :>> interfaceName = "User IF"; 
                }  
                interface 'c4a383c0-13b0-4d5e-a88a-d2111f5e72d7' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Text Device'.'PP 2'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'PP 3' {
                    attribute :>> interfaceName = "UI"; 
                }  
                interface '1704822b-a869-4955-b930-de0f98713152' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Email Device'.'PP 2'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'PP 4' {
                    attribute :>> interfaceName = "UI"; 
                }  
                interface 'bb56f90f-58e7-477b-a01c-9fcffcb49835' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS'.'PP 1'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'PP 7_1' {
                    attribute :>> interfaceName = "GPS Signal"; 
                }  
                interface 'f891d023-ae68-41a6-8941-508513b10811' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Visual Out'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment'.'PP 2' {
                    attribute :>> interfaceName = "Position"; 
                }  
                part 'Physical System' : PhysicalComponent { 
                    attribute :>> isActor = false; 
                    attribute :>> nature = PhysicalComponentNature::UNSET; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> isHuman = false; 
                    attribute :>> isAbstract = false; 
                    interface '2fe0fa69-0dad-42e1-9e31-5ea1afa9ca77' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LORA Out'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To LORA Nodes' {
                        attribute :>> interfaceName = "LORAWAN"; 
                         
                    }  
                    interface '485dc158-d2a9-4466-9fa0-26de95f215e8' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router'.'TO MODEM'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Modem'.'To Router' {
                        attribute :>> interfaceName = "Cat 5"; 
                    }  
                    interface '7b377cdb-4811-4f15-9373-1acbd7fbdc91' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Modem'.'To ISP'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'ISP'.'To Modem' {
                        attribute :>> interfaceName = "Cable"; 
                    }  
                    interface '7ae30ed5-5223-48bb-8c4f-b60b736c1706' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'ISP'.'To Cloud' {
                        attribute :>> interfaceName = "WAN"; 
                    }  
                    interface 'b4675f2f-18b9-4fcb-9241-3622742bc6c6' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 1'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router'.'To Local Network CAT 5' {
                        attribute :>> interfaceName = "WIFI"; 
                    }  
                    interface '6ffe58b5-9f7f-4df6-ba3f-34cbc159967c' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 2'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cell Network'.'PP 1' {
                        attribute :>> interfaceName = "WAN"; 
                    }  
                    interface 'e02ac6f5-7a99-4f50-b0ea-31d9e46b8f67' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cell Network'.'PP 2'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Text Device'.'PP 1' {
                        attribute :>> interfaceName = "Cell"; 
                    }  
                    interface 'bdaf8198-1ab6-461a-ae05-3cebf2ae2c0d' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router'.'To WIFI Network'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Email Device'.'PP 1' {
                        attribute :>> interfaceName = "WIFI"; 
                    }  
                    interface '93b00a30-855e-46cc-9a7d-b0223b0706b0' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Lorawan'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To LORA Nodes' {
                        attribute :>> interfaceName = "LORWAN"; 
                    }  
                    interface '393fbea6-0a33-4dff-a299-5679b9846f60' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router'.'TO LORA CAT5'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To CAT 5' {
                        attribute :>> interfaceName = "R-G"; 
                    }  
                    interface '7825ab19-1f20-47c8-8937-8ae378e1c221' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router'.'To WIFI LORA'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To WIFI' {
                        attribute :>> interfaceName = "R-G"; 
                    }  
                    interface '01d9d6bd-8ff2-4b08-b81c-eb53ca0f4d24' : ComponentExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 1'
                        to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'CP 1' { 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> isOriented = false; 
                        attribute :>> interfaceName = "Helium Console"; 
                    }  
                    interface '9816146f-21e2-4ce0-b03c-e1e8a1c94652' : ComponentExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 2'
                        to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'CP 1' { 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> isOriented = false; 
                        attribute :>> interfaceName = "Cayenne"; 
                        allocation '41a3ef6c-ab9c-405e-86a0-a6e3c30e1597' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8e8e9930-1b08-4387-904d-820277fb0f97'
                            to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'9816146f-21e2-4ce0-b03c-e1e8a1c94652'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'9816146f-21e2-4ce0-b03c-e1e8a1c94652'.'41a3ef6c-ab9c-405e-86a0-a6e3c30e1597'); 
                    }  
                    interface '3cee67ff-9c15-4934-9765-3ba582ba24b6' : ComponentExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'CP 2'
                        to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'To Cloud Console' { 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> isOriented = false; 
                        attribute :>> interfaceName = "C 3"; 
                    }  
                    interface '3aeb8479-b78d-47d2-b567-fec0007a0b43' : ComponentExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'
                        to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'From LORAWAN Sensors' { 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> isOriented = false; 
                        attribute :>> interfaceName = "C 4"; 
                    }  
                    interface '09ef2a7c-fa20-467f-a01c-bf92e0bbca7e' : ComponentExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'CP 3'
                        to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps'.'CP 1' { 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> isOriented = false; 
                        attribute :>> interfaceName = "Webhook"; 
                        allocation 'd10db3fc-bfd2-4dd1-ba93-f1d5fe4003dd' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5438e077-8d2d-4c77-96ca-8b9188cf2b30'
                            to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'09ef2a7c-fa20-467f-a01c-bf92e0bbca7e'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'09ef2a7c-fa20-467f-a01c-bf92e0bbca7e'.'d10db3fc-bfd2-4dd1-ba93-f1d5fe4003dd'); 
                    }  
                    part 'PC' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '1c93882c-ca71-415d-8825-912707232ec4' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'; 
                        port 'PP 1' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '262c4a53-9df6-4e0e-8345-f2468367bd2a' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 1'; 
                            ref allocation '337a0745-39b8-40ae-9e59-6ef76934ef96' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 2'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 1'.'262c4a53-9df6-4e0e-8345-f2468367bd2a',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 1'.'337a0745-39b8-40ae-9e59-6ef76934ef96'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                    }  
                    part 'Helium Network' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                         
                    }  
                    part 'Helium Console' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '3fa62a4b-271e-404a-a1c7-92ca029457b5' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations' ; 
                        allocation '05c6429c-3b35-4f3f-a293-1ed7ab6eaf50' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts' ; 
                        allocation '55b3f2d7-f436-4b68-a080-3b9470cba48a' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9' ; 
                        port 'CP 1' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'CP 2' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'3fa62a4b-271e-404a-a1c7-92ca029457b5',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'05c6429c-3b35-4f3f-a293-1ed7ab6eaf50',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'55b3f2d7-f436-4b68-a080-3b9470cba48a'); 
                         
                    }  
                    part 'Lora Devices' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '67716743-b26b-4cfb-b2d0-eef54bcfa2db' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Lora Devices';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Lora Devices'.'67716743-b26b-4cfb-b2d0-eef54bcfa2db'); 
                         
                         
                    }  
                    part 'Facilities' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '359920c6-590d-439c-b3df-ceb0998b0d57' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Facilities';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Facilities'.'359920c6-590d-439c-b3df-ceb0998b0d57'); 
                         
                         
                    }  
                    part 'Cloud' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '5993b206-7ab1-4528-acf5-41e00bbab73b' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'; 
                        allocation 'c4ddc3ea-b216-405d-891a-791a3e25b370' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'; 
                        allocation '3c3515d3-158a-4dbc-98f5-861128637c41' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'; 
                        allocation '4b5b7a9f-7a13-49e7-91cb-cb2257bfb051' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps'; 
                        port 'PP 1' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '14caa6db-2b1b-4c00-8e65-662ff41f85f5' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'CP 1'; 
                            ref allocation 'f5d39869-02f1-41b8-8f5a-c46e7c2b950f' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'CP 1'; 
                            ref allocation 'c0e0ae31-6594-4ac5-b0a6-6a4638aff500' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'CP 2'; 
                            ref allocation 'a065d452-8876-468b-a31d-6886ec682b0a' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'Email out'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'.'14caa6db-2b1b-4c00-8e65-662ff41f85f5',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'.'f5d39869-02f1-41b8-8f5a-c46e7c2b950f',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'.'c0e0ae31-6594-4ac5-b0a6-6a4638aff500',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'.'a065d452-8876-468b-a31d-6886ec682b0a'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '516efb8e-72f4-4812-aba6-e2ebabe4b65f' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 2'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'Text Out'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 2'.'516efb8e-72f4-4812-aba6-e2ebabe4b65f'); 
                        }  
                    }  
                    part 'LORAWAN Gateway' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '2fc01f20-797d-4414-9411-62489e83240b' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'; 
                        port 'To LORA Nodes' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation 'c7c1b104-0630-4fd8-86de-7e7eddaa2a32' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To LORA Nodes'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'From LORAWAN Sensors'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To LORA Nodes'.'c7c1b104-0630-4fd8-86de-7e7eddaa2a32'); 
                        }  
                        port 'To CAT 5' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '9e2ddb09-bb7a-4162-bd39-6085f56e5c2b' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To CAT 5'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'To Cloud Console'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To CAT 5'.'9e2ddb09-bb7a-4162-bd39-6085f56e5c2b'); 
                        }  
                        port 'To WIFI' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation 'a923d11a-4762-43e2-824c-fc4ed8be6ea9' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To WIFI'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'To Cloud Console'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To WIFI'.'a923d11a-4762-43e2-824c-fc4ed8be6ea9'); 
                        }  
                    }  
                    part 'Router' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        port 'TO LORA CAT5' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'TO MODEM' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'To Local Network CAT 5' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'To WIFI LORA' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'To WIFI Network' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                    }  
                    part 'Modem' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        port 'To Router' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'To ISP' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                    }  
                    part 'ISP' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        port 'To Modem' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'To Cloud' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                    }  
                    part 'LHT 65 Software' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '1f4d70f8-41e6-41a7-b154-fd004a7822e8' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Software';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity' ; 
                        port 'CP 1' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Software'.'1f4d70f8-41e6-41a7-b154-fd004a7822e8'); 
                    }  
                    part 'LHT 65 Hardware' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '0cf551f3-c6b7-4e32-8abe-1b5b05c2a1be' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical ' ; 
                        allocation '3af3081d-8f14-4917-a78f-600a3395f826' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical' ; 
                        allocation '552bc5c0-872b-4837-81ac-c869e6a3d22c' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan' ; 
                        port 'LHT In' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '92bc7fe2-9573-4196-9198-2fe0eab68e6c' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'.'Hum Sig In'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LHT In'; 
                            ref allocation 'c08092a5-c036-4a31-b20f-3a7ec4c7b422' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '.'Temp Sig In'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LHT In'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LHT In'.'92bc7fe2-9573-4196-9198-2fe0eab68e6c',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LHT In'.'c08092a5-c036-4a31-b20f-3a7ec4c7b422'); 
                        }  
                        port 'LORA Out' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation 'f5b0a52b-e4a5-4cde-9aaa-6d915e4598f8' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora Downlink'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'; 
                            ref allocation '5dcb34e9-8922-451f-b0aa-d17a4cd0765b' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora UpLink'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'.'f5b0a52b-e4a5-4cde-9aaa-6d915e4598f8',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'.'5dcb34e9-8922-451f-b0aa-d17a4cd0765b'); 
                        }  
                        port 'CP 3' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'0cf551f3-c6b7-4e32-8abe-1b5b05c2a1be',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'3af3081d-8f14-4917-a78f-600a3395f826',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'552bc5c0-872b-4837-81ac-c869e6a3d22c'); 
                    }  
                    part 'Browser' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '280b825d-7c4b-46df-b610-8d76513da8e1' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data' ; 
                        port 'CP 1' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'CP 2' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '1fb6ebf0-e924-4361-bc2b-73929792adad' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'.'FIP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 2'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 2'.'1fb6ebf0-e924-4361-bc2b-73929792adad'); 
                        }  
                        port 'CP 3' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'280b825d-7c4b-46df-b610-8d76513da8e1'); 
                    }  
                    part 'Cayenne' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '4a4948ad-36a8-4bfe-b928-bd7a3b02badb' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts' ; 
                        allocation '12355ede-c7ed-4a2e-b607-1fdd8972d42b' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data' ; 
                        allocation 'd229db1f-e4c4-48d4-8703-b28f1e0f9be8' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7' ; 
                        port 'CP 1' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '3549a1e3-e7ae-4e7c-9721-ac5b83e99708' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'.'FOP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'CP 1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'CP 1'.'3549a1e3-e7ae-4e7c-9721-ac5b83e99708'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'4a4948ad-36a8-4bfe-b928-bd7a3b02badb',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'12355ede-c7ed-4a2e-b607-1fdd8972d42b',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'d229db1f-e4c4-48d4-8703-b28f1e0f9be8'); 
                    }  
                    part 'Helium RS Connect' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation 'cc4d4c75-20e8-495e-b2c6-c44428629d5a' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data' ; 
                        allocation 'ed4ef0a5-138e-4872-9743-cb9977fe14c4' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data' ; 
                        port 'To Cloud Console' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'From LORAWAN Sensors' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'cc4d4c75-20e8-495e-b2c6-c44428629d5a',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'ed4ef0a5-138e-4872-9743-cb9977fe14c4'); 
                    }  
                    part 'LHT 65' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '734c8941-54c9-4f57-94f1-0ccca9b3f69a' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'; 
                        allocation '495aa111-2230-4be0-9eda-3855b18ae05b' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Software'; 
                        port 'LORA Out' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '7e9ea97d-e4c4-46fe-b4de-77683bf364d6' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LORA Out'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LORA Out'.'7e9ea97d-e4c4-46fe-b4de-77683bf364d6'); 
                        }  
                        port 'LHT In' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '16ac59b9-19a4-461d-87e7-3bf6806f0329' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LHT In'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LHT In'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LHT In'.'16ac59b9-19a4-461d-87e7-3bf6806f0329'); 
                        }  
                    }  
                    part 'Text Device' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        port 'PP 1' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                    }  
                    part 'Email Device' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        port 'PP 1' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                    }  
                    part 'Cell Network' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        port 'PP 1' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                    }  
                    part 'Services' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '2545241d-524b-4b5b-92dc-db540b3b2a88' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Email'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Email' ; 
                        allocation 'bacf5359-353c-45a1-8a5d-6239de17f822' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook' ; 
                        allocation 'ac6dbac2-a39d-4d24-a779-5d2bb6be3e46' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Text'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Text' ; 
                        port 'Text Out' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'Email out' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'CP 3' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation 'b360871d-c005-4816-ad6f-9053ccdc3501' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'.'FOP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'CP 3'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'CP 3'.'b360871d-c005-4816-ad6f-9053ccdc3501'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'2545241d-524b-4b5b-92dc-db540b3b2a88',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'bacf5359-353c-45a1-8a5d-6239de17f822',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'ac6dbac2-a39d-4d24-a779-5d2bb6be3e46'); 
                    }  
                    part 'Misc Apps' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation 'ee563b86-91cc-4214-9774-cccfca1ef300' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function' ; 
                        port 'CP 1' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '983207da-d6a9-4484-99c8-fe1560f8a2ba' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function'.'FIP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps'.'CP 1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps'.'CP 1'.'983207da-d6a9-4484-99c8-fe1560f8a2ba'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps'.'ee563b86-91cc-4214-9774-cccfca1ef300'); 
                    }  
                    part 'HTCC-AB02S' : PhysicalComponent { 
                        doc /*
                        <h2 class="iyProductsTitle" style="background: url(&quot;../images/title-line.png&quot;) repeat-x 0px 100%; margin: 0px 0px 20px; padding: 14px 0px 6px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 24px; font-style: normal; font-weight: bold; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92</h2>

                        <h2 class="iyProductsTitle" style="background: url(&quot;../images/title-line.png&quot;) repeat-x 0px 100%; margin: 0px 0px 20px; padding: 14px 0px 6px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 24px; font-style: normal; font-weight: bold; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><a href="https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html">https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html</a></h2>

                        <div class="iyProductsProfile clearfix" style="margin: 0px; padding: 0px 0px 10px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; display: block; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        <div class="iyProductsGallery" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; width: 300px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; float: left; font-stretch: inherit;">
                        <div class="sigProContainer sigProGalleriaContainer" id="sigProGalleria4cf136aec9" style="background: none; margin: 8px 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; clear: both; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">
                        <div class="sigProGalleriaPlaceholderContainer" style="background: url(&quot;../images/loader.gif&quot;) no-repeat 50% 50%; margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">
                        <div class="sigProGalleriaPlaceholder" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><a class="sigProGalleriaTargetLink" href="https://www.dragino.com/media/k2/galleries/142/LGT-92-20.jpg" rel="lightbox[gallery4cf136aec9]" style="margin: 0px; padding: 5px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; display: block; cursor: pointer; font-stretch: inherit;" target="_blank" title="&lt;b&gt;Navigation tip:&lt;/b&gt; Hover mouse on top of the right or left side of the image to see the next or previous image respectively.&lt;br /&gt;&lt;br /&gt;You are browsing images from the article:&lt;br /&gt;&lt;span class=&quot;sigProPopupCaption&quot;&gt;LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92&lt;/span&gt;"><img alt="Click to enlarge image LGT-92-20.jpg" class="sigProGalleriaTargetImg" src="https://www.dragino.com/media/k2/galleries/142/LGT-92-20.jpg" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; width: 290px; height: auto; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit;" title="Click to enlarge image LGT-92-20.jpg" /></a>

                        <p class="sigProGalleriaTargetTitle" style="background: rgb(255, 255, 255); margin: 0px; padding: 4px 20px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); line-height: inherit; font-family: Georgia, &quot;Times New Roman&quot;, Times, serif; font-size: 14px; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit;">Click to open image!</p>
                        </div>
                        </div>

                        <ul class="sigProGalleria sigProGalleria clearfix" id="sigProId4cf136aec9" style="list-style: none; margin: 0px auto !important; padding: 2px 0px 6px !important; border: 0px currentColor; border-image: none; line-height: inherit; overflow: hidden; clear: both; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit;">
                        	<li class="sigProThumb" style="background: none !important; margin: 0px 2px 2px 0px; padding: 0px; border: currentColor !important; border-image: none !important; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; float: left; font-stretch: inherit;"><span class="sigProLinkOuterWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span class="sigProLinkWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><a class="sigProGalleriaLink sigProLink sigProLinkSelected" href="https://www.dragino.com/media/k2/galleries/142/LGT-92-20.jpg" style="margin: 0px; padding: 0px; border: 4px solid rgb(171, 222, 249); border-image: none; width: 56px; height: 42px; color: rgb(51, 51, 51); line-height: inherit; overflow: hidden; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; display: block; position: relative; cursor: pointer; font-stretch: inherit; background-color: rgb(238, 238, 238);" target="_blank" title="&lt;b&gt;Navigation tip:&lt;/b&gt; Hover mouse on top of the right or left side of the image to see the next or previous image respectively.&lt;br /&gt;&lt;br /&gt;You are browsing images from the article:&lt;br /&gt;&lt;span class=&quot;sigProPopupCaption&quot;&gt;LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92&lt;/span&gt;"><img alt="Click to enlarge image LGT-92-20.jpg" class="sigProImg" src="https://www.dragino.com/plugins/content/jw_sigpro/jw_sigpro/includes/images/transparent.gif" style="background-position: 50% 50%; margin: 0px; padding: 0px; border: currentColor; border-image: none; width: 56px; height: 42px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit; background-image: url(&quot;/cache/jw_sigpro/jwsigpro_cache_4cf136aec9_lgt-92-20.jpg&quot;); background-repeat: no-repeat;" title="Click to enlarge image LGT-92-20.jpg" /></a></span></span></li>
                        	<li class="sigProThumb" style="background: none !important; margin: 0px 2px 2px 0px; padding: 0px; border: currentColor !important; border-image: none !important; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; float: left; font-stretch: inherit;"><span class="sigProLinkOuterWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span class="sigProLinkWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><a class="sigProGalleriaLink sigProLink" href="https://www.dragino.com/media/k2/galleries/142/LGT-92_00.JPG" style="margin: 0px; padding: 0px; border: 4px solid rgb(238, 238, 238); border-image: none; width: 56px; height: 42px; color: rgb(51, 51, 51); line-height: inherit; overflow: hidden; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; display: block; position: relative; cursor: pointer; font-stretch: inherit; background-color: rgb(238, 238, 238);" target="_blank" title="&lt;b&gt;Navigation tip:&lt;/b&gt; Hover mouse on top of the right or left side of the image to see the next or previous image respectively.&lt;br /&gt;&lt;br /&gt;You are browsing images from the article:&lt;br /&gt;&lt;span class=&quot;sigProPopupCaption&quot;&gt;LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92&lt;/span&gt;"><img alt="Click to enlarge image LGT-92_00.JPG" class="sigProImg" src="https://www.dragino.com/plugins/content/jw_sigpro/jw_sigpro/includes/images/transparent.gif" style="background-position: 50% 50%; margin: 0px; padding: 0px; border: currentColor; border-image: none; width: 56px; height: 42px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit; background-image: url(&quot;/cache/jw_sigpro/jwsigpro_cache_4cf136aec9_lgt-92_00.jpg&quot;); background-repeat: no-repeat;" title="Click to enlarge image LGT-92_00.JPG" /></a></span></span></li>
                        	<li class="sigProThumb" style="background: none !important; margin: 0px 2px 2px 0px; padding: 0px; border: currentColor !important; border-image: none !important; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; float: left; font-stretch: inherit;"><span class="sigProLinkOuterWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span class="sigProLinkWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><a class="sigProGalleriaLink sigProLink" href="https://www.dragino.com/media/k2/galleries/142/LGT-92_10.JPG" style="margin: 0px; padding: 0px; border: 4px solid rgb(238, 238, 238); border-image: none; width: 56px; height: 42px; color: rgb(51, 51, 51); line-height: inherit; overflow: hidden; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; display: block; position: relative; cursor: pointer; font-stretch: inherit; background-color: rgb(238, 238, 238);" target="_blank" title="&lt;b&gt;Navigation tip:&lt;/b&gt; Hover mouse on top of the right or left side of the image to see the next or previous image respectively.&lt;br /&gt;&lt;br /&gt;You are browsing images from the article:&lt;br /&gt;&lt;span class=&quot;sigProPopupCaption&quot;&gt;LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92&lt;/span&gt;"><img alt="Click to enlarge image LGT-92_10.JPG" class="sigProImg" src="https://www.dragino.com/plugins/content/jw_sigpro/jw_sigpro/includes/images/transparent.gif" style="background-position: 50% 50%; margin: 0px; padding: 0px; border: currentColor; border-image: none; width: 56px; height: 42px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit; background-image: url(&quot;/cache/jw_sigpro/jwsigpro_cache_4cf136aec9_lgt-92_10.jpg&quot;); background-repeat: no-repeat;" title="Click to enlarge image LGT-92_10.JPG" /></a></span></span></li>
                        </ul>
                        </div>
                        </div>

                        <div class="iyProductsText" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; width: 380px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; float: right; font-stretch: inherit;">
                        <div class="itemFullText" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">
                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">The Dragino LoRaWAN GPS Tracker LGT-92 is an<span>&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">open source</strong></span><span>&nbsp;</span>GPS tracker base on Ultra Low Power STM32L072 MCU and SX1276/1278 LoRa Module.</p>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92 includes a<span>&nbsp;</span><strong style="font-weight: bold;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">low power GPS module L76-L</span></strong><span>&nbsp;</span>and<span>&nbsp;</span><strong style="font-weight: bold;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">9-axis accelerometer</span></strong><span>&nbsp;</span>for motion and attitude detection. The power for both of the GPS module and accelerometer can be controlled by MCU to achieve the best energy profile for different applications.</p>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">The LoRa wireless technology used in LGT-92 allows the user to send data and reach extremely long ranges at low data-rates.It provides ultra-long range spread spectrum communication and high interference immunity whilst minimising current consumption.It targets professional tracking service.</p>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.16px; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92 series products include two major variants:</span></p>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; list-style-type: disc; font-stretch: inherit;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">LGT-92-LI</strong></span>: is powered by<span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;"><span>&nbsp;</span>1000mA rechargeable</strong></span><span>&nbsp;</span>Li-on battery and charge circuit, which target for real time tracking with short tracking uplink.</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">LGT-92-AA</strong></span>: Disable the charge circuit to get the lowest power consumption and power directly by AA batteries. This is designed for asset tracking where only need to uplink a few times every day.</li>
                        </ul>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92 is an open source product, it is based on the STM32Cube HAL drivers and lots of libraries can be found in ST site for rapid development.</p>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">&nbsp;</p>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">&nbsp;</p>

                        <h3 style="margin: 1em 0px 0.5em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); text-transform: none; line-height: 1.2; text-indent: 0px; letter-spacing: normal; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 1.5em; font-style: normal; font-weight: bold; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 102, 255); line-height: 1.3em; font-family: arial, helvetica, sans-serif; font-size: x-large; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Specification:</span></h3>

                        <h3 style="margin: 1em 0px 0.5em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); text-transform: none; line-height: 1.2; text-indent: 0px; letter-spacing: normal; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 1.5em; font-style: normal; font-weight: bold; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">System:</h3>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; list-style-type: disc; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">STM32L072CZT6&nbsp;</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Flash:192KB</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">RAM:20KB</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">EEPROM:6KB</li>
                        </ul>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 153); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">GPS,L76-L:</strong></span></p>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; list-style-type: disc; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Acquisition: 16mA</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Tracking: 13mA</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Cold Start: &lt;35s</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">8uA@Backup Mode</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Warm Start: &lt;30s</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Accuracy: &lt; 2.5m CEP</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">ReHot Start: &lt;1s</li>
                        </ul>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 153); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">Accelerometer:</strong></span></p>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; list-style-type: disc; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">MPU9250 9-axis</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">triple-axis MEMS gyroscope</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">triple-axis MEMS accelerometer</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">triple-axis MEMS magnetometer</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">3.5mA operating current</li>
                        </ul>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 153); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">Power Comsuption:</strong></span></p>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; list-style-type: disc; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Sleeping Mode: 77uA&nbsp;<span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">&nbsp;(for&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92-LI),&nbsp;<span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">&nbsp;3uA (for&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92-AA)</span></span></li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Tracking: max: 38mA</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LoRa Transmit: 24 ~ 150mA</li>
                        </ul>
                        </div>
                        </div>
                        </div>

                        <div class="iyProductsPara" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        <div class="iyProductsContent" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">
                        <ul class="shadetabs" id="countrytabs" style="font: bold 14px/normal Verdana; margin: 1px 1.5em 0px 0px; padding: 3px 0px; border: 0px currentColor; border-image: none; text-align: left; vertical-align: baseline; list-style-type: none; font-size-adjust: none; font-stretch: normal;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: inline; font-stretch: inherit;"><a class="selected" href="https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html#" rel="country1" style="background: url(&quot;shadeactive.gif&quot;) repeat-x left top white; border-width: 1px; border-style: solid; border-color: rgb(229, 230, 231) rgb(229, 230, 231) white; margin: 0px 3px 0px 0px; padding: 3px 12px; top: 1px; color: rgb(45, 43, 43); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; position: relative; z-index: 1; cursor: pointer; font-stretch: inherit;">Features</a></li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: inline; font-stretch: inherit;"><a href="https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html#" rel="country2" style="background: url(&quot;shade.gif&quot;) repeat-x left top white; margin: 0px 3px 0px 0px; padding: 3px 12px; border: 1px solid rgb(229, 230, 231); border-image: none; color: rgb(45, 43, 43); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; position: relative; z-index: 1; cursor: pointer; font-stretch: inherit;">Specifications</a></li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: inline; font-stretch: inherit;"><a href="https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html#" rel="country3" style="background: url(&quot;shade.gif&quot;) repeat-x left top white; margin: 0px 3px 0px 0px; padding: 3px 12px; border: 1px solid rgb(229, 230, 231); border-image: none; color: rgb(45, 43, 43); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; position: relative; z-index: 1; cursor: pointer; font-stretch: inherit;">Documents</a></li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: inline; font-stretch: inherit;"><a href="https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html#" rel="country4" style="background: url(&quot;shade.gif&quot;) repeat-x left top white; margin: 0px 3px 0px 0px; padding: 3px 12px; border: 1px solid rgb(229, 230, 231); border-image: none; color: rgb(45, 43, 43); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; position: relative; z-index: 1; cursor: pointer; font-stretch: inherit;">Order Info</a></li>
                        </ul>

                        <div class="iyProductsTabContent" style="margin: 0px 0px 20px; padding: 30px 20px; border: 1px solid rgb(229, 230, 231); border-image: none; width: 658px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">
                        <div class="tabcontent" id="country1" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit;">
                        <h3 style="margin: 1em 0px 0.5em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); line-height: 1.2; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 1.5em; font-style: inherit; font-variant: inherit; font-weight: bold; vertical-align: baseline; font-stretch: inherit;">Features:</h3>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; list-style-type: square; font-stretch: inherit;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LoRaWAN 1.0.3 compliant</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Regular/ Real-time GPS tracking</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Built-in 9 axis accelerometer</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Motion sensing capability</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Power Monitoring</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Charging clip with USB port&nbsp;&nbsp;<span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">(for&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92-LI)</span></li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">1000mA Li-on Battery power (for&nbsp;LGT-92-LI)</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">2 x AA battery holder (for model LGT-92-AA)</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Tri-color LED, Alarm button</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Bands: CN470/EU433/KR920/US915/EU868/AS923/AU915</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">AT Commands to change parameters</li>
                        </ul>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); line-height: 19px; font-family: sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">&nbsp;</span></p>

                        <h3 style="margin: 1em 0px 0.5em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); line-height: 1.2; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 1.5em; font-style: inherit; font-variant: inherit; font-weight: bold; vertical-align: baseline; font-stretch: inherit;">Applications:</h3>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; list-style-type: disc; font-stretch: inherit;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Logistics and Supply Chain Management</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Smart Cities</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Smart Factory</li>
                        </ul>
                        </div>
                        </div>
                        </div>
                        </div>

                        */ 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation '115980a8-ad0c-45c2-8600-185ce2fae08e' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'; 
                        allocation '1c1d933a-a2f9-4b56-b40e-fdb4a74e6fce' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'; 
                        port 'Visual Out' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '4509f44c-b2e6-4b22-bd1a-4c990b7bb74b' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Visual Out'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LED_1'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Visual Out'.'4509f44c-b2e6-4b22-bd1a-4c990b7bb74b'); 
                        }  
                        port 'Lorawan' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '1266f1d6-bca2-4c7f-be27-f23a7181ae05' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Lorawan'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LORA_1'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Lorawan'.'1266f1d6-bca2-4c7f-be27-f23a7181ae05'); 
                        }  
                        port 'USB' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation 'e158d9e6-774a-4e44-8af1-1055e831e8e5' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'USB'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'Power_1'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'USB'.'e158d9e6-774a-4e44-8af1-1055e831e8e5'); 
                        }  
                        port 'PP 7_1' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '9603b1fa-0987-47e9-acf1-39bb9bba6c6f' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'PP 7_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'GPS In'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'PP 7_1'.'9603b1fa-0987-47e9-acf1-39bb9bba6c6f'); 
                        }  
                    }  
                    part 'HTCC AB02S' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation 'fd57ad72-1424-4747-b2fd-c5a3b61b8367' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery' ; 
                        allocation 'd41a185e-d314-4819-b32d-5a6aea7a5e31' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation' ; 
                        allocation '5f87c5ed-4d32-42dd-a46b-cf69026fb272' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal' ; 
                        allocation '4e645d34-69c2-48db-b93d-3c6a8288c2e2' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN' ; 
                        allocation 'c932bffe-5b17-4259-9aec-bf5f4659cf26' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light' ; 
                        allocation '2010c7e0-01a9-4674-8fc7-91ec3a3a06d7' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display' ; 
                        port 'LED_1' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation 'ce85ad07-9546-4247-8c44-94192b307d12' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'LED Out_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LED_1'; 
                            ref allocation '31b9731c-f789-4d32-8032-722f1ed2414d' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'.'FOP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LED_1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LED_1'.'ce85ad07-9546-4247-8c44-94192b307d12',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LED_1'.'31b9731c-f789-4d32-8032-722f1ed2414d'); 
                        }  
                        port 'Power_1' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'GPS In' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '2a9a316b-9df8-4932-9ed5-6b95131a3c03' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'GPS In_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'GPS In'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'GPS In'.'2a9a316b-9df8-4932-9ed5-6b95131a3c03'); 
                        }  
                        port 'CP 7_1' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '8c3a075d-a130-4cd3-8441-f2fc75c1684c' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'.'FOP 1_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'; 
                            ref allocation '33c1882d-e4a4-4f73-83bd-76ba5f2d8877' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'FIP 1_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'; 
                            ref allocation '0638b4d2-fddc-4c28-bf55-6c923de64e71' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'FOP 1_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'; 
                            ref allocation '07ba73f4-0148-4721-81a6-f29d1b54a05b' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'FIP 1_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'.'8c3a075d-a130-4cd3-8441-f2fc75c1684c',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'.'33c1882d-e4a4-4f73-83bd-76ba5f2d8877',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'.'0638b4d2-fddc-4c28-bf55-6c923de64e71',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'.'07ba73f4-0148-4721-81a6-f29d1b54a05b'); 
                        }  
                        port 'LORA_1' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation 'a533b7f1-b971-4bda-8839-23fd4880c6fd' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN Out_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LORA_1'; 
                            ref allocation 'd7d9b5c0-f93a-4f3c-9386-9430300c78f9' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN In_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LORA_1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LORA_1'.'a533b7f1-b971-4bda-8839-23fd4880c6fd',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LORA_1'.'d7d9b5c0-f93a-4f3c-9386-9430300c78f9'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'fd57ad72-1424-4747-b2fd-c5a3b61b8367',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'d41a185e-d314-4819-b32d-5a6aea7a5e31',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'5f87c5ed-4d32-42dd-a46b-cf69026fb272',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'4e645d34-69c2-48db-b93d-3c6a8288c2e2',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'c932bffe-5b17-4259-9aec-bf5f4659cf26',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'2010c7e0-01a9-4674-8fc7-91ec3a3a06d7'); 
                    }  
                    part 'Software' : PhysicalComponent { 
                        doc /*
                        <p><a href="https://github.com/dragino/LGT-92_-LoRa_GPS_Tracker">https://github.com/dragino/LGT-92_-LoRa_GPS_Tracker</a></p>

                        <p>&nbsp;</p>

                        */ 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        attribute :>> kind = PhysicalComponentKind::SOFTWARE_APPLICATION; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        allocation 'dac1c069-8875-4a1a-b180-a63895ed9616' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status' ; 
                        allocation '6b64c7a9-bf92-4e6a-a3f9-7018b1e7e9a5' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status' ; 
                        port 'CP 1_1' : ComponentPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                            ref allocation '590e33a6-3697-4121-a2d6-bf97da1afdb4' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 3_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'; 
                            ref allocation 'ff08bef7-3567-4c67-aa13-eaccacc6ea95' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 2_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'; 
                            ref allocation '0ea1295a-c5c2-4a7c-accc-660395b36d4a' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 4_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'; 
                            ref allocation '54210d3d-16b8-4584-aec0-61d8862f4a6d' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 1_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'.'590e33a6-3697-4121-a2d6-bf97da1afdb4',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'.'ff08bef7-3567-4c67-aa13-eaccacc6ea95',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'.'0ea1295a-c5c2-4a7c-accc-660395b36d4a',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'.'54210d3d-16b8-4584-aec0-61d8862f4a6d'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'dac1c069-8875-4a1a-b180-a63895ed9616',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'6b64c7a9-bf92-4e6a-a3f9-7018b1e7e9a5'); 
                    }  
                    part 'ISP' : PhysicalComponent { 
                        attribute :>> isActor = false; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> isHuman = false; 
                        attribute :>> isAbstract = false; 
                        port 'To Modem' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                        port 'To Cloud' : PhysicalPort { 
                            attribute :>> isDerived = false; 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isFinal = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isUnique = false; 
                            attribute :>> isOrdered = false; 
                        }  
                    }  
                    ref :>> ownedPhysicalLinks =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'2fe0fa69-0dad-42e1-9e31-5ea1afa9ca77',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'485dc158-d2a9-4466-9fa0-26de95f215e8',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'7b377cdb-4811-4f15-9373-1acbd7fbdc91',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'7ae30ed5-5223-48bb-8c4f-b60b736c1706',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'b4675f2f-18b9-4fcb-9241-3622742bc6c6',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'6ffe58b5-9f7f-4df6-ba3f-34cbc159967c',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'e02ac6f5-7a99-4f50-b0ea-31d9e46b8f67',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'bdaf8198-1ab6-461a-ae05-3cebf2ae2c0d',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'93b00a30-855e-46cc-9a7d-b0223b0706b0',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'393fbea6-0a33-4dff-a299-5679b9846f60',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'7825ab19-1f20-47c8-8937-8ae378e1c221'); 
                     
                    ref :>> ownedComponentExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'01d9d6bd-8ff2-4b08-b81c-eb53ca0f4d24',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'9816146f-21e2-4ce0-b03c-e1e8a1c94652',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'3cee67ff-9c15-4934-9765-3ba582ba24b6',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'3aeb8479-b78d-47d2-b567-fec0007a0b43',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'09ef2a7c-fa20-467f-a01c-bf92e0bbca7e'); 
                     
                     
                    ref :>> ownedPhysicalComponents =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Network',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Lora Devices',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Facilities',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Modem',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'ISP',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Software',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Text Device',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Email Device',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cell Network',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'ISP'); 
                }  
                part 'Operator' : PhysicalComponent { 
                    attribute :>> isActor = true; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    attribute :>> kind = PhysicalComponentKind::FACILITIES; 
                    attribute :>> isHuman = false; 
                    attribute :>> isAbstract = false; 
                    constraint 'f63eb821-3b95-4d30-b879-2da0b67dc902' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        ref :>> constrainedElements =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator');
                        
                    } 
                    allocation '7daaed28-3667-47fa-8307-3a9af4bdb6b1' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Monitor Alerts'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Monitor Alerts' ; 
                    allocation '37ce2318-d371-4772-b532-662d6e1b44da' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View Device Data'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View Device Data' ; 
                    port 'PP 1' : PhysicalPort { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                    }  
                    port 'CP 2' : ComponentPort { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                    }  
                    port 'PP 3' : PhysicalPort { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                    }  
                    port 'PP 4' : PhysicalPort { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                    }  
                    port 'CP 5' : ComponentPort { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                    }  
                    port 'CP 6' : ComponentPort { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                    }  
                    ref :>> ownedConstraints =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'f63eb821-3b95-4d30-b879-2da0b67dc902'); 
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'7daaed28-3667-47fa-8307-3a9af4bdb6b1',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'37ce2318-d371-4772-b532-662d6e1b44da'); 
                     
                     
                }  
                part 'Environment' : PhysicalComponent { 
                    attribute :>> isActor = true; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> isHuman = false; 
                    attribute :>> isAbstract = false; 
                    allocation '7405d456-cc49-4738-97a8-b3cfbae82e05' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence' ; 
                    allocation 'b542aa01-1540-460a-8bee-3fd550abb8f3' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display' ; 
                    port 'PP 1' : PhysicalPort { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                    }  
                    port 'PP 2' : PhysicalPort { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment'.'7405d456-cc49-4738-97a8-b3cfbae82e05',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment'.'b542aa01-1540-460a-8bee-3fd550abb8f3'); 
                     
                     
                }  
                part 'GPS' : PhysicalComponent { 
                    attribute :>> isActor = true; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> isHuman = false; 
                    attribute :>> isAbstract = false; 
                    allocation 'b86dddaa-7da0-488f-8a1a-a2e59d833e11' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals' ; 
                    port 'PP 1' : PhysicalPort { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                    }  
                    port 'CP 2' : ComponentPort { 
                        attribute :>> isDerived = false; 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isFinal = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isStatic = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isUnique = false; 
                        attribute :>> isOrdered = false; 
                        ref allocation '25019421-44f7-4052-bc2d-d290c79214c3' : PortAllocation
                            allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals'.'FOP 1'
                            to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS'.'CP 2'.'25019421-44f7-4052-bc2d-d290c79214c3'); 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS'.'b86dddaa-7da0-488f-8a1a-a2e59d833e11'); 
                }  
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
            } 
        } 
    } 
}