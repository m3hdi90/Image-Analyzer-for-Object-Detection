
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ImageAnalyzer {
    struct ImageData {
        string imageUrl;
        string[] detectedObjects;
    }

    ImageData[] public analysisResults;

    function addAnalysisResult(string memory imageUrl, string[] memory detectedObjects) public {
        analysisResults.push(ImageData(imageUrl, detectedObjects));
    }

    function getAnalysisResults() public view returns (ImageData[] memory) {
        return analysisResults;
    }
}
