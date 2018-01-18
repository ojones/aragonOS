pragma solidity 0.4.18;


contract EVMScriptRegistryConstants {
    bytes32 constant public EVMSCRIPT_REGISTRY_APP_ID = keccak256("evmreg.aragonpm.eth");
    bytes32 constant public EVMSCRIPT_REGISTRY_APP = keccak256(uint256(1), EVMSCRIPT_REGISTRY_APP_ID);
}

interface IEVMScriptRegistry {
    function addScriptExecutor(address _executor) external;
    function disableScriptExecutor(uint256 _executorId) external;

    function getScriptExecutor(bytes _script) public view returns (address);
}
