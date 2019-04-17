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
                        <li ><a href="main_page.jsp">Course Development</a></li>
                        
                        
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
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">1. Electronics and Communications Engineering</h3></td>
                    </tr>

                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course21');" style="cursor: pointer;"><h4>PROBABILITY THEORY AND STOCHASTIC PROCESSES</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="background-color: #e5e5e5" height="15"></td>
                    </tr>
                    <tr><td align="center"><h4>2</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course30');" style="cursor: pointer;"><h4>OPTICAL  COMMUNICATION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course30" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Introduction to optical communication, review of optical sources, fiber and detector, optical signaling schemes viz., IM, PL, PCM, PCM/PL, digital PPM, PFM, PAM. Various receiver configurations - direct detection, homodyne and heterodyne receivers, Noise sources in optical communication - modal noise, speckle noise, shot noise, phase noise, thermal noise, Integrated and transimpedance amplifiers, optical line coding, performance evaluation of optical receivers for various modulation and demodulation schemes and their comparative study. Diversity receivers-phase and polarization diversities. Optical fiber link design, fiber optics networks, introduction to optical space communication.
                        </td>
                    </tr>
<tr><td align="center"><h4>3</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course31');" style="cursor: pointer;"><h4>TELECOM TRANSMISSION AND SWITCHING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>4</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course32');" style="cursor: pointer;"><h4>MEASUREMENT AND INSTRUMENTATION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">2. Electrical Engineering</h3></td>
                    </tr>


                    <tr><td align="center"><h4>1</h4></td>
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
                    <tr><td align="center"><h4>2</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course42');" style="cursor: pointer;"><h4>POWER SYSTEM DYNAMICS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course42" style=" display:none;">
                        <td colspan="3" align="justify" >

                            Dynamic models of synchronous machines, excitation system, turbines, governors, loads. Modelling of single-machine-infinite bus system. Mathematical modelling of multimachine system. Dynamic and transient stability analysis of single machine and multi-machine systems. Power system stabilizer design for multimachine systems. Dynamic equi-valencing. Voltage stability Techniques for the improvement of stability. Direct method of transient stability analysis: Transient energy function approach.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>3</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course43');" style="cursor: pointer;"><h4>POWER SYSTEM OPTIMIZATION</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course43" style=" display:none;">
                        <td colspan="3" align="justify" >

                          The course has twofold objectives. The first being discussion on the entire gamut of power system optimisation problems. The second objective is to enlighten the reader about various optimisation techniques / methods that prove useful in solving power system related problems. Idea here is to introduce to the reader, not only the classical power system optimisation problems like Economic Load Despatch, Unit Committment, Optimal Power Flow, Reactive Power Optimisation, Optimal Load Shedding,  etc., but also the optimisation problems of the deregulated era. Use of classical optimisation techniques like Lagrange multipliers, equal incremental principle, linear programming, quadratic programming, network flow programming, nonlinear programming as well as evolutionary techniques will be presented.
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">3.Civil Engineering</h3></td>
                    </tr>

                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course50');" style="cursor: pointer;"><h4>INTRODUCTION TO CIVIL ENGG.</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course50" style=" display:none;">
                        <td colspan="3" align="justify">

                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="background-color: #e5e5e5" height="15"></td>
                    </tr>


                    <tr><td align="center"><h4>2</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course58');" style="cursor: pointer;"><h4>URBAN TRANSPORTATION SYSTEMS PLANNING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>3</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course59');" style="cursor: pointer;"><h4>STRUCTURAL HEALTH MONITORING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>

                    <tr><td align="center"><h4>4</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course64');" style="cursor: pointer;"><h4>ENVIRONMENTAL IMPACT ASSESSMENT AND AUDITING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr><td align="center"><h4>5</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course65');" style="cursor: pointer;"><h4>ENGINEERING GEOLOGY</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">4.	Chemical Engineering</h3></td>
                    </tr>


                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course71');" style="cursor: pointer;"><h4>CHEMICAL PROCESS TECHNOLOGY</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course71" style=" display:none;">
                        <td colspan="3" align="justify">
                            To give an overall view of the chemical process industries to the students i.e. about raw material, different manufacturing process, properties of raw materials and products etc.
                            Course includes raw materials and principles of production of olefins and aromatics; typical intermediates from olefins and aromatics such as ethylene glycol, ethyl benzene, phenol, cumene and DMT, dyes, and pharmaceuticals; chemical processes based on raw materials sugar, starch, alcohol, cellulose, paper, glyceride, oils, soaps, detergents; industrial processes for the production of inorganic heavy chemicals such as acids, alkalis, salts, and fertilizers such as sulphuric, nitric, and phosphoric acids, soda ash, ammonia, etc. Polymer, synthetic fiber, Fine chemicals and drugs, Coal based Chemical Industries etc.

                        </td>
                    </tr>

                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">5.	Mechanical Engineering</h3></td>
                    </tr>
                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course91');" style="cursor: pointer;"><h4>DYNAMICS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course91" style=" display:none;">
                        <td colspan="3" align="justify">
                            Kinematics of particles: representation of motion of particles in various coordinate systems, relative motion in translating frames, constrained motion. Kinetics of particles: Concept of an inertial frame and Newtons second law, equations of motion for unconstrained and constrained motion, work-energy relation, conservation of energy, conservative and non-conservative forces, potential energy, impulse-momentum relation, angular momentum, conservation of momentum, dAlemberts principle. Applications: central force motion, impact. Kinetics of a system of particles: Newtons second law, work-energy relation, impulse-momentum relations, conservation laws, steady and variable mass flow systems. Plane kinematics of rigid bodies: Kinematics of rigid bodies, instantaneous center of rotation, kinematics in rotating frames and relative motion. Plane kinetics of rigid bodies: Linear and angular momentum, equations of motion, work-energy relation, impulse-momentum relation, conservation laws. Introduction to spatial dynamics of rigid bodies: Kinematics in rotating frames and relative motion, angular momentum, kinetic energy, equations of motion, special cases of parallel-plane motion, and gyroscopic motion.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>2</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course92');" style="cursor: pointer;"><h4>KINEMATICS OF MACHINES</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course92" style=" display:none;">
                        <td colspan="3" align="justify">
                            Dynamics Introduction to mechanisms: kinematic pairs, kinematic diagrams, classification of kinematic chains, kinematic inversions, and equivalent linkages. Kinematic analysis of planar mechanisms: mobility analysis and range of movement, Grashof criterion and inversions, displacement analysis, relative instantaneous centers, Aronhold-Kennedy theorem, velocity and acceleration analysis. Dimensional synthesis of planar mechanisms: three position synthesis for function generation, path generation and rigid body guidance, dead center problems, branch and order defects. Cams: synthesis of translating flat-face, translating roller and oscillating roller follower cams. Gears: fundamental law of gearing, characteristics of involutive action, analysis of gear trains. Spatial kinematic chains and robot kinematics: kinematic analysis of spatial chains, Denavit-Hartenberg parameters, robot kinematics.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>3</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course93');" style="cursor: pointer;"><h4>MECHANICS OF SOLIDS</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course93" style=" display:none;">
                        <td colspan="3" align="justify">
                            Prerequisite â MechanicsIntroduction of theory of elasticity- Analysis of Stress and Strain, Stress equation of equilibrium, Compatibility equations, Stress-Strain Relations, Solution of elasticity equations-stress function approach. Theories of failure- Yield criteria. Energy methods- Generalized forces and displacements, Reciprocal Theorem, Maxwell-Betti-Raleigh reciprocal theorem, Castigliano âs theorems, Theorem of virtual work. Bending of Beams- Straight and asymmetrical bending, Shear center, bending of curved beams, Deflection of thick curved beams. Axisymmetric problems- Thick walled cylinders subjected to internal and external pressures-Lameâ s equation, Stresses in composite tubes-Shrink fits, Rotating discs with uniform and variable thickness, Rotating shafts and cylinders. Columns and struts- Eulerâ s Buckling load, Different end conditions, Beam columns, Energy methods in buckling problems.
                        </td>
                    </tr>


                    <tr><td align="center"><h4>4</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course126');" style="cursor: pointer;"><h4>DYNAMICS OF MACHINES</h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course126" style=" display:none;">
                        <td colspan="3" align="justify">
                            Generalized coordinates, constraints and their types, degrees-of-freedom, discrete and continuous systems, conservative and non-conservative forces. Discrete systems: Equations of motion: Hamilton’s principle and Lagrange’s equation, considerations for constraints and non-conservative forces. Theory of small oscillations: Equation of motion, free response using complex vector representation of solution and transform methods, eigenvalue problem, characteristic equation, properties of inertia and stiffness matrices, concept of normal modes, their properties and expansion theorem, initial value problem, beat phenomenon, classical and non-classical viscous damping, other types of damping, forced vibration (undamped and damped) under harmonic and general forcing, frequency response function, resonance and Q-factor, logarithmic decrement, base excited vibration, tuned mass absorber and damper, critical speeds and whirling of shafts, field balancing of rigid rotors, Single cylinder engine balancing, Raleighs method. Continuous systems: Equation of motion for transverse vibration of strings, axial vibration of bars, torsional vibration of shafts using Newtonian approach, transverse vibration of beams. Free vibrations and eigenvalue problem, normal modes, orthogonality and expansion theorem.
                        </td>
                    </tr>

                    <tr><td align="center"><h4>5</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course95');" style="cursor: pointer;"><h4>APPLIED THERMO-FLUIDS </h4></a></td>
                        <td align="center"><h4>Core</h4></td>
                    </tr>
                    <tr id="course" style=" display:none;">
                        <td colspan="3" align="justify">

                        </td>
                    </tr>

                    <tr><td align="center"><h4>6</h4></td>
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
                    <tr><td align="center"><h4>7</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course97');" style="cursor: pointer;"><h4>ADVANCED FLUID MECHANICS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course97" style=" display:none;">
                        <td colspan="3" align="justify">
                            Concept of continuum and definition of a fluid. Body and surface forces, stress tensor. Scalar and vector fields, Eulerian and Lagrangian description of flow. Motion of fluid element ; translation, rotation and vorticity; strain rate tensor, continuity equation, stream function and velocity potential. Constitutive equations, derivation of Navier;Stokes equations. Exact solutions of Navier;Stokes equations: plane Poiseuille flow and Couette flow, Hagen;Poiseuille flow, flow between two concertic rotating cylinders, Stokes first and second problem, Hiemenz flow, flow near a rotating disk, flow in convergent-divergent channels. Slow viscous flow: Stokes and Oseen s approximation, theory of hydrodynamic lubrication. Thin-film equations. Boundary layer: derivation, exact solutions, Blasius, Falkner Skan, series solution and numerical solutions. Approximate methods. Momentum integral method. Two dimensional and axisymmetric jets. Introduction to Hydrodynamic stability: linear stability of plane Poiseuille flow, Orr;Sommerfeld equation. Description of turbulent flow, velocity correlations, Reynolds stresses, Prandtl s Mixing Length Theory, Karman s velocity defect law, universal velocity distribution. Concepts of closure model, eddy viscosity models of turbulence- zero equation, one equation and two-equation models.
                        </td>
                    </tr>

                    <tr><td align="center"><h4>8</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course99');" style="cursor: pointer;"><h4>MACHINERY FAULT DIAGNOSTICS AND SIGNAL PROCESSING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course99" style=" display:none;">
                        <td colspan="3" align="justify">
                            Machinery Fault Diagnostics and Signal ProcessingMaintenance Principles, FMECA, Basics of Machine Vibration, Signal Analysis, Computer aided data acquisition, Time Domain Signal Analysis, Frequency Domain Signal Analysis, Fault Detection Transducers and Monitoring, Vibration Monitoring, Field Balancing of Rotors, Condition Monitoring of Rotating Machines, Noise Monitoring, Wear and Debris Analysis, Thermography, Electric Motor Current Signature Analysis, Ultrasonics in Condition Monitoring, NDT Techniques in Condition Monitoring, Case studies.
                        </td>
                    </tr>

                    <tr><td align="center"><h4>9</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course101');" style="cursor: pointer;"><h4>COMPUTATIONAL FLUID DYNAMICS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course" style=" display:none;">
                        <td colspan="3" align="justify">
                            A brief overview of the basic conservation equations for fluid flow and heat transfer, classification of partial differential equations and pertinent physical behaviour, parabolic, elliptic and hyperbolic equations, role of characteristics. Common methods of discretization: an overview of finite difference, finite element and finite volume methods. Numerical solution of parabolic partial differential equations using finite-difference and finite-volume methods: explicit and implicit schemes, consistency, stability and convergence. Numerical solution of systems of linear algebraic equations: general concepts of elimination and iterative methods, Gaussian elimination, LU decomposition, tridiagonal matrix algorithm, Jacobi and Gauss-Seidel iterations, necessary and sufficient conditions for convergence of iterative schemes, gradient search methods, steepest descent and conjugate gradient methods.The finite volume method of discretization for diffusion problems: one-dimensional steady diffusion problems, specification of interface diffusivity, source-term linearization. Discretization of transient one-dimensional diffusion problems. Discretization for multi-dimensional diffusion problems. Solution of discretized equations using point and line iterations, strongly implicit methods and pre-conditioned conjugate gradient methods.Convection-diffusion problems: Central difference, upwind, exponential, hybrid and power-law schemes, concept of false diffusion, QUICK scheme.Numerical solution of the Navier-Stokes system for incompressible flows: stream-function vorticity and artificial compressibility methods, requirement of a staggered grid. MAC, SIMPLE, SIMPLEC and SIMPLER algorithms.An introduction to unstructured grid finite volume methods. Special topics: Turbulence and its modeling, phase-change problems, interface/free-surface tracking methods.
                        </td>
                    </tr>

                    <tr><td align="center"><h4>10</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course103');" style="cursor: pointer;"><h4>REFRIGERATION & AIR CONDITIONING</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>
                    <tr id="course103" style=" display:none;">
                        <td colspan="3" align="justify">
                            Gas Cycle Refrigeration - Air refrigeration system, Bell Colleman air cycle, Boot strap system, Aircraft refrigeration systems, Actual cycle, Ramming, Compression and Turbine efficiencies, Coefficient of performance; Vapour Compression Refrigeration - Analysis of vapour compression cycle, Losses and efficiencies of components, Factors affecting the performance of a simple vapour compression system, Heat balance, Multistage vapour compression system with flash intercooler, Multi evaporation system, Cascade refrigeration system; Absorption Refrigeration - Desirable properties of refrigerants and solvents, Thermodynamics analysis of vapour absorption System, Comparison between vapour absorption and vapour compression s ystem, Aqua-Ammonia and Lithium Bromide absorption system; Psychrometry and Psychrometric Processes - Psychrometric properties, Psychrometers, Preparation of psychrometric charts, Enthalpy deviation, Psychrometric Processes - Mixing process, Sensible heating, Sensible cooling, Humidification, Dehumidification, Cooling and Dehumidification, Heating and humidification, Bypass factor, Apparatus dew point, Sensible heat factor, Air washer, Adiabatic humidification, Efficiency of h umidification, Summer and Winter air conditioning system; Load Calculation - Calculation of summer and winter loads, Heat gain through walls, roofs, floors, windows, and doors; Air Conditioning Systems and Equipments -Humidifiers, Air coolers, Dehumidifiers, Air cleaners, Impurities in air and air cleaners, Ducts, Pressure drop in ducts.
                        </td>
                    </tr>
