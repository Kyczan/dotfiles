#!/usr/bin/env node

const fs = require('fs');
const readline = require('readline');

const file="/tmp/startime";
const button = process.env.BLOCK_BUTTON;
const now = new Date().getTime();
const label = "";

switch (button) {
    case "1":
        startStopwatch();
        break;
    case "3":
        resetStopwatch();
        break;
    default:
        break;
}

function startStopwatch() {
    fs.writeFileSync(file, now);
}

function resetStopwatch() {
    fs.writeFileSync(file, "0");
    console.log(label);
}

function lpad(x) {
    return ('0' + x).slice(-2);
}

function getStopwatchTime(now, past) {
    const allSeconds = Math.round((now - past) / 1000);
    const hours = Math.floor(allSeconds / 3600);
    const tailSeconds = allSeconds - hours * 3600;
    const minutes = Math.floor(tailSeconds / 60);
    const seconds = allSeconds - hours * 3600 - minutes * 60;
    return (lpad(hours) + ":" + lpad(minutes) + ":" + lpad(seconds));
}

function run() {

    if(!fs.existsSync(file)){
        fs.writeFileSync(file, now);
    }

    var lineReader = require('readline').createInterface({
        input: require('fs').createReadStream(file)
    });
    
    lineReader.on('line', function (past) {
        if (past == 0) {
            console.log(label);
            return;
        }
        console.log(label + " " + getStopwatchTime(now, past));
    });

}

run();