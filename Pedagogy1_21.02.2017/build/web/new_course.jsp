<%--
    Document   : index
    Created on : May 2, 2013, 11:22:57 AM
    Author     : Prasanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Pedagogy Project</title>
        <meta name="description" content="Pedagogy Project - powered by Intinno Technologies - National Mission Project on Education through ICT - Developing suitable pedagogical methods for various classes, intellectual calibres and research in e-Learning -Main Phase" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <!-- links to stylesheets and scripts -->
        <link href="CSS/style1.css" rel="stylesheet" type="text/css" />
        <script src="JavaScript/AC_RunActiveContent.js" type="text/javascript"></script>
        <script type="text/javascript"src="JavaScript/prototype.js"></script>
        <script type="text/javascript" src="JavaScript/main.js"></script>
        <script type="text/javascript" language="JavaScript" >
            function showHide(cp){
                if(document.getElementById(cp).style.display=="table-row")
                {
                    document.getElementById(cp).style.display="none";

                }
                else
                {
                    document.getElementById(cp).style.display="table-row";
                }
            }

        </script>
      </head>     <script type="text/javascript" language=JavaScript>         var message="Sorry, right-click has been disabled";            function clickIE() {if (document.all) {(message);return false;}}         function clickNS(e) {if             (document.layers||(document.getElementById&&!document.all)) {                 if (e.which==2||e.which==3) {(message);return false;}}}         if (document.layers)         {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}         else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}         document.oncontextmenu=new Function("return false")                </script>
    <body>

        <a name="top"></a>
        <div id="wrap">
            <div id="header">

                <div id="nav">

                    <ul>
                        <li class="active"><a href="pedagogy_main.jsp">Home</a></li>
                        <li ><a href="add.jsp">Submit Your EOI</a></li>
                        
                        <li><a href="existingcourse.jsp">Existing Courses</a></li>
                        <li><a href="pdf/Guidline.pdf">Developer Guide</a></li>
                        <li><a href="">Reviewer Guide</a></li>
                    </ul>
                </div>
                <!-- make sure you use a 770x230 image here! -->
                <div id="header-img">

                    <div align="center">
                        <div ><img src="Images/logo_ICT.jpg" alt=""/></div>
                    </div>


                </div>
            </div>
            <div align="center">
                <span  style="font-size: 27px;color:red">
                    <u>New Courses for Development</u>
                </span>
            </div>
            <br>


            <div id="main" class="fixed">

                <table align="center" style="vertical-align: top" width="100%" border="1" cellpadding="0" cellspacing="0">

                    <thead style="font-size: medium; background-color: #b9b9b9" align="center">
                        <tr>
                            <th>Sr. No.</th>
                            <th>Course Name</th>
                            <th>Type</th>
                        </tr>
                    </thead>
                   <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">1. Computer Science & Engineering</h3></td>
                    </tr>

                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course1');" style="cursor: pointer;"><h4>DIGITAL LOGIC DESIGN</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>

                    <tr id="course1" style=" display:none;">
                        <td colspan="3" align="justify" >


                            Switching Circuits: Logic families: TTL, nMOS, CMOS, dynamic CMOS and pass transistor logic (PTL) circuits, inverters and other logic gates, area, power and delay characteristics, concepts of fan-in, fan-out and noise margin. Switching theory: Boolean algebra, logic gates, and switching functions, truth tables and switching expressions, minimization of completely and incompletely specified switching functions, Karnaugh map and Quine-McCluskey method, multiple output minimization, representation and manipulation of functions using BDDs, two-level and multi-level logic circuit synthesis. Combinational logic circuits: Realization of Boolean functions using NAND/NOR gates, Decoders, multiplexers. logic design using ROMs, PLAs and FPGAs. Case studies. Sequential circuits: Clocks, flip-flops, latches, counters and shift registers, finite-state machine model, synthesis of synchronous sequential circuits, minimization and state assignment, asynchronous sequential circuit synthesis. ASM charts: Representation of sequential circuits using ASM charts, synthesis of output and next state functions, data path control path partition-based design.

                        </td>
                    </tr>

                    <tr><td align="center"><h4>2</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course2');" style="cursor: pointer;"><h4>DISCRETE STRUCTURES</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course2" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Propositional logic: Syntax, semantics, valid, satisfiable and unsatisfiable formulas, encoding and examining the validity of some logical arguments.Proof techniques: forward proof, proof by contradiction, contrapositive proofs, proof of necessity and sufficiency.Sets, relations and functions: Operations on sets, relations and functions, binary relations, partial ordering relations, equivalence relations, principles of mathematical induction. Size of a set: Finite and infinite sets, countable and uncountable sets, Cantos diagonal argument and the power set theorem, Schroeder-Bernstein theorem. Introduction to counting: Basic counting techniques - inclusion and exclusion, pigeon-hole principle, permutation, combination, summations. Recurrence relation and generating function, Algebraic structures and morphisms: Algebraic structures with one binary operation - semigroups, monoids and groups, congruence relation and quotient structures. Free and cyclic monoids and groups, permutation groups, substructures, normal subgroups. Algebraic structures with two binary operations - rings, integral domains and fields. Boolean algebra and Boolean ring. Introduction to graphs: Graphs and their basic properties- degree, path, cycle, subgraphs, isomorphism, Eulerian and Hamiltonian walks, graph coloring, planar graphs, trees.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>3</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course3');" style="cursor: pointer;"><h4>DATA STRUCTURES & ALGORITHMS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course3" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Introduction to digital computers; introduction to programming, variables, assignments; expressions; input/output; conditionals and branching; iteration; functions; recursion; arrays; introduction to pointers; character strings; time and space requirements; searching and sorting; structures; introduction to data-procedure encapsulation; dynamic allocation; linked structures; introduction to data structures, stacks and queues, Tree, Asymptotic complexity, Greedy, Dynamic Programming.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>4</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course4');" style="cursor: pointer;"><h4>COMPUTER ORGANIZATION & ARCHITECTURE</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course4" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Basic functional blocks of a computer: CPU, memory, input-output subsystems, control unit. Instruction set architecture of a CPU - registers, instruction execution cycle, RTL interpretation of instructions, addressing modes, instruction set. Case study - instruction sets of some common CPUs. Data representation: signed number representation, fixed and floating point representations, character representation. Computer arithmetic - integer addition and subtraction, ripple carry adder, carry look-ahead adder, etc. multiplication - shift-and-add, Booth multiplier, carry save multiplier, etc. Division - restoring and non-restoring techniques, floating point arithmetic.CPU control unit design: hardwired and micro-programmed design approaches, Case study - design of a simple hypothetical CPU. Memory system design: semiconductor memory technologies, memory organization. Peripheral devices and their characteristics: Input-output subsystems, I/O transfers - program controlled, interrupt driven and DMA, privileged and non-privileged instructions, software interrupts and exceptions. Programs and processes - role of interrupts in process state transitions. Performance enhancement techniques: Pipelining: Basic concepts of pipelining, throughput and speedup, pipeline hazards. Memory organization: Memory interleaving, concept of hierarchical memory organization, cache memory, cache size vs. block size, mapping functions, replacement algorithms, write policies.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>5</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course5');" style="cursor: pointer;"><h4>COMPILER DESIGN</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course5" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Introduction: Phases of compilation and overview. Lexical Analysis (scanner): Regular languages, finite automata, regular expressions, from regular expressions to finite automata, scanner generator (lex, flex). Syntax Analysis (Parser): Context-free languages and grammars, push-down automata, LL(1) gram-mars and top-down parsing, operator grammars, LR(O), SLR(1), LR(1), LALR(1) grammars and bottom-up parsing, ambiguity and LR parsing, LALR(1) parser generator (yacc, bison)Semantic Analysis: Attribute grammars, syntax directed definition, evaluation and flow of attribute in a syntax tree. Symbol Table: Its structure, symbol attributes and management. Run-time environment: Procedure activation, parameter passing, value return, memory allocation, and scope. Intermediate Code Generation: Translation of different language features, different types of intermediate forms. Code Improvement (optimization): Analysis: control-flow, data-flow dependence etc.; Code improvement local optimization, global optimization, loop optimization, peep-hole optimization etc. Architecture dependent code improvement: instruction scheduling (for pipeline), loop optimization (for cache memory) etc. Register allocation and target code generation.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>6</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course6');" style="cursor: pointer;"><h4>OPERATING SYSTEMS </h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course6" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Evolution of Operating Systems, Structural overview, Concept of process and Process synchronization, Process Management and Scheduling, Hardware requirements: protection, context switching, privileged mode; Threads and their Management; Tools and Constructs for Concurrency, Detection and Prevention of deadlocks, Dynamic Resource Allocation, Design of IO systems, File Management, Memory Management: paging, virtual memory management, Distributed and Multiprocessor Systems, Case Studies.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>7</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course7');" style="cursor: pointer;"><h4>FILE STRUCTURES</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course7" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Fundamental of File Processing Operations, Fundamental File Structure Concepts, Managing Files and Records, Indexing, Consequential Processing and sorting of Large Files, Multilevel Indexing and B-Trees, Indexed Sequential File Access and B+ Trees, Hashing, Extendible Hashing, External sorting, Secondary storage algorithms.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>8</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course8');" style="cursor: pointer;"><h4>PRINCIPLES OF PROGRAMMING LANGUAGES</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course8" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Overview of different programming paradigms e.g. imperative, object oriented, functional, logic and concurrent programming. Syntax and semantics of programming languages: A quick overview of syntax specification and semiformal semantic specification using attribute grammar. Imperative and OO Languages: Names, their scope, life and binding. Control-flow, control abstraction; in subprogram and exception handling. Primitive and constructed data types, data abstraction, inheritance, type checking and polymorphism. Functional Languages: Typed-calculus, higher order functions and types, evaluation strategies, type checking, implementation, case study. Logic Programming Languages: Computing with relation, first-order logic, SLD-resolution, unification, sequencing of control, negation, implementation, case study. Concurrency: Communication and synchronization, shared memory and message passing, safety and liveness properties, multithreaded programs. Formal Semantics: Operational, denotational and axiomatic semantics of toy languages, languages with higher order constructs and types, recursive type, subtype, semantics of non-determinism and concurrency.
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="background-color: #e5e5e5" height="15"></td>
                    </tr>
                    <tr><td align="center"><h4>9</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course9');" style="cursor: pointer;"><h4>OBJECT ORIENTED MODELING AND DESIGN</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course9" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Object Model, Classification, E-R Diagram, Class Diagram, Sequence diagram, Process Diagrams, Management and Planning, Quality Assurance and Metrics, Benefits and Risks of Object Oriented Design, Applications, Client-Server Computing.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>10</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course10');" style="cursor: pointer;"><h4>MICROPROCESSORS AND INTERFACING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course10" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Historical background; organization and architectural features of microprocessor and microcontrollers; the instruction set: instruction format, addressing modes; assembly language programming of 8085 and 8051; interfacing of memory devices; data transfer techniques and I/O ports; interfacing of keyboard and display devices; programmable interrupt and DMA controllers; interfacing of sensors, transducers, actuators, A/D and D/A Converters, analog signal conditioning circuits, data acquisition systems; standard interfaces, RS232, USB; development aids and troubleshooting techniques; application examples; advanced microprocessors and microcontrollers. Laboratory: Assembly and machine language programming, signal generators, interfacing basic I/O devices like keypad, LED display, usage of timers and USART peripherals, multi-port device access, stepper motor movement control, DC motor speed control, bootstrap programming and interfacing various peripherals for embedded applications; building a complete microcontroller-based system.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>11</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course11');" style="cursor: pointer;"><h4>GAME THEORY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course11" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Basic solution concepts and computing and computational Issues,- The complexity of Nash Equilibria, Equilibrium Computation for Tow-Player Games in Strategic and Extensive Form, Learning, Regret Minimization and Equilibria, Combinatorial Algorithms for Market Equilibria, Computation of Market Equilibria by Convex Programming, Graphical Games.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>12</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course12');" style="cursor: pointer;"><h4>ARTIFICIAL INTELLIGENCE</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course12" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Problem solving by search: state space, problem reduction, game playing, constraint satisfaction; Automated Reasoning: proposition and first order logic, inference and deduction, resolution refutation, answer extraction, knowledge based systems, logic programming and constrained logic programming, non-monotonic reasoning; Planning: state-space, plan space and partial order planning, planning algorithms; Reasoning under Uncertainty: probabilistic reasoning, belief networks; Learning: inductive learning, decision trees, logical approaches, computational learning theory, Neural networks, reinforcement learning; Intelligent Agents; Natural Language Understanding; Applications.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>13</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course13');" style="cursor: pointer;"><h4>SOFT COMPUTING TECHNIQUES</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course13" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Introduction to soft computing: Neural Networks, Fuzzy Sets, Genetic Algorithm, Rough sets and Probabilistic reasoning. Applications of soft computing in pattern recognition, control systems and image processing. Hybrid systems - Applications of Fuzzy -neural, Neuro-evolutionary and Rough-fuzzy-neural approaches. Knowledge discovery in databases, Data mining and web mining using soft computing techniques. Soft computing approaches to information systems project management.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>14</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course14');" style="cursor: pointer;"><h4>PARALLEL ALGORITHMS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course14" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Fundamentals: Models of parallel and distributed computation, complexity measures; The PRAM Model: balancing, divide and conquer, parallel prefix computation, pointer jumping, symmetry breaking, list ranking, sorting and searching, graph algorithms, parallel complexity and complexity classes, lower bounds; Interconnection Networks: topologies (arrays and mesh networks, trees, systolic networks, hypercubes, butterfly) and fundamental algorithms, matrix algorithms, sorting, graph algorithms, routing, relationship with PRAM models; Asynchronous Parallel Computation; Distributed Algorithms: models and complexity measures, safety, liveness, termination, logical time and event ordering, global state and snapshot algorithms, mutual exclusion, clock synchronization, election, termination detection, routing, Distributed graph algorithms; Applications of Distributed algorithms.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>15</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course15');" style="cursor: pointer;"><h4>CLOUD AND BIG DATA ANALYTICS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course15" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Role of Networks in Cloud computing, protocols used, Role of Web services Service Models (XaaS) Infrastructure as a Service(IaaS) Platform as a Service(PaaS) Software as a Service(SaaS) Deployment Models Public cloud Private cloud Hybrid cloud Community cloud4Infrastructure as a Service(IaaS), Google File System, Search Engine, MapReduce, Amazon Web Services, SOAP API, Query API, Storage Services, S3, EC2, Amazon Elastic Block Storage, Web application design, Mysql servers, Amazon cloud watch, Monitoring tools.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>16</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course16');" style="cursor: pointer;"><h4>ALGORITHM ANALYSIS AND DESIGN</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course16" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Algorithmic paradigms: Dynamic Programming, Greedy, Branch-and-bound; Asymptotic complexity, Amortized analysis; Graph Algorithms: Shortest paths, Flow networks; NP-completeness; Approximation algorithms; Randomized algorithms; Linear programming; Special topics: Geometric algorithms (range searching, convex hulls, segment intersections, closest pairs), Numerical algorithms (integer, matrix and polynomial multiplication, FFT, extended Euclids algorithm, modular exponentiation, primality testing, cryptographic computations), Internet algorithms (text pattern matching, tries, information retrieval, data compression, Web caching).
                        </td>
                    </tr>
                    <tr><td align="center"><h4>17</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course17');" style="cursor: pointer;"><h4>PATTERN RECOGNITION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course17" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Classification based on bayes decision theory, linear classifiers, Non-linear classifiers, Feature Selection, Dimensionality reduction and feature generation, Template Matching, Markov chain and hidden markov model, System evaluation, Unsupervised learning and clustering.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>18</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course18');" style="cursor: pointer;"><h4>DISTRIBUTED COMPUTING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course18" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Introduction to Mobile Computing and Applications, Fundamental of wireless transmissions, Medium Access Control Layer and WLAN, Handoff , Mobile Network Layer (Routing Protocols and Mobile IP), Mobile Transport Layer (Mobile TCP), Mobile Ad hoc Networks (MANET), Data Management in Wireless Mobile Environments (Mobile Data Caching, Mobile Cache Maintenance Schemes), Mobility and Location based Services, User Interface Development for Mobile Applications (using UML), UML based Development Cycle for Mobile Applications,  Mobile Computing Architectures, Mobile Agents and Peer-to-Peer Architecture, Wireless Access Protocol, Mobile OS, Mobile Security.
                        </td>
                    </tr>

                    <tr><td align="center"><h4>19</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course19');" style="cursor: pointer;"><h4>COMPUTER GRAPHICS AND MULTIMEDIA SYSTEMS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course19" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Computer graphics: Display of entities, Geometric computation and representation, Graphics Environments; Working Principles of display devices, Display of colors, Display and drawing of graphics primitives: point, line, polygon, circle, curves and text; Coordinate Conventions: world coordinates, device coordinates, normalized device coordinates, view-port and window, zooming and panning by changing coordinate reference frames; Computations on polygons,  point Transformations in 2D and 3D,  Projection, Volume and Surface Representation, Hidden surface and line elimination: Elimination of back surfaces, painters algorithms, Binary Space Partitioning Tree; Rendering and Visualization: Shading model, Constant, Goraud and Phong Shading, Ray tracing algorithm, Radiosity Computation; Computer Animation: fundamental concepts.
                            Multimedia systems: Source representation and compression techniques text, speech and audio, still image and video; Graphics and animation; Multi-modal communication; Multimedia communication, video conferencing, video-on-demand broadcasting issues, traffic shaping and networking support; Transcoding; Multimedia OS and middleware; Synchronization and QoS; Multimedia servers, databases and content management; Multimedia information system and applications.

                        </td>
                    </tr>
                    <tr><td align="center"><h4>20</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course20');" style="cursor: pointer;"><h4>WEB PROGRAMMING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course20" style=" display:none;">
                        <td colspan="3" align="justify" >

                            The semantic web vision, overview of techniques and standards, semantic web architecture, ontology languages, ontology development using protégé editor, ontology querying, ontology reasoning and description logic (DL), semantic web application areas, ontology programming with jena API, Ontology Engineering.

                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">2. Electronics and Communications Engineering</h3></td>
                    </tr>

                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course21');" style="cursor: pointer;"><h4>SIGNALS AND SYSTEMS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course21" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Classification of signals and systems, various system representation techniques, differential, difference and state-space representations, Fourier transforms and series, application to analysis of systems, Laplace transform, its properties, and its application to system analysis, Z- transforms, its properties and applications, Random variables and random process, characterization of random variables and random process, linear systems and random signals..
                        </td>
                    </tr>
                    <tr><td align="center"><h4>2</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course22');" style="cursor: pointer;"><h4>ANALOG ELECTRONIC CIRCUITS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course22" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Review of working of BJT, JFET and MOSFET and their small signal equivalent Circuit with particular emphasis on MOSFETs Biasing of BJT, JFET and MOSFET circuits; Analysis and Design of various single stage amplifier configurations; Multi Stage Amplifiers; Differential Amplifier and Operational Amplifier; Feedback Amplifiers; Tuned Amplifiers; Oscillators. Anslysis of MOSFET circuits
                        </td>
                    </tr>
                    <tr><td align="center"><h4>3</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course23');" style="cursor: pointer;"><h4>COMPUTER ARCHITECTURE</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course23" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Organization of a Computer: von Neumann and Harvard architecture; Instruction Set Architecture: RISC and CISC processors; Computer Arithmetic: fixed point and floating point arithmetic; Design of ALU: hardware algorithms for addition, multiplication and division of fixed point and floating point numbers; Processor design: Data Path and Control Design, Microprogramming, Exception Processing, Pipelining; Memory Organization: memory hierarchy, cache organization, virtual memory; System Design: bus structure, bus transactions; Input-output Systems: programmed I/O, DMA and interrupt driven I/O. Illustrations with examples of CISC processors from Intel and RISC processors like MIPS and ARM.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>4</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course24');" style="cursor: pointer;"><h4>DIGITAL COMMUNICATIONS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course24" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Matched Filter, Error Rate due to Noise. Inter-symbol Interference, Nyquist’s Criterion, Duobinary Signaling. Optimum Linear Receiver. Geometric Representation of Signals. Coherent Detection of Signals in Noise, Probability of Error. Coherent Digital Modulation Schemes: MPSK, MFSK, MQAM; Error Analysis. Non-coherent FSK, Differential PSK. Comparison of Digital Modulation Schemes, Bandwidth Efficiency. Pseudo-Noise Sequences and Spread Spectrum. Information Theory, Entropy, and Source-Coding.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>5</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course25');" style="cursor: pointer;"><h4>DIGITAL SIGNAL PROCESSING</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course25" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Review of Signals and Systems, Sampling and data reconstruction processes. Z transforms. Discrete linear systems. Frequency domain design of digital filters. Quantization effects in digital filters. Discrete Fourier transform and FFT algorithms. High speed convolution and its application to digital filtering.
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="background-color: #e5e5e5" height="15"></td>
                    </tr>
                    <tr><td align="center"><h4>6</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course26');" style="cursor: pointer;"><h4>NETWORK ANALYSIS AND SYNTHESIS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course26" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Analysis and Synthesis of circuits, structures, realizability and immitance functions, one port and transfer functions, filter design
                        </td>
                    </tr>
                    <tr><td align="center"><h4>7</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course27');" style="cursor: pointer;"><h4>RF CIRCUITS AND MICROWAVE ENGINEERING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course27" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Review of EM theory: Maxwell’s equations, plane waves in dielectric and conducting media, energy and power, Transmission lines and waveguides: closed and dielectric guides, planar transmission lines and optical fibre, Network analysis: scattering matrix other parameters, signal flow graphs and network representation. Impedance matching and tuning, Analysis of planar transmission lines, Analysis of design of passive components.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>8</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course28');" style="cursor: pointer;"><h4>ANTENNA THEORY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course28" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Antennas: Introduction to various types of antennas. Fundamentals ofelectromagnetic radiation, radiation from thin wires and small loops. Different types of linear arrays. Pattern multiplication, long wire antennas, aperture antennas. Waveguides.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>9</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course29');" style="cursor: pointer;"><h4>STATISTICAL SIGNAL PROCESSING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course29" style=" display:none;">
                        <td colspan="3" align="justify" >

                            To provide an introduction to fundamentals of statistical characterization and analysis of signals, ideas of estimation, optimal linear filtering, geometric ideas, autocorrelation matrices and their properties, eigen- analysis, linear prediction, KL-expansion, factorization of autocorrelation matrices, Kalman filtering, least-squares filtering, adaptive filtering theory, LMS, RLS, and other algorithms, Singular Value Decomposition SVD, fundamentals of array signal processing.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>10</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course30');" style="cursor: pointer;"><h4>OPTICAL  COMMUNICATION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course30" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Introduction to optical communication, review of optical sources, fiber and detector, optical signaling schemes viz., IM, PL, PCM, PCM/PL, digital PPM, PFM, PAM. Various receiver configurations - direct detection, homodyne and heterodyne receivers, Noise sources in optical communication - modal noise, speckle noise, shot noise, phase noise, thermal noise, Integrated and transimpedance amplifiers, optical line coding, performance evaluation of optical receivers for various modulation and demodulation schemes and their comparative study. Diversity receivers-phase and polarization diversities. Optical fiber link design, fiber optics networks, introduction to optical space communication.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>11</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course31');" style="cursor: pointer;"><h4>CODING THEORY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course31" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Measure of information; Source coding; Communication channel models; Channel Capacity and coding; Block codes; Cyclic codes; BCH codes; Reed Solomon codes; Convolution codes; Trellis coded modulation; Introduction to cryptography.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>12</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course32');" style="cursor: pointer;"><h4>OPTIMUM CONTROL THEORY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course32" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Maximization of functional of a single and several functions using calculus of variations, Constrained extremals, Necessary conditions for optimal control, Linear regulator problems, Pontryagin’s minimum principles and state inequality constraints. Minimum time problems, Minimum control effort problems, Singular intervals in optimal control problems, The principle of optimality, Application of the principle of optimality to decision making, Dynamic programming applied to routing problems, Computational steps for solving optimal control problems using dynamic programming, Discrete linear regulator problem, Hamilton -Jacobi -Bellman Equation, Numerical Techniques to determine optimal trajectories, Optimal control of distributed parameter systems.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>13</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course33');" style="cursor: pointer;"><h4>SATELLITE COMMUNICATION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course33" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Satellite systems basics, satellite channel, earth station and satellite equipment, different modulation and access techniques, examples of different satellite systems.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>14</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course34');" style="cursor: pointer;"><h4>ROBOTICS AND AUTOMATION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course34" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Basic component of Robotic systems. Kinematics of manipulators, Selection of Coordinate frames, Transformations. Solution of kinematics and manipulator dynamics. Newton-Euler dynamic formulations. Path planning. Position, velocity and force control, Computed Torque control. Linear and Nonlinear controller design of robot. Introduction to robot vision. Application of computer controlled robot in manufacturing and programmable automation.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>15</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course35');" style="cursor: pointer;"><h4>INFORMATION THEORY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course35" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Entropy, relative entropy, and mutual information. Asymptotic equipartition property. Entropy rates of a stochastic process, Markov chains. Data compression: Kraft inequality, Huffman codes. Channel capacity: symmetric channels, channel coding theorem, Fano’s inequality, feedback capacity. Differential entropy. The Gaussian channel: bandlimited channels, channels with coloured Gaussian noise, Gaussian channels with feedback. Rate distortion theory: rate distortion function, strongly typical sequences, computation of channel capacity. Network information theory: Gaussian multiple user channels, the multiple access channel, encoding of correlated sources, the broadcast channel, the relay channel, source coding and rate distortion with side information, multi-terminal networks.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>16</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course36');" style="cursor: pointer;"><h4>ANALOG INTEGRATED CIRCUITS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course36" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Review of basic amplifiers. Current Mirrors, Reference Current and Voltage Sources. CMOS Operational Amplifier: Structure, Analysis and Design, Frequency Response and Compensation Techniques. Switched Capacitor Circuits: Principles of operation, Filter and non filter applications. Sample and Hold Circuits, Comparators. ADC: Characterization, Types of ADC and their relative merits and demerits, Design issues. DAC: Characterization, Types of DAC and their relative merits and demerits, Design issues.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>17</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course37');" style="cursor: pointer;"><h4>COMPUTER NETWORKS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course37" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Review of data communication techniques. Data transmission, line coding, error control coding. Data switching, circuit switching, message and packet switching. Network model ISO-OSI model, primitives and services. Elements of queuing. Data link control Simplex, pipelined and sliding window protocols, simplex performance analysis. X 25 data link layer. Random access techniques. Pure, slotted and finite population ALOHAs. Stability in ALHOAs. Routing and congestion control static, adaptive, centralized and distributed routing procedures, congestion control. Local Area Networks LAN topologies and protocols, IEEE 802.x protocols, implementation and performance issues. High speed LANs. Transport layer. Quality of service transport classes. Design issues, buffer management, synchronization. Session and presentation layer, Synchronization issues, formatting, data compression, data security.
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">3. Electrical Engineering</h3></td>
                    </tr>

                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course38');" style="cursor: pointer;"><h4>ELECTRICAL MEASUREMENTS AND INSTRUMENTATION</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course38" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Sensitivity of d.c bridge, measurement of low and high resistances, d.c. potentiometer, principles of a.c. bridges for measurement of L and C; Instrument specifications and error analysis; Extension of Instrument range: CT and PT. Arsonval Galvanometer, moving coil meters, dynamometer type wattmeter and induction type energymeter. Electronic voltmeter, precision rectifiers, true r.m.s voltmeter; basics of digital measurements: A/D and D/A converters, programmable gain amplifier- auto-ranging; comparators and function generators; elements of digital multimeter; Hall effect sensor, clamp-on meter; solid state energymeter, frequency, phase angle and time period measurement. Cathode Ray Oscilloscope, Digital Storage Oscilloscope.Sample and Hold circuits, Data Acquisition Systems.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>2</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course39');" style="cursor: pointer;"><h4>POWER ELECTRONICS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course39" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Power conversion with efficient, high frequency,lightweight converters;Power electronic converters classifications and scope;Power semiconductor switches: power/fast diodes, SCR, and transistors(BJT, MOSFET and IGBT) Ratings, static and dynamic characteristics, drive and switching aid circuits and cooling; isolation; protection;DC to DC conversion: Choppers: non-isolated: Buck, Boost and Buck-Boostconverters; circuit configuration and analysis with; continuous anddiscontinuous loads; H-bridge converter multi-quadrant operation;isolated: forward, fly-back converters; example of a typical drivecircuit;AC to DC conversion: Rectifiers: controlled/half-controlled/uncontrolled:single phase and three phase operation, Operation with R, R-L, back emfload; power factor, harmonics and effect of source inductance; Cascadeoperation; dual converters; a typical trigger / drive circuit;DC to AC conversion: Inverters: current source and voltage sourceinverters, active and reactive power handling; single phase and threephase voltage source and PWM inverters; PWM techniques; active front-end rectifier; a typical trigger / drive circuit;AC to AC conversion: Single phase AC static switches; transient-free switching of inductive loads; voltage regulators; cycloconverter;
                        </td>
                    </tr>
                    <tr><td align="center"><h4>3</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course40');" style="cursor: pointer;"><h4>ELECTROMAGNETIC THEORY AND APPL</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course40" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Fundamentals of electromagnetics including transmission lines, time varying fields, plane waves, radiation, waveguides & basic antennas, radar fundamentals. Applications in area of satellite communications & radar sensors. Maxwell's equations represent a fundamental unification of electric and magnetic fields predicting electromagnetic wave phenomena by which all wireless (and guided) telecommunications systems operate. It provides the background to many continuing specialist courses that implement the results of this course e.g. microwave components, photonics, fiber optics, radar, antennas. The purpose of this course is to introduce electromagnetics from a wave viewpoint and give a unifying description both qualitatively and quantitavely of the subject demonstrating how it impacts on all specialities within electrical engineering.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>4</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course41');" style="cursor: pointer;"><h4>COMPUTER ARCHITECTURE AND OPERATING SYSTEM</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course41" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Architecture: Basic organization, fetch-decode-execute cycle, data path and control path, instruction set architecture, I/O subsystems, interrupts, memory hierarchy, overview of pipelined architectureOperating systems: An overview, process management, user and supervisor modes, process synchronization, semaphores, memory management, virtual memory, file systems, I/O systems.Issues in multiprocessing environments.References1.David A. Patterson and John L. Hennessy, Computer Organization and Design: The Hardware/Software Interface, Elsevier.2.Carl Hamachar, Zvonco Vranesic and Safwat Zaky, Computer Organization, McGraw-Hill.3.John P. Hayes, Computer Architecture and Organization, McGraw-Hill.4.Avi Silberschatz, Peter Galvin, Greg Gagne, Operating System Concepts, Wiley Asia Student Edition.5.William Stallings, Operating Systems: Internals and Design Principles, Prentice Hall of India.
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="background-color: #e5e5e5" height="15"></td>
                    </tr>
                    <tr><td align="center"><h4>5</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course42');" style="cursor: pointer;"><h4>ADVANCED CONTROL SYSTEMS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course42" style=" display:none;">
                        <td colspan="3" align="justify" >

                            •	Modelling of physical systems
                            •	Concepts of state, state-space
                            •	 Controllability and observability
                            •	Sensitivity and error analysis
                            •	Nonlinear systems
                            •	Singular points
                            •	Phase plane analysis
                            •	Lyapunov stability
                            •	Describing functions
                            •	On-off and dual mode systems
                            •	Sampled Data Systems
                            •	Single Loop Controller design
                            •	Multi-loop Controller designs
                            •	Computer control systems
                        </td>
                    </tr>
                    <tr><td align="center"><h4>6</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course43');" style="cursor: pointer;"><h4>ADVANCE ELECTRICAL MACHINES</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course43" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Three winding transformer; Unbalanced operation of three phase transformer; Switching-in transients and mechanical forces.Electromechanical energy conversion: Field energy- energy and co-energy; Torque/force in a singly excited and multiple excited electromechanical systems and applications, AC windings.Circuit analysis of electrical machines: Development of circuit models from dc machine and synchronous machine. Impedance matrix; instantaneous and phasor variables; real-coil and pseudo-stationary coil, expressions for torque and power, transformation of variables with power invariance, examples; general two-axis machine. Extension of two-axis models to different machines.D.C machines: Flux and mmf waves; Commutation and armature reaction; Dynamic equations, block diagrams and transfer functions.Induction machines: Deep-bar and double-cage construction; Machine equations in stationary reference frame (d-q axis model), dynamic and steady state performance, behavior under asymmetrical supply voltages.Synchronous machines: Winding inductances; Machine equations in rotor reference frame (d-q axis model); Sudden three phase short circuit and transient circuit model; Steady state operation; Synchronous machine dynamics.Reluctance Machines: Synchronous reluctance, stepping motors and switched reluctance machines, principles of operation and models for operating characteristics. Steady-state and dynamic performance.PM machines: Permanent magnet material, Basic analysis of magnetic circuit with permanent magnets, Steady-state and dynamic performance of PM synchronous machines and Brushless DC machines.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>7</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course44');" style="cursor: pointer;"><h4>POWER SYSTEMS TRANSIENTS AND PROTECTION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course44" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Transients in lumped parameter and distributed parameter circuits-wave equations; Multi-conductor systems, switching surge studies -Dommels method, EMTP. Frequency domain approach. Surge response of transformers. Overvoltage mitigation. Surge Arresters. Insulation co-ordination. Philosophy of power system protection, Relaying Instrumentation-characteristics of CT and PT. Overview of computer relaying, hardware organization, Algorithm development, Applications, Integration to substation function, Adaptive protection philosophy.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>8</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course45');" style="cursor: pointer;"><h4>OPTO-ELECTRONICS BASED INSTRUMENTATION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course45" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Introduction to Electromagnetic field theory, Ray and wave optics, Polarization and Isotropic and anisotropic media. Opto electronic devices: Sources-LED, Laser, Laser diode, Broadband calibration sources, Detectors-Photodiode-P-N, P-I-N, Photo multiplier tubes and APD, Broadband thermal detector; Modulators-Intensity, Polarization, Phase, Read out schemes for modulation-Polarimeter, interferometer. Transportation media: Waveguide theory-Slab wave guide, scalar wave equation. Optical fibre as cylindrical waveguide, Optical fibre Characteristics- Absorption and dispersion, fibre-optic polarizer. Optoelectronic sensors and system- Sensor as a modulator, bulk modulator, fibre-optic modulator. Sensing Principles-Electrooptic and magneto-optic (polarimetric and Interferrometric), magnetostriction based sensors, Distributed fibre-optic sensors-OTDR and OFDR principles in temperature measurement, Fibre -Optic Gyro. Holographic measurement and its biomedical applications. Optoelectronic integrated circuit and Integrated optic sensor.
                        </td>
                    </tr>

                    <tr><td align="center"><h4>9</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course46');" style="cursor: pointer;"><h4>DIGITAL CONTROL</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course46" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Overview of design approaches, continuous versus digital control, sampling process, effect of sampling rate. Calculus of difference equations. Z-transform. Signal flow graphs. State space approach: Controllability, Observability, Discretization of continuous transfer functions; Digital filter properties. Controller design using transformation techniques: Z-plane specifications. Design in the w, w’ domain. PID controller. Deadbeat controller. Root Locus design. State space methods: Pole placement design, stabilization and all stabilizing controllers. Observer design. Infinite time optimal regulator, Stability and tracking in SD systems, Quantization effects: limit cycles and dither. Sample rate reduction. Multi-rate sampled data system and stability studies. Design of digital controller using fast output sampling. Microprocessor and DSP control: Mechanization of control algorithms. Iterative computation via parallel, direct, canonical, cascade realization; Effects of computing time. Systems with time delay. Case studies.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>10</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course47');" style="cursor: pointer;"><h4>RENEWABLE AND DISTRIBUTED ENERGY SYSTEMS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course47" style=" display:none;">
                        <td colspan="3" align="justify" >


                        </td>
                    </tr>
                    <tr><td align="center"><h4>11</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course48');" style="cursor: pointer;"><h4>ENERGY MANAGEMENT AND ENERGY Analysis</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course48" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Energy Scenario: Primary energy resources, Commercial and Non-commercial energy, commercial energy production, final energy consumption, energy needs of growing economy, long term energy scenario, energy pricing, energy sector reforms, energy and environment. Energy management : Definition, significance and objectives of energy management, principle of energy management , sectors of supply side management , Energy and economy, electricity tariff, load management and maximum demand control, power factor improvement, selection and location of capacitors ,optimizing the input energy requirements, fuel and energy substitution. Energy strategies and energy planning: Energy Action Planning: Key elements, force field analysis, Energy policy purpose, Energy planning flow for supply side, essential data for supply side energy planning, roles and responsibilities of energy manager, Energy Analysis: Definition, need of energy Analysis, types of energy Analysis, intermediate and comprehensive energy Analysis, end use of energy consumption profile, procedure of energy auditing, site testing and measurement. Energy security, bench marking, energy performance, matching energy use to requirement, maximizing system efficiencies, energy Analysis instruments, Energy Conservation Act-2001, Energy Conservation and Recycling: Energy conservation and its importance, Listing of energy conservation opportunities (ECOs ),Electrical ECOs, ECOs in process industry, small industries building and shopping complexes , waste management , Recycling of discarded materials and energy recycling Energy Monitoring and Targeting: Defining monitoring and targeting, elements of monitoring and targeting, data and information-analysis, On line energy monitoring: Various aspects and techniques of on line energy monitoring,  Material and Energy balance: Facility as an energy system, methods for preparing process flow, material and energy balance diagrams. Financial analysis techniques-simple payback period, return on investment, net present value, internal rate of return, cash flows, risk and sensitivity analysis, financing options, energy performance contracts.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>12</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course49');" style="cursor: pointer;"><h4>ADVANCED POWER SYTEM</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course49" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Power system restructuring and its implications Modelling of synchronous machine and turbine-governor system. Load flow study, sparse matrix methods. Balanced and Unbalanced fault analysis using matrix methods. Power system dynamic study- small signal and large signal stability. Optimal operation of power system, Power system monitoring and protection, wide area measurements. Application of artificial intelligence in power system studies.
                        </td>
                    </tr>

                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">4.Civil Engineering</h3></td>
                    </tr>

                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course50');" style="cursor: pointer;"><h4>INTRODUCTION TO CIVIL ENGG. AND MATERIALS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course50" style=" display:none;">
                        <td colspan="3" align="justify">

                        </td>
                    </tr>
                    <tr><td align="center"><h4>2</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course51');" style="cursor: pointer;"><h4>STRUCTURAL ANALYSIS-I</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course51" style=" display:none;">
                        <td colspan="3" align="justify">

                        </td>
                    </tr>
                    <tr><td align="center"><h4>3</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course52');" style="cursor: pointer;"><h4>DESIGN OF RC STRUCTURE</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr><td align="center"><h4>4</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course53');" style="cursor: pointer;"><h4>SOIL MECHANICS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr><td align="center"><h4>5</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course54');" style="cursor: pointer;"><h4>STRUCTURAL DYNAMICS AND EARTHQUAKE ENGG</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr><td align="center"><h4>6</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course55');" style="cursor: pointer;"><h4>STRENGTH OF MATERIAL </h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="background-color: #e5e5e5" height="15"></td>
                    </tr>
                    <tr><td align="center"><h4>7</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course56');" style="cursor: pointer;"><h4>FOUNDATION ENGINEERING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>8</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course56');" style="cursor: pointer;"><h4>HYDROLOGY & FLOOD CONTROL</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>9</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course57');" style="cursor: pointer;"><h4>SOLID WASTE MANAGEMENT</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>10</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course58');" style="cursor: pointer;"><h4>URBAN TRANSPORTATION SYSTEMS PLANNING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>11</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course59');" style="cursor: pointer;"><h4>STRUCTURAL HEALTH MONITORING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>12</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course60');" style="cursor: pointer;"><h4>ENERGY EFFICIENT BUILDING DESIGN</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>13</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course61');" style="cursor: pointer;"><h4>CONSTRUCTION AND BUILDING MATERIALS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>14</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course62');" style="cursor: pointer;"><h4>RISK AND RELIABILITY ANALYSES OF CIVIL INFRASTRUCTURE STRUCTURE</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>15</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course63');" style="cursor: pointer;"><h4>BRIDGE ENGINEERING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>16</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course64');" style="cursor: pointer;"><h4>ENVIRONMENTAL IMPACT ASSESSMENT AND AUDITING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>17</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course65');" style="cursor: pointer;"><h4>SOIL-STRUCTURE INTERACTION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">5.	Chemical Engineering</h3></td>
                    </tr>

                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course70');" style="cursor: pointer;"><h4>CHEMICAL PROCESS CALCULATIONS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course70" style=" display:none;">
                        <td colspan="3" align="justify">
                            Chemical reactions: Excess reactant, Degree of completion, Composition of mixtures and solutions; Material balance:Calculations for (a) unit operations like mixing evaporation, crystallization and distillation, (b) Chemical reactions and(c) Recycling; Behaviour of ideal gases: Various equations of state, Law of Dalton and Amagat, Densities of gaseousmixture.; Vapour pressures: Liquefaction, Vaporisation, Boiling point, Vapour pressures of solids and liquids, Roult’slaw, Polar and non-polar compounds; Energy balance: Heat capacity of gases, liquids, solids and solutions, Kopp’srule, Heats of fusion and vaporisation, Trouton’s rule and KistiaKowaky equation, calculation of heat of reaction,combustion, formation and neutralisation, enthalpy concentration charts, Flame temperatures; Material and energybalance in industrial processes: Simple material and energy balance calculations for the following manufacturingprocesses – (a) Sulphuric acid, (b) Nitric acid, (c) Phosphoric acid, (d) Lime and Alkali; Numerical techniques for solvingmaterial and energy balance equations; Vapour – liquid equilibrium calculations.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>2</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course71');" style="cursor: pointer;"><h4>CHEMICAL PROCESS TECHNOLOGY</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course71" style=" display:none;">
                        <td colspan="3" align="justify">
                            To give an overall view of the chemical process industries to the students i.e. about raw material, different manufacturing process, properties of raw materials and products etc.
                            Course includes raw materials and principles of production of olefins and aromatics; typical intermediates from olefins and aromatics such as ethylene glycol, ethyl benzene, phenol, cumene and DMT, dyes, and pharmaceuticals; chemical processes based on raw materials sugar, starch, alcohol, cellulose, paper, glyceride, oils, soaps, detergents; industrial processes for the production of inorganic heavy chemicals such as acids, alkalis, salts, and fertilizers such as sulphuric, nitric, and phosphoric acids, soda ash, ammonia, etc. Polymer, synthetic fiber, Fine chemicals and drugs, Coal based Chemical Industries etc.

                        </td>
                    </tr>
                    <tr><td align="center"><h4>3</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course72');" style="cursor: pointer;"><h4>CHEMICAL REACTION ENGINEERING –I</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course72" style=" display:none;">
                        <td colspan="3" align="justify">
                            Classification of chemical reactions; single, multiple, elementary and nonelementary homogeneous reactions; order and molecularity; temperature dependency; constant and variable volume batch reactor; reaction rate; rate constant; collection and interpretation of kinetic data; parallel and series reaction; batch, ideal plug flow and CSTR reactor design with and without recycle; Design for single and multiple reaction systems; temperature and pressure effects; industrial applications and introduction to biochemical reaction engineering.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>4</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course73');" style="cursor: pointer;"><h4>MASS TRANSFER OPERATIONS-I</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course73" style=" display:none;">
                        <td colspan="3" align="justify">
                            Concepts of molecular diffusion and mass transfer coefficient; interphase mass transfer; the equilibrium stage approximation; conservation relations; reflux; constant molal overflow; batch distillation; Ponchon-Savarit and McCabe- Thiele analysis of binary distillation; introduction to multi-component distillation; Azeotropic, Extractive, Reactive, Molecular and Multicomponent distillation,Equipment for gas-liquid operation, Humidification and Dehumidification: design of cooling towers; Vapor-gas mixtures, vapor-liquid equilibrium,gas-liquid contact operations,adiabatic & non-adiabatic operations.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>5</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course74');" style="cursor: pointer;"><h4>MECHANICAL OPERATIONS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course74" style=" display:none;">
                        <td colspan="3" align="justify">
                            Particles: particle size and shape; particulate mass, size and shape distribution; measurement and analysis of average particle diameter. Size reduction: crushing, grinding and ultra-fine grinding; laws of grinding; size enlargement; agglomeration; screening and design of screens; Storage of solids; flow of solids by gravity; transportation of solids. Fluid solid systems: fluid particle interaction; forces on submerged bodies; flow around single particle; drag force and drag coefficient; settling velocity of a single particle in a fluid; hindered settling of particles; design of thickeners; gravity separation; heavy media separation; mineral jigs; tabling; flotation; packed bed; filtration; flow through packed bed and fluidized beds; cyclones; bag filters; centrifuges; hydro-cyclones; particle collection systems, Mixing and Agitation: Mixing of liquids (with or without solids), mixing of liquids (with solids), mixing of liquids (with solids), mixing ofpowders, selection of suitable mixers, power requirement for mixing.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>6</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course75');" style="cursor: pointer;"><h4>MASS TRANSFER OPERATIONS-II</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course75" style=" display:none;">
                        <td colspan="3" align="justify">
                            Absorption-Equilibrium, material balance for single component transfer, multi-stage & packed toweroperation, multicomponent system, non-isothermal operation, absorption with chemicalreaction; Simultaneous Heat and Mass Transfer; Drying: rate of drying for batch and continuous dryers; Adsorption: types and nature of adsorption, isotherm, stage wise and continuous adsorption; fixed, fluidized and moving beds; ion-exchange; Extraction: triangular diagram; Leaching: single and multistage operation, equipment for leaching; Crystallization: Millers theory, yield calculations, crystallizers; Membrane processes: liquid & gas separation processes, microfiltration, ultra-filtration, nanofiltration, reverse osmosis.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>7</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course76');" style="cursor: pointer;"><h4>CHEMICAL REACTION ENGINEERING-II</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course76" style=" display:none;">
                        <td colspan="3" align="justify">
                            Residence time distribution; Heterogeneous reaction kinetics; selectivity; heterogeneous reactors: kinetics and design for non-catalyzed heterogeneous systems,  fluid-fluid and fluid-solid reactions,fluid-solid catalytic fixed bed reactor design principles; isothermal, adiabatic and non-isothermal operations; gas-solid non-catalytic reactor design; fluidized bed reactors; thermal stability in reactor operation.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>8</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course77');" style="cursor: pointer;"><h4>INSTRUMENTATION AND PROCESS CONTROL</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course77" style=" display:none;">
                        <td colspan="3" align="justify">
                            First Principles model development; dynamics of first, second and higher order linear systems, open loop and closed loop systems; linearisation; feed back control; stability; root locus diagram; frequency response analysis; Bode stability criterion; Nyquist stability criterion; design of controller; dynamics of some complex processes; control valves and introduction to real time computer control of process equipment; cascade, feed forward, adaptive control; SISO; MIMO; A/D conversion, PLC architecture; Multi-variable control strategies; Construction, working principle, selection criteria and application of the measurement devices, Principles of measurements; Measuring instruments for process control.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>9</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course78');" style="cursor: pointer;"><h4>CHEMICAL ENGINEERING PLANT DESIGN AND ECONOMICS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course78" style=" display:none;">
                        <td colspan="3" align="justify">
                            Basic consideration in chemical engineering plant design, project identification, preliminary techno economic feasibility; Selection of process, factors affecting process selection, types of flow diagrams; Standard versus special equipment, materials of construction, selection criteria etc; process auxiliaries; process utilities-Process water, boiler feed water, water treatment & disposal, steam, oil heating system, chilling plant, compressed air and vacuum system; plant location and layout-Factors affecting plant location, use of scale models; cost estimation-Factors involved in project cost estimation, total fixed & working capital, types & methods of estimation of total capital investment, estimation of total product cost, factors involved; depreciation-Types and methods of determination, evaluation; profitability-Alternative investment & replacement methods for profitability evaluation, economic consideration in process and equipment design, inventory control; optimum design-General products rates in plant operation, optimum conditions etc; production, planning, scheduling and control-Introduction, PERTS & CPM
                        </td>
                    </tr>
                    <tr><td align="center"><h4>10</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course79');" style="cursor: pointer;"><h4>COMPUTER AIDED DESIGN IN CHEMICAL ENGINEERING</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course79" style=" display:none;">
                        <td colspan="3" align="justify">
                            Introduction to Computer aided design in chemical engineering, Mathematical modeling, Steady state and dynamic Simulation, Process simulation program (ASPEN PLUS).Computer aided design of chemical process equipment’s, concepts of modular design, optimum design, parameter optimization etc., Spread sheeting, Process synthesis, Flow sheeting software, Equation solution with recycle, Decision for the input output structure, Flow sheet alternatives: guidelines, Number of product streams, Gas recycle and purge, application of CAD heat exchanger network design, application of CAD in heat integration of distillation column, application of CAD in heat integration of reactors, applications of cad in other areas
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="background-color: #e5e5e5" height="15"></td>
                    </tr>
                    <tr><td align="center"><h4>11</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course80');" style="cursor: pointer;"><h4>ENERGY TECHNOLOGY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course80" style=" display:none;">
                        <td colspan="3" align="justify">
                            Introduction to Energy Technology; World energy future, Energy sources and their availability, energy survey in India. Solid fuels: origin and composition of coal; analysis and properties of coal; coal classification; properties and storage of coal; coal carbonization, gasification and liquefaction; Clean Coal Technology; Prospects of Renewable energy sources; Solar energy-fundamentals and application, Solar Power plants; Geothermal energy: Introduction, Utilization of Geothermal energy, Geothermal energy resources, geothermal gradient, Different types of Geothermal Electric power plant and their operations for Geothermal Energy systems; Wind energy: Fundamentals and application, Basic principles of Wind Energy Conversion, Wind Energy conversion system, Performance of wind machines, Electric generation for wind; Biomass Energy Resources: Introduction, Biomass Conversion Process. Biogas from plant wastes, communities bio-gas plants. Biochemical conversion, Fermentation, liquid fuels for biomass; Urban Waste: A source of Energy. Urban solid waste, waste incineration process, Environmental consideration; Energy from the oceans: Introduction Ocean Energy conversion Technologies. Types of Ocean Thermal Electric Power Generation system and their operation; Tidal power plant; Hydro Energy: Introduction, types of hydroelectric plants and energy conversion scheme, Classification of Hydro-Energy plants; Fuel Cell-Introduction, types of fuel cells, Principle and operation of fuel cells, advantages & disadvantages, conversion efficiency, applications of fuel cells; Hydrogen; Nuclear Energy- Fission, fuel for nuclear fission reactor, Nuclear Fuel Cycle, storage & transportation, different types of reactor, reactor control, nuclear reactor power plants, Nuclear waste management.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>12</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course81');" style="cursor: pointer;"><h4>POLYMER SCIENCE AND TECHNOLOGY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course81" style=" display:none;">
                        <td colspan="3" align="justify">
                            Historical Background, Classification and forms of Polymers, Tacticity, Functionality, Degree of Polymerization, identification of Polymers and end uses; Chemistry of Polymerization: Chain and Step Polymerization and their Kinetics Techniques of Polymerization: Bulk, Solution, Suspension and Emulsion Polymerization; Molecular Weight and its determination by Viscometry, Light-scattering and Osmometric methods; Crystallization in Polymers; Polymer Degradation; Manufacture and Uses of PF, UF, Vinyl Resins, Acrylic Resins, PS and PE; Polymer additives, Blends and Alloys; Polymer Processing; Plastics as materials of construction in chemical equipments.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>13</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course82');" style="cursor: pointer;"><h4>FUELS AND COMBUSTION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course82" style=" display:none;">
                        <td colspan="3" align="justify">
                            Solid fuels: Coal origin, Chemical composition, Calorific value, Classifications, Characteristics and Distribution of Indian coals, Storage and spontaneous combustion of coal, Coal washing and blending, Petographic constituents of coal, Carbonization of coal, Manufacture and properties of metallurgical coke, Recovery of byproducts; Liquid fuels: Origin and composition of crude oil, Crude oil distillation and it’s products with special reference to gasoline, kerosene and diesel oil, Cracking and reforming, Shale oil; Gaseous fuels: Natural gas, Coal gas, Coke oven and blast furnace gas, Manufacture of water gas and producer gas, Carbureted water gas; Synthetic fuels: Hydrogenation of coal, Fischer – Tropsch synthesis; Combustion: Combustion of solid, liquid and gaseous fuels, combustion stoichiometry and thermodynamics, Calculation of volumes and weights of air required for combustion, the gas analysis.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>14</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course83');" style="cursor: pointer;"><h4>PETROLEUM REFINING AND PETROCHEMICAL TECHNOLOGY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course83" style=" display:none;">
                        <td colspan="3" align="justify">
                            Petroleum Refining: Crude Oil Distillation Process - Thermal Conversion Processes Conventional Thermal Cracking – Vis-breaking and Design Variables of Vis-breaking - Coking: Fluid Coking, Flexi Coking, Delayed Coking and Hardware Considerations – Catalytic. Conversion Processes - Fluid Catalytic Cracking with special reference to Catalyst and Reactor. Design Configurations – Hydro-treating, Hydrodesulphurization and Hydro-cracking - Reforming: Process, Catalyst, Reactor Design Configuration – Alkylation – Isomerization – Lube Oil Manufacturing Process , Solvent- De-asphalting, Solvent De-waxing and Hydro-finishing- Production of Pet. Waxes and Bitumen.
                            Petrochemical Technology: Petrochemical Industry Overview, Primary Raw Materials for Petrochemicals, First Generation Petrochemicals-Hydrocarbon Intermediates and their production, Non-Hydrocarbon Intermediates, Olefin Production, Processing of Olefins, Processing of Olefins C4 & C5 Cut from Steam Cracking and Fluid Cracking.
                            Aromatics Production, Second generation Petrochemicals from: Methane and Synthesis Gas derivatives, Ethylene and Ethylene Derivatives, Propylene and Propylene Derivatives, C4 and C5Derivatives, Aromatics – Benzene, Toluene and Xylene Derivatives. - Third Generation. Petrochemicals- Polymers, Elastomers, Polyurethanes and Synthetic Fiber.

                        </td>
                    </tr>
                    <tr><td align="center"><h4>15</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course84');" style="cursor: pointer;"><h4>FLUIDIZATION ENGINEERING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course84" style=" display:none;">
                        <td colspan="3" align="justify">
                            Introduction to fluidization, Types of fluidization; Gross behavior of fluidized beds: Minimum fluidization velocity, pressure drops in fluidized beds, Bed voidage, TDH, Viscosity and fluidity of beds, Bubble behavior, Bed expansion, Distributor design, Simple mathematical treatment; Solid transport: Flow and fluidized solids, Solids transfer, Terminal velocity, Particle entrainment and elutriation, Simple calculations; Heat and mass transfer in fluidized beds: Heat transfer mechanism, Principles of gas-solid and bed surface transfer, Heat transfer to liquid fluidized systems, Generalised correlation for fluidized bed mass transfer and its limitations; Semifluidization: Principles, production of various bed parameters, Industrial applications; Design of fluidized bed reactors: Concept of RTD, Basic design principles for fluidized bed reactors.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>16</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course85');" style="cursor: pointer;"><h4>CHEMICAL SYSTEMS MODELING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course85" style=" display:none;">
                        <td colspan="3" align="justify">
                            Physical and mathematical modeling, Principles of similarity, Independent variables, Dependent variables, Parameters and boundary conditions; Solutions of the model equations-Laplace Transforms: Thermometer systems, mixing tanks, fixed bed reactor formulation. Partial differential equations and finite differences, Numerical Methods: Direct solutions of linear equations, roots of nonlinear equations; Mathematical modeling of chemical engineering system - Principle of formulations, Mathematical consistency of model, Continuity equations, Component continuity equations, Energy equations, Equations of motion, Transport equations, Equilibrium, Chemical Kinetics with examples;  Applications in chemical engineering systems - Single, Two and n-stage extraction steady state mass transfer processes. Unsteady state formulation of a single stage extraction, Steady state heat conduction through hollow cylindrical pipe using various boundary condition, Unsteady process of steam heating of a liquid, Heat transfer through extended surface, Steady state counter current cooling of a tank diffusion with Chemical Reaction in a turbulent reactor, Batch distillation, pH systems etc; Treatment of experimental results -Curve fitting, Numerical differentiation and integration etc; Industrial simulators - Introduction and applications.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>17</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course86');" style="cursor: pointer;"><h4>ENERGY CONSERVATION AND MANAGEMENT IN PROCESS INDUSTRIES</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course86" style=" display:none;">
                        <td colspan="3" align="justify">
                            Energy Conservation: Principle of energy conservation and Energy Analysis. Material and Energy balance: Facility as an energy system, Methods for preparing process flow, Material and energy balance diagrams; Energy conservation Technologies; Boilers - Combustion in boilers, Performances evaluation, Analysis of losses, Feed water treatment, Blow down, Energy conservation opportunities; Steam System-Properties of steam, Assessment of steam distribution losses, Steam leakages, Steam trapping, Condensate and flash steam recovery system, Identifying opportunities for energy savings; Furnaces-Classification, General fuel economy measures in furnaces, Excess air, Heat distribution, Temperature control, Draft control, Identifying opportunities for energy savings; Waste Heat Recovery - Classification, Advantages and applications, Commercially viable waste heat recovery devices, Saving potential; Co-generation-Need for cogeneration, Principle of Cogeneration, Technical Options for Cogeneration, Classification of Cogeneration Systems, Factors Influencing Cogeneration Choice, Important Technical Parameters for Cogeneration; Pumps and Pumping System- Types, Performance evaluation, Efficient system operation, Flow control strategies and energy conservation opportunities; Fans and Blowers-Types, Performance evaluation, Efficient system operation, Flow control strategies and energy conservation opportunities; Compressed Air System - Types of air compressors, Compressor efficiency, Efficient compressor operation, Compressed air system components, Capacity assessment, Leakage test, Factors affecting the performance and efficiency; Cooling Tower- Types and performance evaluation, Efficient system operation, Flow control strategies and energy saving opportunities, Assessment of cooling towers; Case studies on energy conservation-management-Analysis.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>18</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course87');" style="cursor: pointer;"><h4>SUSTAINABILITY AND GREEN CHEMISTRY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course87" style=" display:none;">
                        <td colspan="3" align="justify">
                            Chemistry- from past to future, importance of sustainability, need of green chemistry; Sustainability-Fundamentals of sustainable development, growth, consumption and natural wealth, sustainable development at different scales, ten commandments; Green Chemistry-Principles And Applications; Synthesis And Green Chemistry-Micro-Reactor Technology, Solvent-Less Reactions, Use Of Green Solvents, Brief About Combinatorial Chemistry; Alternate Solvents- Green Solvents, Water As A Solvent; Amphiphillic Compounds; Conventional Process And Operations- Current Status And Modification; New Development In Processes-Overview Of Green Separation Processes, Distillation, Chromatography, Fluid Extraction, Membrane Processes, Pressurized Hot Water Extraction, Nanotechnology In Separation; Life Cycle Assessment Of The Technology; Industrial Examples.
                        </td>
                    </tr>

                    <tr><td align="center"><h4>19</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course88');" style="cursor: pointer;"><h4>NOVEL SEPARATION TECHNIQUES</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course88" style=" display:none;">
                        <td colspan="3" align="justify">
                            Concepts and definitions in adsorption; adsorbents types; their preparation and properties; different types of adsorption isotherms and their importance; adsorption types; basic mathematical modeling with suitable initial and boundary conditions for different cases such as thermal swing, pressure swing, and moving bed adsorption; chromatography; membrane classification, chemistry, structure and characteristics; resistances for mass transfer; design consideration for reverse osmosis, ultrafiltration and electrodialysis; pervaporation; gaseous separations; liquid membrane; introduction to other processes such as reactive distillation, supercritical fluid extraction, biofiltration, etc.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>20</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course89');" style="cursor: pointer;"><h4>CATALYSIS IN REFINING AND PETROCHEMICALS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course89" style=" display:none;">
                        <td colspan="3" align="justify">
                            Catalysis in 21st Century: Challenges for future and opportunities - Role of Catalysis in Petroleum Refining and Petrochemical Industry: An Overview - Designing Specific Catalysts for Refining Process Applications - FCC, DCC Catalysts for Olefins and LPG Maximization. Reforming Catalyst - Hydrocracking and Hydrotreating Catalysts - Alkylations and Isomerization Catalysts - Physio-chemical Characterization of the Catalysts: Overview of various techniques; New and Emerging Trends in Catalysis & Catalytic Materials for Refining & Petrochemicals - Analysis and Design of Heterogeneous Catalytic Reactors - Fixed bed Reactor, Fluidized bed Catalytic Reactor, Slurry Reactor, Trickle bed and Multiphase reactor.
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">6.	Mechanical Engineering</h3></td>
                    </tr>

                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course90');" style="cursor: pointer;"><h4>FLUID MECHANICS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course90" style=" display:none;">
                        <td colspan="3" align="justify">
                            Introduction - properties of fluids, concept of continuum, pressure and stress tensor Fluid statics - pressure variation in a static fluid, force on submerged surfaces,stability of floating bodies Kinematics - Lagrangian and Eulerian description, streamline, streakline and pathline, acceleration of a fluid element, continuity equation, stream-function,rotation and angular deformation, irrotational flow, velocity potential Inviscid flow - Euler equation, Bernoullis equation and its applications Reynolds transport theorem - conservation of mass, linear and angular momentum Stokes law of viscosity and Navier-Stokes equations - some exact solutions Dimensional analysis and similarity - Buckingham Pi theorem Internal flows - pipe flow, friction factor, Moody diagram, minor and major losses, pipe networks, hydraulic diameter External flows - boundary layer approximation, momentum integral method, flow over a flat plate, flow separation Turbulence - Reynolds experiment, Reynolds decomposition, time averaged Navier-Stokes equation, eddy viscosity Potential Flow - elementary plane flow solutions, Magnus effect Fluid Machinery - similarity, Euler equation for turbomachines, centrifugal pump, hydraulic turbines, cavitation
                        </td>
                    </tr>
                    <tr><td align="center"><h4>2</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course91');" style="cursor: pointer;"><h4>DYNAMICS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course91" style=" display:none;">
                        <td colspan="3" align="justify">
                            Kinematics of particles: representation of motion of particles in various coordinate systems, relative motion in translating frames, constrained motion. Kinetics of particles: Concept of an inertial frame and Newtons second law, equations of motion for unconstrained and constrained motion, work-energy relation, conservation of energy, conservative and non-conservative forces, potential energy, impulse-momentum relation, angular momentum, conservation of momentum, dAlemberts principle. Applications: central force motion, impact. Kinetics of a system of particles: Newtons second law, work-energy relation, impulse-momentum relations, conservation laws, steady and variable mass flow systems. Plane kinematics of rigid bodies: Kinematics of rigid bodies, instantaneous center of rotation, kinematics in rotating frames and relative motion. Plane kinetics of rigid bodies: Linear and angular momentum, equations of motion, work-energy relation, impulse-momentum relation, conservation laws. Introduction to spatial dynamics of rigid bodies: Kinematics in rotating frames and relative motion, angular momentum, kinetic energy, equations of motion, special cases of parallel-plane motion, and gyroscopic motion.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>3</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course92');" style="cursor: pointer;"><h4>KINEMATICS OF MACHINES</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course92" style=" display:none;">
                        <td colspan="3" align="justify">
                            Dynamics Introduction to mechanisms: kinematic pairs, kinematic diagrams, classification of kinematic chains, kinematic inversions, and equivalent linkages. Kinematic analysis of planar mechanisms: mobility analysis and range of movement, Grashof criterion and inversions, displacement analysis, relative instantaneous centers, Aronhold-Kennedy theorem, velocity and acceleration analysis. Dimensional synthesis of planar mechanisms: three position synthesis for function generation, path generation and rigid body guidance, dead center problems, branch and order defects. Cams: synthesis of translating flat-face, translating roller and oscillating roller follower cams. Gears: fundamental law of gearing, characteristics of involutive action, analysis of gear trains. Spatial kinematic chains and robot kinematics: kinematic analysis of spatial chains, Denavit-Hartenberg parameters, robot kinematics.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>4</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course93');" style="cursor: pointer;"><h4>MECHANICS OF SOLIDS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course93" style=" display:none;">
                        <td colspan="3" align="justify">
                            Prerequisite â MechanicsIntroduction of theory of elasticity- Analysis of Stress and Strain, Stress equation of equilibrium, Compatibility equations, Stress-Strain Relations, Solution of elasticity equations-stress function approach. Theories of failure- Yield criteria. Energy methods- Generalized forces and displacements, Reciprocal Theorem, Maxwell-Betti-Raleigh reciprocal theorem, Castigliano âs theorems, Theorem of virtual work. Bending of Beams- Straight and asymmetrical bending, Shear center, bending of curved beams, Deflection of thick curved beams. Axisymmetric problems- Thick walled cylinders subjected to internal and external pressures-Lameâ s equation, Stresses in composite tubes-Shrink fits, Rotating discs with uniform and variable thickness, Rotating shafts and cylinders. Columns and struts- Eulerâ s Buckling load, Different end conditions, Beam columns, Energy methods in buckling problems.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>5</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course125');" style="cursor: pointer;"><h4>CASTING, FORMING AND WELDING</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course125" style=" display:none;">
                        <td colspan="3" align="justify">
                            2 Casting: Types of foundries, steps in making a casting; cast metals; types, materials and allowances of patterns; moulding processes and their characteristics; moulding materials; gating and risering; melting furnaces; casting defects. Welding: Welding processes; welding energy sources and their characteristics; fluxes and coatings; weldability and welding of various metals and alloys; metallurgical characteristics of welded joints; weld testing and inspection. Forming: Classification of metal forming processes; basic metal working concepts and plasticity; yield criterion; slip line fields; estimation of force and energy requirements; technology of bulk and sheet metal forming processes; precision forming processes; various features of different types of metal forming dies; principles of powder forming.


                        </td>
                    </tr>
                    <tr><td align="center"><h4>6</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course126');" style="cursor: pointer;"><h4>DYNAMICS OF MACHINES</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course126" style=" display:none;">
                        <td colspan="3" align="justify">
                            Generalized coordinates, constraints and their types, degrees-of-freedom, discrete and continuous systems, conservative and non-conservative forces. Discrete systems: Equations of motion: Hamilton’s principle and Lagrange’s equation, considerations for constraints and non-conservative forces. Theory of small oscillations: Equation of motion, free response using complex vector representation of solution and transform methods, eigenvalue problem, characteristic equation, properties of inertia and stiffness matrices, concept of normal modes, their properties and expansion theorem, initial value problem, beat phenomenon, classical and non-classical viscous damping, other types of damping, forced vibration (undamped and damped) under harmonic and general forcing, frequency response function, resonance and Q-factor, logarithmic decrement, base excited vibration, tuned mass absorber and damper, critical speeds and whirling of shafts, field balancing of rigid rotors, Single cylinder engine balancing, Raleighs method. Continuous systems: Equation of motion for transverse vibration of strings, axial vibration of bars, torsional vibration of shafts using Newtonian approach, transverse vibration of beams. Free vibrations and eigenvalue problem, normal modes, orthogonality and expansion theorem.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>7</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course94');" style="cursor: pointer;"><h4>MACHINE DESIGN</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course94" style=" display:none;">
                        <td colspan="3" align="justify">
                            Machine Tool: Acceptance test of machine tool (radial drilling machine) System compliance of machine tool (center lathe) Machine setting and operation for helical gear teeth cuttingMachining: Resharpening of turning tool to specific geometry Measurement of cutting forces and surface finish in turning, drilling and milling Measurement of cutting temperature and tool life in turning Measurement of grinding forces and surface finish in grinding . Metrology: Inspection of straightness and flatness of surfaces Measurement of angles Measurement of external and internal taper Inspection of screw threads Inspection of gear teeth Measurement of roundness by Telerond Calibration of measuring instruments.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>8</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course95');" style="cursor: pointer;"><h4>APPLIED THERMO-FLUIDS </h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course" style=" display:none;">
                        <td colspan="3" align="justify">

                        </td>
                    </tr>
                    <tr><td align="center"><h4>9</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course95');" style="cursor: pointer;"><h4>INTERNAL COMBUSTION ENGINES & AUTOMOBILE ENGINEERING</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course95" style=" display:none;">
                        <td colspan="3" align="justify">
                            Introduction - Introduction of I. C. Engines; Analysis of Air Standard Cycles and Fuel Air Cylces - Air standard cycles, Ideal air standard cycles, Fuel air cycles, Characteristics of fuel - air mixtures, Variation of specific heat. Actual cycles and actual processes taking place in engines; Combustion in I.C. Engine - Combustion in S.I. Engine and C.I. Engines: Stages of combustion in S.I. Engine, Detonation and its Control of detonation. Stages of combustion in C.I. Engines, Delay period, Factor s influencing delay period, Diesel knock, Control of diesel knock; Elements of Fuel System in S.I. Engine - Requirements of a good carburetor, Simple carburetor, Complex carburetor, Calculation of air -fuel ratio for a simple carburetor. Electronic fuel injection in S.I. Engine; Elements of Fuel System in C.I. Engine - Requirements of Diesel Injection System, Types of injection systems, Fuel pumps; Lubrication and Cooling System - Lubrication and cooling system of I. C. Engine: Functions and Types; Testing and Performance of I. C. Engine - Testing and performance of S. I. Engine & C. I. Engine; Engine Emissions and Control - Pollutants and their ill effects, Pollutants from Gasoline and Diesel Engines and their control; Modern Developments in I.C. Engines - Alternate fueled engines, Alcohol, hydrogen etc.; Transmission System of Automotive Vehicle - Types & its components and Braking and Suspension system of automotive vehicle, Function of Steering systems and their types, Electrical systems of automotive vehicle, Chasis, Wheels, Types of tyres, Functions of tyres, Tread design etc.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>10</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course96');" style="cursor: pointer;"><h4>SYSTEMS AND CONTROL</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course96" style=" display:none;">
                        <td colspan="3" align="justify">

                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="background-color: #e5e5e5" height="15"></td>
                    </tr>
                    <tr><td align="center"><h4>11</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course97');" style="cursor: pointer;"><h4>ADVANCED FLUID MECHANICS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course97" style=" display:none;">
                        <td colspan="3" align="justify">
                            Concept of continuum and definition of a fluid. Body and surface forces, stress tensor. Scalar and vector fields, Eulerian and Lagrangian description of flow. Motion of fluid element ; translation, rotation and vorticity; strain rate tensor, continuity equation, stream function and velocity potential. Constitutive equations, derivation of Navier;Stokes equations. Exact solutions of Navier;Stokes equations: plane Poiseuille flow and Couette flow, Hagen;Poiseuille flow, flow between two concertic rotating cylinders, Stokes first and second problem, Hiemenz flow, flow near a rotating disk, flow in convergent-divergent channels. Slow viscous flow: Stokes and Oseen s approximation, theory of hydrodynamic lubrication. Thin-film equations. Boundary layer: derivation, exact solutions, Blasius, Falkner Skan, series solution and numerical solutions. Approximate methods. Momentum integral method. Two dimensional and axisymmetric jets. Introduction to Hydrodynamic stability: linear stability of plane Poiseuille flow, Orr;Sommerfeld equation. Description of turbulent flow, velocity correlations, Reynolds stresses, Prandtl s Mixing Length Theory, Karman s velocity defect law, universal velocity distribution. Concepts of closure model, eddy viscosity models of turbulence- zero equation, one equation and two-equation models.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>12</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course98');" style="cursor: pointer;"><h4>SIMULATION OF MECHANICAL SYSTEMS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course98" style=" display:none;">
                        <td colspan="3" align="justify">
                            Design of Machine Elements, Energy Methods and variational principles. Euler-Lagranges equation for discrete and continuous systems. Hamilton’s principle. Analysis of constraints - non-holonomic systems. Integration of system equations. Modelling in multi-energy domain through bond graphs. Modelling of a system of rigid bodies, structural systems, Hydraulic systems, Thermal systems, electronic and mechatronic systems. Modelling systems for control strategies and design of control strategies in physical domain. Numerical prototyping as modelling for design and synthesis using computational tools like SYMBOLS, MATLAB, ADAMs, etc.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>13</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course99');" style="cursor: pointer;"><h4>MACHINERY FAULT DIAGNOSTICS AND SIGNAL PROCESSING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course99" style=" display:none;">
                        <td colspan="3" align="justify">
                            Machinery Fault Diagnostics and Signal ProcessingMaintenance Principles, FMECA, Basics of Machine Vibration, Signal Analysis, Computer aided data acquisition, Time Domain Signal Analysis, Frequency Domain Signal Analysis, Fault Detection Transducers and Monitoring, Vibration Monitoring, Field Balancing of Rotors, Condition Monitoring of Rotating Machines, Noise Monitoring, Wear and Debris Analysis, Thermography, Electric Motor Current Signature Analysis, Ultrasonics in Condition Monitoring, NDT Techniques in Condition Monitoring, Case studies.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>14</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course100');" style="cursor: pointer;"><h4>TRIBOLOGY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course100" style=" display:none;">
                        <td colspan="3" align="justify">
                            Introduction, economic aspects, lubrication of bearings, friction control and wear prevention. Properties and testing of lubricants. Mechanics of fluid flow - Reynolds equation and its limitations. Idealized bearings : Infinitely long plane pivoted shoe and fixed shoe sliders, Infinitely long journal bearings, Infinitely short (narrow) bearings, Lightly loaded infinitely long journal bearing (Petroffssolution). Finite bearings : Approximate analytical solution, Numerical solution and Electrical analogy method. Hydrostatic oil bearings : Thrust and journal bearings. Squeeze film bearings. Gas-lubricated bearings; hydrodynamic bearings, hydrostatic bearings porous bearings. Elasto-hydrodynamic lubrication. Fluid inertia and turbulence and hydrodynamic instability. Friction and wear of metals.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>15</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course101');" style="cursor: pointer;"><h4>COMPUTATIONAL FLUID DYNAMICS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course" style=" display:none;">
                        <td colspan="3" align="justify">
                            A brief overview of the basic conservation equations for fluid flow and heat transfer, classification of partial differential equations and pertinent physical behaviour, parabolic, elliptic and hyperbolic equations, role of characteristics. Common methods of discretization: an overview of finite difference, finite element and finite volume methods. Numerical solution of parabolic partial differential equations using finite-difference and finite-volume methods: explicit and implicit schemes, consistency, stability and convergence. Numerical solution of systems of linear algebraic equations: general concepts of elimination and iterative methods, Gaussian elimination, LU decomposition, tridiagonal matrix algorithm, Jacobi and Gauss-Seidel iterations, necessary and sufficient conditions for convergence of iterative schemes, gradient search methods, steepest descent and conjugate gradient methods.The finite volume method of discretization for diffusion problems: one-dimensional steady diffusion problems, specification of interface diffusivity, source-term linearization. Discretization of transient one-dimensional diffusion problems. Discretization for multi-dimensional diffusion problems. Solution of discretized equations using point and line iterations, strongly implicit methods and pre-conditioned conjugate gradient methods.Convection-diffusion problems: Central difference, upwind, exponential, hybrid and power-law schemes, concept of false diffusion, QUICK scheme.Numerical solution of the Navier-Stokes system for incompressible flows: stream-function vorticity and artificial compressibility methods, requirement of a staggered grid. MAC, SIMPLE, SIMPLEC and SIMPLER algorithms.An introduction to unstructured grid finite volume methods. Special topics: Turbulence and its modeling, phase-change problems, interface/free-surface tracking methods.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>16</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course102');" style="cursor: pointer;"><h4>ENERGY CONSERVATION AND WASTE HEAT RECOVERY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course102" style=" display:none;">
                        <td colspan="3" align="justify">
                            Energy Conservation and Waste Heat RecoveryPatterns of energy use, potential for energy conservation, optimum use of energy resources, total energy approach. Coupled cycles, combined plants and cogeneration systems. Need for energy storage, thermal electrical, magnetic and chemical energy storage systems. Utilization of industrial waster heat; gas-to-liquid and liquid-to-liquid heat recovery systems; Recuperators and regenerators, heat pipes; waster heat boilers; fluidized bed heat recovery; shell and tube heat exchangers. Prime mover exhausts; incineration plants; heat pump systems; thermoelectric devices. Utilization of low grade reject heat from power plants. Thermal insulation; energy economics
                        </td>
                    </tr>
                    <tr><td align="center"><h4>17</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course103');" style="cursor: pointer;"><h4>REFRIGERATION & AIR CONDITIONING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course103" style=" display:none;">
                        <td colspan="3" align="justify">
                            Gas Cycle Refrigeration - Air refrigeration system, Bell Colleman air cycle, Boot strap system, Aircraft refrigeration systems, Actual cycle, Ramming, Compression and Turbine efficiencies, Coefficient of performance; Vapour Compression Refrigeration - Analysis of vapour compression cycle, Losses and efficiencies of components, Factors affecting the performance of a simple vapour compression system, Heat balance, Multistage vapour compression system with flash intercooler, Multi evaporation system, Cascade refrigeration system; Absorption Refrigeration - Desirable properties of refrigerants and solvents, Thermodynamics analysis of vapour absorption System, Comparison between vapour absorption and vapour compression s ystem, Aqua-Ammonia and Lithium Bromide absorption system; Psychrometry and Psychrometric Processes - Psychrometric properties, Psychrometers, Preparation of psychrometric charts, Enthalpy deviation, Psychrometric Processes - Mixing process, Sensible heating, Sensible cooling, Humidification, Dehumidification, Cooling and Dehumidification, Heating and humidification, Bypass factor, Apparatus dew point, Sensible heat factor, Air washer, Adiabatic humidification, Efficiency of h umidification, Summer and Winter air conditioning system; Load Calculation - Calculation of summer and winter loads, Heat gain through walls, roofs, floors, windows, and doors; Air Conditioning Systems and Equipments -Humidifiers, Air coolers, Dehumidifiers, Air cleaners, Impurities in air and air cleaners, Ducts, Pressure drop in ducts.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>18</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course104');" style="cursor: pointer;"><h4>PLANT LAYOUT & MATERIAL HANDLING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course104" style=" display:none;">
                        <td colspan="3" align="justify">
                            Introduction - Plant design, types of manufacturing process-plant design; Plant Location -Influence of location on plant layout-location factors-plant size selection guide-location theory and models; Industrial Building - Relationship between the building and layout, building design and construction – bays-floors-walls and windows-roots and ceiling. Types of building –single –story building and multi story building –constructional material; Plant Layout Problems - Why layout problems develop, classes of plant layout problems -objectives-classification of layout-product layout-process layout and fixed position layout -organization layout, Employee services-working conditions-the influence of organization and wage incentives -human relations; Data Collection - Use of work study in plant layout-plant layout tools and techniques; Evaluation Of Layout - Measurement of effectiveness-systematic evaluation-optimizing evaluation; Material Handling - Types of material handling equipments, hoists, different types hand and power drives, different types of conveyers, elevators, etc.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>19</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course105');" style="cursor: pointer;"><h4>COMPUTATIONAL METHODS IN THERMAL ENGINEERING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course105" style=" display:none;">
                        <td colspan="3" align="justify">
                            Root finding: Complex algebraic and transcendental equations. Solution of linear equations by LU decomposition and Newton Raphson method. Root finding used in integration, evaluation of areas, surface of revolution, length of curve and volumes. Evaluation of centroid of regular geometric bodies. Double integration to compute areas, triple integration to compute volumes and quadruple integration to compute view factors. Interpolation and its use in thermal engineering. Interpolation used to find pump power and flow rate from pump characteristics. Solution of ordinary differential equations, Runge-Kutta method and Euler method. Solution of non-linear equations of any order and any degree. Solution of initial value problems and boundary value problems. Solution of boundary value problem through initial value problems, shooting method, optimization of objective functions to determine the solution of boundary value problems. Application of shooting method or the optimization method to solve thermal engineering problems like: boundary layer flow on a flat plate, thermal boundary layer on a vertical and flat plate, flow near a rotating disk, Falkner-Skan wedge flow, travel of projectile in air with drag, meeting of two projectiles, temperature distribution in a circular fin, triangular fin and general solution to steady 1D heat conduction in any shape. Introduction to finite difference (FD) method. Forward, CD and upwind schemes. Solution of ODE by FD method. Solution of non-linear differential equation by EES. Introduction to stability, numerical errors and accuracy. Application of finite difference method to thermal engineering problems. Solution of hydrodynamic and thermal boundary layer equations by FD method. Solution of Falkner-Skan problem by FD method. Extensive Application to transient heat transfer by FD method. FD method used for 2D and 3D problems. Demonstration and use of software such as EES to apply different methods and solve system of equations (linear or nonlinear) mentioned above
                        </td>
                    </tr>
                    <tr><td align="center"><h4>20</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course106');" style="cursor: pointer;"><h4>OPTIMIZATION TECHNIQUES</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course106" style=" display:none;">
                        <td colspan="3" align="justify">
                            Introduction - Single and Multivariable optimization methods, constrained optimizatio n methods, Kuhn-Tucker conditions – Necessary & sufficiency theorems; Linear Programming - Traveling salesman problem and Transshipment problems – post optimization analysis; Integer Programming - All integer, mixed integer and zero-one programming; Geometric Programming - Concept – degree of difficulty – solution of unconstrained & Network Analysis – CPM – PERT; Dynamic Programming.
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">7.	1st  and 2nd Semester courses</h3></td>
                    </tr>

                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course107');" style="cursor: pointer;"><h4>ENGINEERING DRAWING AND COMPUTER GRAPHICS</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course107" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: Introduction to IS code of drawing; Conics and Engineering Curves – ellipse, parabola, hyperbola, cycloid, trochoid, involute; Projection of lines – traces, true length; Projection of planes and solids; sold objects – cube, prism, pyramid, cylinder, cone and sphere; Projection on Auxiliary planes; Isometric projection, isometric scale; Section of solids – true shape of section; Introduction to CAD tools – basics; Introduction of Development and Intersection of surfaces.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>2</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course108');" style="cursor: pointer;"><h4>PROGRAMMING AND DATA STRUCTURE</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course108" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: Introduction to digital computers; introduction to programming â variables, assignments; expressions; input/output; conditionals and branching; iteration; functions; recursion; arrays; introduction to pointers; character strings; time and space requirements; searching and sorting; structures; introduction to data-procedure encapsulation; dynamic allocation; linked structures; introduction to data structures â stacks and queues. (A programming language like C/C++ may be used as a basis language. The same language must be used for the laboratory).
                        </td>
                    </tr>
                    <tr><td align="center"><h4>3</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course109');" style="cursor: pointer;"><h4>FUNDAMENTALS OF COMPUTERS & PROGRAMMING</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course109" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description:
                            Introduction to computer and its architecture: Introduction and Characteristics, Generations, Classifications, Applications, Central Processing Unit and Memory, Communication between various units, Processor speed, Multiprocessor system;
                            Memory and various input and output devices: Introduction to Memory, Memory hierarchy, Primary memory and its types, Secondary Memory, Classification of Secondary memory, Various secondary storage devices and their functioning, their Merits and demerits; Number System: Introduction and type of Number system, Conversion between number system, Arithmetic operations on number system, Signed and unsigned number system; Software Computer Languages and Computer Program: Classification, Examples, Introduction of operating system, Evolution, type and function of OS, Various Examples and comparison, Unix commands, Evolution and classification of programming language, Generation of programming language, Feature and selection of good programming language, Development of program, algorithm and flowchart, Program testing and debugging, Program documentation and Paradigms, Characteristics of good program; Data communication, Computer network and Internet Basics: Data communication and transmission media, Multiplexing and Switching, Computer network and network topology, Communication protocols and Network Devices, Evolution and basic internet term, Getting connected to internet and Internet application, Email and its working, Searching the web, Languages of internet, Internet and viruses; Programming using ‘C’ language: Characteristics of C language, Identifiers and keywords, Data types Constants and Variables,  Declarations and Statements, Representation of expressions, Classification of Operators and Library Functions for Data input and output statements, Conditional Control Statements, Loop control statements, One dimensional array of numbers and characters, Two-dimensional array, Introduction and development of user defined functions, Different types of Variables and Parameters, Structure and union, Introduction to pointers, Pointer arithmetic, Array of pointers, Pointers and functions, Pointers and structures, File handling operations

                        </td>
                    </tr>
                    <tr><td align="center"><h4>4</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course110');" style="cursor: pointer;"><h4>CHEMISTRY-I</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course110" style=" display:none;">
                        <td colspan="3" align="justify">
                            Electrochemistry: Electrolytic and galvanic cells, EMF series, Nernst equation for electrode potential, cell EMF, its measurement and applications, Weston standard cell, hydrogen electrode, calomel electrode, glass electrode, reversible and irreversible cells, concentration cell, electrode (hydrogen gas electrode) and electrolyte concentration cell, concentration cell with and without transference, fuel cells, hydrox fuel cell.
                            Corrosion: Dry corrosion and wet corrosion, mechanisms, types of corrosion, DMC, DAC, stress, inter granular, atmospheric and soil corrosion, Factors affecting corrosion, protection from corrosion by metallic coatings, electroplating, electrolessplating and cathodic protection.
                            Organic Chemistry: Carbon-carbon bond properties, hybridization-sp3, sp2 and sp, homolytic and heterolytic cleavage of carbon-carbon bonds, SN
                            1 and SN2, E1 and E2 reactions,
                            Birch reduction, MPV reduction, Baeyer-Villiger oxidation, Oppenauer oxidation, aromatic nucleophilic substitution, benzyne mechanism, aromatic electrophilic substitution.
                            Thermodynamics: Entropy as a thermodynamic quantity, entropy changes in isothermal expansion of an ideal gas, reversible and irreversible processes and physical transformations, work and free energy functions, Helmholtz and Gibbs free energy functions, Gibbs-
                            Helmholtz equation, Gibbs-Duhem equation, Clapeyron-Clausius equation and its applications, Van’t Hoff isotherm and applications.
                            Fuels and Lubricants: Fuels - classification, examples and relative merits, types of coal, determination of calorific value of solid fuels, Bomb calorimeter, theoretical oxygen requirement for combustion, proximate and ultimate analysis of coal, manufacture of metallurgical coke, flue gas analysis, problems, Lubricants – definition, theories of lubrication, characteristics of lubricants – viscosity, viscosity index, oiliness, pour point, cloud point, flash point, fire point and carbon residue, additives to lubricants, manufacture of lube oil.

                        </td>
                    </tr>
                    <tr><td align="center"><h4>5</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course111');" style="cursor: pointer;"><h4>ENVIRONMENTAL SCIENCE</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course111" style=" display:none;">
                        <td colspan="3" align="justify">
                            Environmental Awareness: Multidisciplinary nature of environmental Science, Definition, scope, importance and need for public awareness
                            Ecology and Environment: concept of an ecosystem , structure and function of an ecosystem, producer , consumer and decomposer, energy and nutrient flow biogeochemical cycles, food chain ,food web, ecological pyramid
                            Environmental Pollution : Segments of environment, sources, pathways and fate of environmental pollutants, causes of environmental pollution , physical ,chemical and biological transformation of pollutants , population explosion, environment and human health, human rights, value education ,women and child welfare
                            Air Pollution: various segments of atmosphere and their significance,classification of air pollutants, toxic effects, sampling and analysis, stationary and mobile emission, sources and their control, photochemical smog ,sulphurous smog, green house effect, global warming, ozone depletion, Air (prevention and control of pollution ) Act
                            Water Pollution: Water resources ,sources of water pollution ,various pollutants, their toxic effect, potability of water , municipal water supply , disinfection, characteristics of waste water, primary and secondary waste water treatment, BOD and COD measurement and their significance ,rain water harvesting ,water shed management,Water ( pollution and control ) Act.
                            Natural Resources and Biodiversity: Renewable and non renewable resources, Forest resource, consequences of deforestation, floods and draughts, equitable use of resources for sustainable development, Dams benefits and problems, Biodiversity: ecosystem diversity, threats to biodiversity, conservation of biodiversity.
                            A brief introduction to Noise Pollution, Soil Pollution, Solid Waste Management.

                        </td>
                    </tr>
                    <tr><td align="center"><h4>6</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course112');" style="cursor: pointer;"><h4>CHEMISTRY-II</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course112" style=" display:none;">
                        <td colspan="3" align="justify">
                            Water: Sources, hard and soft water, estimation of hardness by EDTA method, softening of water, zeolite process and demineralization by ion exchangers, boiler feed water, internal treatment methods, specifications for drinking water, BIS and WHO standards, treatment of water for domestic use, desalination, reverse osmosis, electro dialysis.
                            UV-Visible Spectroscopy: Laws of absorption, deviation from Beer’s law, origin of UV andvisible spectra, colour in organic compounds, absorption by organic and inorganic molecules, Woodward-Fieser rules for calculating absorption maximum in dienes and α, β-unsaturated carbonyl compounds, chemical applications, photometric titrations.
                            Coordination Chemistry: Formation and types of metal complexes, EAN rule, 16 and 18 electron rule, crystal field theory, CFSE, magnetism and colour of transition metal ions, metal carbonyls - bonding and structure, Organometallic compounds in catalysis - hydrogenation, hydroformylation and polymerization, chemistry of hemoglobin, Bohr effect.
                            Phase Equilibria - The Phase Rule: Phase rule, statement and derivation, explanation of the terms, one component system - water, CO2 and sulphur, two component alloy systems, thermal analysis, eutectics, Pb-Ag system, applications of eutectics, two component system giving rise to compound formation, Ca-Mg alloy system, two components forming solid solutions.
                            Polymers: Related terms, nomenclature, functionality, classification, types of polymerization, mechanism of polymerization, molecular weight determination - viscometry, light scattering methods, industrial synthesis of polystyrene, polyethylene terephthalate and Nylon, applications of important polymers in industries and medicine, plastics - Classification

                        </td>
                    </tr>
                    <tr><td align="center"><h4>7</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course113');" style="cursor: pointer;"><h4>PHYSICS -I</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course113" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: Course Contents Theory Component: Overview of vibrations with emphasis on damped and forced oscillations, resonance, coupled oscillations, normal modes. Wave Motion: longitudinal and transverse waves, wave equation, plane waves, phase velocity, superposition wave packets and group velocity, two and three dimensional waves, polarization. Electromagnetic Waves: Maxwell’s equations, wave equation, plane electromagnetic waves, energy-momentum, Poynting’s theorem, electromagnetic boundary conditions, reflection and refraction, interference, Young’s experiment, interferometers, diffraction, Fraunhofer diffraction (single slit), dispersion, radiation. Wave Mechanics: failure of classical physics, qualitative review of relevant experiments, de Broglie waves, uncertainty principle, wave function and Schrodinger equation, probability interpretation, particle on a chain, potential barrier and quantum tunneling, potential well, qualitative summary of simple harmonic oscillator and Hydrogen atom. Occupation probability and examples. Laboratory Component: Suggested Experiments 1.Oscillation in potential well 2.Normal modes of coupled oscillators 3.Measurement of velocity of acoustic waves 4.Newton’s rings 5.Specific rotation of an optically active source 6.Diffraction with laser 7.Dispersive power of a prism 8.Fresnel biprism 9.Franck Hertz experiment 10.Photoelectric effect 11.Measurement of band gap in semiconductors 12.Measurement of Hall effect
                        </td>
                    </tr>
                    <tr><td align="center"><h4>8</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course114');" style="cursor: pointer;"><h4>PHYSICS -II</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course114" style=" display:none;">
                        <td colspan="3" align="justify">
                            Lasers and Fiber Optics
                            Spontaneous and stimulated emissions – Einstein’s coefficients – population inversion and lasing action – coherence – properties and types of lasers – applications – Fermat’s principle and Snell’s law – optical fiber – numerical aperture – types of fibers – fiber optics communication principle – fiber optic sensors.
                            Conductors, Dielectrics and Magnetic Materials
                            Free electron theory (classical and quantum) – Fermi-Dirac statistics – band theory of solids –  dielectrics – types of polarization – internal field and Claussius-Mosotti equation –
                            ferroelectric materials – magnetic materials – types and properties – domain theory – hard and soft magnetic materials – application – superconductivity and types – Meissner effect –high temperature superconductors – applications.
                            Advanced Materials
                            Liquid crystals – types – application as display devices – photonic crystals – nanomaterials (one, two and three dimensional) – physical properties and applications.
                            Materials Evaluation
                            Ultrasonic inspection – pulse echo method – liquid penetration technique – magnetic particle inspection – radiography – thermography – types of spectra – IR, UV and Visible spectroscopy – Raman spectra – NMR technique – applications.
                            Electrodynamics
                            Coulomb’s law for distribution of charges – polarization and Gauss’s law – electric current and equation of continuity – magnetic induction and Lorentz force – steady current and Biot Savart law – Ampere’s law – magnetization and magnetic intensity – Faraday’s law of induction – generalization of Ampere’s law – Maxwell’s equation – electromagnetic wave equation – propagation of EM waves in free space.

                        </td>
                    </tr>
                    <tr><td align="center"><h4>9</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course115');" style="cursor: pointer;"><h4>INTRODUCTION TO MANUFACTURING PROCESSES </h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course115" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: Basic concepts and principles of manufacturing Performing Processes: Casting, forging, rolling, drawing, extrusion, press tool work, plastic moulding and powder metallurgy. Joining Processes: Welding, brazing and crimping Semi-finishing and finishing processes: Machining (Turning, shaping, drilling, Milling and grinding). Non-traditional Processes: Abrasive jet machining, Ultrasonic machining, Electro-discharge machining, and Electrochemical machining and laser beam machining. Product Quality: Possible defects and their detection, assessment and remedy.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>10</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course116');" style="cursor: pointer;"><h4>MATHEMATICS-I</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course116" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: Differential Calculus (Functions of one Variable): Rolle s theorem, Cauchy s mean value theorem (Lagrange s mean value theorem as a special case), Taylor s and Maclaurin s theorems with remainders, indeterminate forms, concavity and convexity of a curve, points of inflexion, asymptotes and curvature. Differential Calculus (Functions of several variables): Limit, continuity and differentiability of functions of several variables, partial derivatives and their geometrical interpretation, differentials, derivatives of composite and implicit functions, derivatives of higher order and their commutativity, Euler s theorem on homogeneous functions, harmonic functions, Taylor s expansion of functions of several variables, maxima and minima of functions of several variables - Lagrange s method of multipliers. Ordinary Differential Equations: First order differential equations - exact, linear and Bernoulli s form, second order differential equations with constant coefficients, method of variation of parameters, general linear differential equations with constant coefficients, Euler s equations, system of differential equations. Sequences and Series: Sequences and their limits, convergence of series, comparison test, Ratio test, Root test, Absolute and conditional convergence, alternating series, Power series. Complex Variables: Limit, continuity, differentiability and analyticity of functions, Cauchy-Riemann equations, line integrals in complex plane, Cauchy s integral theorem, independence of path, existence of indefinite integral, Cauchy s integral formula, derivatives of analytic functions, Taylor s series, Laurent s series, Zeros and singularities, Residue theorem, evaluation of real integrals.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>11</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course117');" style="cursor: pointer;"><h4>FUNDAMENTAL OF ENGINEERING MATHEMATICS</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course117" style=" display:none;">
                        <td colspan="3" align="justify">
                            Complex numbers:
                            Definition Fundamentals operations with complex numbers, amplitude, conjugate of a complex number, Graphical representation of complex numbers, Demoivre’s theorem, Roots of complex numbers. Arithmetie Geometric and Hamonic progressions. Binomial theorem, Exponential and
                            Logarithm series
                            Matrices Algebra:
                            Determinants and their properties, Cramer’s rule type of matrices, Addition Multiplication. Transpose, Adjoint and Inverse of a matrix Solution of linear system of equations by matrix inversion method. Rank of a matrix. Consistency and inconsistency of a system of linear equations. Eigen values and eigen vectors. Cayley Hamiliton Theorem
                            Trigenometry:
                            Circular functions, trigonometric functions and equations, sides of a triangle and T-ratios, Inverse trigonometric functions.
                            Co-ordinate Geometry (Two dimensional):
                            Cartesion & Polar Co-ordinates. Distance between two points, Area of a triangle, Equation of a straight line. Angle between two lines. Distance of a point from a straight line. Equations of circle, parabola, ellipse, and Hyperbola.
                            Vector Algebra:
                            Notation, Types, Addition and Subtraction of vectors, Linearly dependent & independent vectors, Scalar and vector product of two vectors.
                            Vector spaces:
                            Definition, examples and some simple properties. Subspaces, linear combination, linear dependence and independence, Basis and dimension. Norm of a vector, Inner Product.
                            Cauchy-schwartz inequality, orthogonal sets. Gram-schmidt process of construction of orthogonal sets. Parallelogram law and Pythagorian theorem.
                            Vector Calculus and Tensor Analysis:
                            Differentiation of vectors, Radial and transverse, tangential and normal acceleration of a particle moving on a plane curve. Directional derivatives, Gradient, Divergence and Curl.
                            Expansion Identities. Vector integration. Conservative system of forces. Solenoidal and Irrotational vectors. Theorems of Green, Stoke and Gauss and their applications, Tensors, transformation of Co-ordinates, contravariant and covariant vectors and Tensors. Rank of a tensor. Addition and multiplication of tensors. Mixed tensors Contraction.

                        </td>
                    </tr>
                    <tr><td align="center"><h4>12</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course118');" style="cursor: pointer;"><h4>MECHANICS</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course118" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: Force systems: Moment of a force about a point and about an axis; couple moment; reduction of a force system to a force and a couple. Equilibrium: Free body diagram; equations of equilibrium; problems in two and three dimensions; plane frames and trusses. Friction: Laws of Coulomb friction, problems involving large and small contact surfaces; square threaded screws; belt friction; rolling resistance. Kinematics and Kinetics of particles: Particle dynamics in rectangular coordinates cylindrical coordinates and in terms of path variables; central force motion. Properties of areas: Moments of inertia and product of inertia of areas, polar moment of inertia, principal axes and principal moments of inertia. Concept of stress and strain : Normal stress, shear stress, state of stress at a point, ultimate strength, allowable stress, factor of safety; normal strain, shear strain, Hooke’s law, Poisson’s ratio, generalized Hooke’s law; analysis of axially loaded members. Torsion: Torsion of cylindrical bars, torsional stress, modulus of rigidity and deformation. Flexural loading : Shear and moment in beams; load, shear and moment relationship; shear and moment diagrams; flexure formula; shear stress in beams; differential equation of the elastic curve, deflection of beams. Transformation of stress and strain: Transformation of stress and strain, principal stresses, principal strains, Mohr’s circle for stress and strain. Combined loading: Axial and torsional; axial and bending; axial, torsional and bending. Column: Buckling of slender columns, Euler bucking load for different end conditions.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>13</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course119');" style="cursor: pointer;"><h4>ELECTRICAL TECHNOLOGY</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course119" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: Introduction: Sources of energy; General structure of electrical power systems, Power transmission and distribution via overhead lines and underground cables, Steam, Hydel, Gas and Nuclear power generation. DC Networks: Kirchoff’s laws, node voltage and mesh current methods, Delta-star and star-delta conversion, Superposition principle, Thevenin’s and Norton’s theorems. Single phase AC Circuits: Single phase EMF generation, average and effective values of sinusoids, solution of R,L,C series circuits, the j operator, complex representation of impedances, phasor diagram, power factor, power in complex notation, solution of parallel and series – parallel circuits. Three phase AC Circuits: Three phase EMF generation, delta and Y – connections, line and phase quantities, solution of three phase circuits, balanced supply voltage and balanced load, phasor diagram, measurement of power in three phase circuits, Three phase four wire circuits. Magnetic Circuits: Ampere’s circuital law, B – H curve, solution of magnetic circuits, hysteresis and eddy current losses, relays, an application of magnetic force, basic principles of stepper motor. Transformers: Construction, EMF equation, ratings, phasor diagram on no load and full load, equivalent circuit, regulation and efficiency calculations, open and short circuit tests, auto-transformers. Induction Motor: The revolving magnetic field, principle of orientation, ratings, and equivalent circuit, Torque-speed characteristics, starters for cage and wound rotor type induction motors. DC Machines: Construction, EMF and Torque equations, Characteristics of DC generators and motors, speed control of DC motors and DC motor starters. Electrical Measuring Instruments: DC PMMC instruments, shunt and multipliers, multimeters, Moving iron ammeters and voltmeters, dynamometer, wattmeter, AC watthour meter, extension of instrument ranges.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>14</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course120');" style="cursor: pointer;"><h4>BASIC ELECTRONICS </h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course120" style=" display:none;">
                        <td colspan="3" align="justify">
                            Introduction: Electronic system as a conglomeration of several subsystems, such as transducer, amplifier, filter, oscillator, data converter, display device, power supply etc., examples of typical electronic systems (mobile phone, portable CD player etc.), basic concept of signal, noise, etc. Semiconductor devices: Diode, BJT, MOSFET, their structures and principle of operations. Amplifiers: Functionality, specifications (voltage gain, current gain, input resistance, output resistance, dynamic range, bandwidth, linearity, power efficiency etc.), effect of cascading, various applications and typical circuits. Filters: Low pass, high pass, band pass and band stop filters, single and higher order passive filter topologies (RC and LC), specifications (cutoff frequency, roll off, etc.). Feedback: Basic concept of negative and positive feedback, application of negative feedback in amplifiers, effect on gain, bandwidth, input resistance, output resistance and desensitivity to parameter variations. Oscillators: Barkhausen criterion, sinusoidal and non-sinusoidal oscillators, applications and typical circuits. Operational amplifier: Differential mode of operation, common mode rejection, typical op-amp specifications (open loop gain, differential input resistance, unity gain-bandwidth etc.), inverting amplifier, non-inverting amplifier, integrator, differentiator, summing amplifier etc., concept of active filters. Power electronics: Half wave and full wave rectification, filtering, regulation with zener diode and linear regulators, switched mode power supply. Digital electronics: Review of Boolean algebra and signed number representation schemes in binary, implementation of Boolean functions using various logic gates, concept of combinatorial and sequential circuits, registers and counters from functional viewpoint, concept of programmable processors and microcontrollers. Introduction to analog-to-digital and digital-to-analog data converters, their speed and resolution, basic concept of aliasing in the sampling process.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>15</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course121');" style="cursor: pointer;"><h4>ENGLISH FOR COMMUNICATION</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course121" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: The aim of this foundational course is to help the second language learners acquire fluency in both spoken and written English to communicate messages with clarity, precision and confidence in the workplace. The course will have three components: Language, Speaking and Writing. The skills required in these areas will be imparted through Lectures and Sessionals. While lectures will introduce learners to the basic concepts in communication, sessionals will provide hands-on experience. It is hoped that after commanding the skills required in spoken and written English, learners will be able to communicate better. Section A (lecture topics) Introduction to communication, Language and grammar skills, speaking skills, Writing skills Section B (Sessionals) Building Vocabulary, Building sentences, Grammar, Pronunciation drills, Phonetics, vowels, Diphthongs, consonants, Stress, Rhythm and intonation, Conversational skills, Meta Language, the writing process, Writing with a thesis, Writing topic sentences, Writing a paragraph, linking paragraph.
                        </td>
                    </tr>
                </table>

            </div>
            <div id="footer">
                <p align="center">&copy; 2012-2013 Pedagogy Project</p>
            </div>
        </div>
    </body>
</html>