<tr><td align="center"><h4>11</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course104');" style="cursor: pointer;"><h4>MEASUREMENT SYSTEMS</h4></a></td>
                        <td align="center"><h4>Elective</h4></td>
                    </tr>


                    <tr>
                        <td colspan="3" align="center"><h3 style="background-color: #e5e5e5">6.	1st  and 2nd Semester courses</h3></td>
                    </tr>


                    <tr><td align="center"><h4>1</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course108');" style="cursor: pointer;"><h4>PROGRAMMING AND DATA STRUCTURES</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course108" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: Introduction to digital computers; introduction to programming â variables, assignments; expressions; input/output; conditionals and branching; iteration; functions; recursion; arrays; introduction to pointers; character strings; time and space requirements; searching and sorting; structures; introduction to data-procedure encapsulation; dynamic allocation; linked structures; introduction to data structures â stacks and queues. (A programming language like C/C++ may be used as a basis language. The same language must be used for the laboratory).
                        </td>
                    </tr>


                    <tr><td align="center"><h4>2</h4></td>
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


                    <tr><td align="center"><h4>3</h4></td>
                        <td align="char"><a onclick="javascript:showHide('course116');" style="cursor: pointer;"><h4>MATHEMATICS-I</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course116" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: Differential Calculus (Functions of one Variable): Rolle s theorem, Cauchy s mean value theorem (Lagrange s mean value theorem as a special case), Taylor s and Maclaurin s theorems with remainders, indeterminate forms, concavity and convexity of a curve, points of inflexion, asymptotes and curvature. Differential Calculus (Functions of several variables): Limit, continuity and differentiability of functions of several variables, partial derivatives and their geometrical interpretation, differentials, derivatives of composite and implicit functions, derivatives of higher order and their commutativity, Euler s theorem on homogeneous functions, harmonic functions, Taylor s expansion of functions of several variables, maxima and minima of functions of several variables - Lagrange s method of multipliers. Ordinary Differential Equations: First order differential equations - exact, linear and Bernoulli s form, second order differential equations with constant coefficients, method of variation of parameters, general linear differential equations with constant coefficients, Euler s equations, system of differential equations. Sequences and Series: Sequences and their limits, convergence of series, comparison test, Ratio test, Root test, Absolute and conditional convergence, alternating series, Power series. Complex Variables: Limit, continuity, differentiability and analyticity of functions, Cauchy-Riemann equations, line integrals in complex plane, Cauchy s integral theorem, independence of path, existence of indefinite integral, Cauchy s integral formula, derivatives of analytic functions, Taylor s series, Laurent s series, Zeros and singularities, Residue theorem, evaluation of real integrals.
                        </td>
                    </tr>
                    <tr><td align="center"><h4>4</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course117');" style="cursor: pointer;"><h4>ENGINEERING MATHEMATICS</h4></a></td>
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

                    <tr><td align="center"><h4>5</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course119');" style="cursor: pointer;"><h4>BASIC ELECTRICAL ENGINEERING</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course119" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: Introduction: Sources of energy; General structure of electrical power systems, Power transmission and distribution via overhead lines and underground cables, Steam, Hydel, Gas and Nuclear power generation. DC Networks: Kirchoff’s laws, node voltage and mesh current methods, Delta-star and star-delta conversion, Superposition principle, Thevenin’s and Norton’s theorems. Single phase AC Circuits: Single phase EMF generation, average and effective values of sinusoids, solution of R,L,C series circuits, the j operator, complex representation of impedances, phasor diagram, power factor, power in complex notation, solution of parallel and series – parallel circuits. Three phase AC Circuits: Three phase EMF generation, delta and Y – connections, line and phase quantities, solution of three phase circuits, balanced supply voltage and balanced load, phasor diagram, measurement of power in three phase circuits, Three phase four wire circuits. Magnetic Circuits: Ampere’s circuital law, B – H curve, solution of magnetic circuits, hysteresis and eddy current losses, relays, an application of magnetic force, basic principles of stepper motor. Transformers: Construction, EMF equation, ratings, phasor diagram on no load and full load, equivalent circuit, regulation and efficiency calculations, open and short circuit tests, auto-transformers. Induction Motor: The revolving magnetic field, principle of orientation, ratings, and equivalent circuit, Torque-speed characteristics, starters for cage and wound rotor type induction motors. DC Machines: Construction, EMF and Torque equations, Characteristics of DC generators and motors, speed control of DC motors and DC motor starters. Electrical Measuring Instruments: DC PMMC instruments, shunt and multipliers, multimeters, Moving iron ammeters and voltmeters, dynamometer, wattmeter, AC watthour meter, extension of instrument ranges.
                        </td>
                    </tr>

                    <tr><td align="center"><h4>6</h4></td>
                        <td align="justify"><a onclick="javascript:showHide('course121');" style="cursor: pointer;"><h4>ENGLISH FOR COMMUNICATION</h4></a></td>
                        <td align="center"><h4>DEPTH</h4></td>
                    </tr>
                    <tr id="course121" style=" display:none;">
                        <td colspan="3" align="justify">
                            Course description: The aim of this foundational course is to help the second language learners acquire fluency in both spoken and written English to communicate messages with clarity, precision and confidence in the workplace. The course will have three components: Language, Speaking and Writing. The skills required in these areas will be imparted through Lectures and Sessionals. While lectures will introduce learners to the basic concepts in communication, sessionals will provide hands-on experience. It is hoped that after commanding the skills required in spoken and written English, learners will be able to communicate better. Section A (lecture topics) Introduction to communication, Language and grammar skills, speaking skills, Writing skills Section B (Sessionals) Building Vocabulary, Building sentences, Grammar, Pronunciation drills, Phonetics, vowels, Diphthongs, consonants, Stress, Rhythm and intonation, Conversational skills, Meta Language, the writing process, Writing with a thesis, Writing topic sentences, Writing a paragraph, linking paragraph.
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
                </table>

            </div>
            <div id="footer">
                <p align="center">&copy; 2012-2013 Pedagogy Project</p>
            </div>
        </div>
    </body>
</html>