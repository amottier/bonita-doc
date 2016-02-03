
1.5.4 Gateways
==============

[](){#top}
Gateways are used to control how sequence flows interact as they
converge and diverge within a process.

There are three types of gateway available for process design in
Bonita BPM Studio: [parallel (AND)](#parallel), [exclusive (XOR)](#exclusive), and [inclusive](#inclusive). These gateways
behave in accordance with the BPMN2 specification.

[Parallel (AND) gateways](){#parallel}
--------------------------------------

<div style="text-align: center;">

![Diagram of a parallel (AND) gateway](images/images-6_0/papde_pm_diag_gateways_parallel_gate.png "Parallel (AND) gateway")
<div class="caption" style="clear: both">

<span style="display: block;color: #BC071B;text-align: center;margin-top: 10px">Parallel (AND) gateway</span>

</div>

</div>

In a parallel (AND) gateway, all inputs must be received before the
process can continue, and all outputs fire simultaneously. No
condition can be put in the output.

[Exclusive (XOR) gateways](){#exclusive}
----------------------------------------

<div style="text-align: center;">

![Diagram of a exclusive (XOR) gateway](images/images-6_0/papde_pm_diag_gateways_exclusive_gate.png "Exclusive (XOR) gateway")
<div class="caption" style="clear: both">

<span style="display: block;color: #BC071B;text-align: center;margin-top: 10px">Exclusive (XOR) gateway</span>

</div>

</div>

For an exclusive (XOR) gateway, the design must ensure that only one
input will reach the gateway. Only one output fires. If there are
several outputs defined, a condition is required to determine
which one fires.

[Inclusive gateways](){#inclusive}
----------------------------------

<div style="text-align: center;">

![diagram of a inclusive gateway](images/images-6_0/papde_pm_diag_gateways_inclusive_gate.png "Inclusive gateway")
<div class="caption" style="clear: both">

<span style="display: block;color: #BC071B;text-align: center;margin-top: 10px">Inclusive gateway</span>

</div>

</div>

An inclusive gateway waits for the input from all active paths,
and activates all outgoing transitions that have a condition that
evaluates to true. If there is only one outgoing transition, no condition is needed and the transition is always activated. If there is more than one outgoing transition,
every transition must either be the default or must have a condition.

