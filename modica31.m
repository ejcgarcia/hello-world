numcase = 31;
% initial state {Project}

% initial state -> Precondition {Project}

% Precondition {Project}

% TriggerStep: XMI#_gPqgIA33PG5iowBVbYCxHm

% Testsetup ready (Precondition -> Action) {Project}

% Action {Project}

% NamingFragmentStep: Charging: 0 Speed: 0 PBrake: 0 SoC: 0 BTemp: 0 BWarn: 0 ChgPlug: 0 ChgRecog: 0 ChgCurr: 0 CIntrpt: 0  IgnSt: 0 | 

% Action {Project}

% initial state {Project/Action}

% initial state -> Charge Status Check {Project/Action}

% Charge Status Check {Project/Action}

% _ChargeCheck

% Charge Status Check {Project/Action}

% Currently not charging (Charge Status Check -> Battery not charging) {Project/Action}

% Battery not charging {Project/Action}

% _NotCharging

% Battery not charging {Project/Action}

% Battery already full or connector unplugged (Battery not charging -> final state) {Project/Action}

% final state {Project/Action}

% TriggerStep: XMI#_whUo8NBeEeiECMzvEMeeCA

% Charging Change (Action -> Action) {Project}

Battery_Charging = [0 1];
% Action {Project}

% NamingFragmentStep: Charging: 1 Speed: 0 PBrake: 0 SoC: 0 BTemp: 0 BWarn: 0 ChgPlug: 0 ChgRecog: 0 ChgCurr: 0 CIntrpt: 0  IgnSt: 0 | 

% Action {Project}

% initial state {Project/Action}

% initial state -> Charge Status Check {Project/Action}

% Charge Status Check {Project/Action}

% _ChargeCheck

% Charge Status Check {Project/Action}

% Currently charging (Charge Status Check -> Battery Already Charging) {Project/Action}

% Battery Already Charging {Project/Action}

% _AlreadyCharging

% Battery Already Charging {Project/Action}

% Battery Already Charging -> Check Charge {Project/Action}

% Check Charge {Project/Action}

% _CheckCharge

% Check Charge {Project/Action}

% Conditions for charging not met (Check Charge -> Error detected) {Project/Action}

% Error detected {Project/Action}

% NamingFragmentStep: _ChargeError

% Error detected {Project/Action}

% Error detected -> final state {Project/Action}

% final state {Project/Action}

% TriggerStep: XMI#_ghEZMA33b3nrc5hxnE0ttb

% Test finished (Action -> Postcondition) {Project}

% Postcondition {Project}

% initial state {Project/Postcondition}

% initial state -> Final Steps {Project/Postcondition}

% Final Steps {Project/Postcondition}

exp_output = 0;
% Final Steps {Project/Postcondition}

simOut = sim('milladeregelungauto');

if laderegelung.data ~= exp_output
    failure = numcase;
end
% Final Steps -> final state {Project/Postcondition}

% final state {Project/Postcondition}

% Postcondition -> final state {Project}

% final state {Project}
