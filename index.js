
const NUM_FLAG = '--num'
const COLOR_FLAG = '--color'

const main = () => {

    const args = process.argv.slice(2)

    const numFlagValue = getArgValues(args, NUM_FLAG)
    const colorFlagValue = getArgValues(args, COLOR_FLAG)

    let stringToLog = `foobar`

    if (numFlagValue)
        stringToLog += ` ${numFlagValue}`

    if (colorFlagValue)
        stringToLog += ` ${colorFlagValue}`

    console.log(stringToLog)

}

/** Utility function to pull the value off of a flag that takes one */
const getArgValues = (args, flag) => {

    const argToFind = args.find(arg => arg.includes(flag))

    return argToFind && argToFind.substring(flag.length + 1, argToFind.length)
}

main()