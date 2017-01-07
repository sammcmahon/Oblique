#!/bin/bash

#MIT License

#Copyright (c) 2017 Sam McMahon

#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:

#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.

#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

# An 'Oblique Strategies' picker for the terminal.
# 'Oblique Strategies' by Brian Eno

STRATEGIES=(
    '(Organic) machinery'
    'A line has two sides'
    'A very small object         Its center'
    'Abandon desire'
    'Abandon normal instructions'
    'Abandon normal instruments'
    'Accept advice'
    'Accretion'
    'Adding on'
    'Allow an easement (an easement is the abandonment of a stricture)'
    'Always first steps'
    'Always give yourself credit for having more than personality (given by Arto Lindsay)'
    'Are there sections?  Consider transitions'
    'Ask people to work against their better judgement'
    'Ask your body'
    'Assemble some of the elements in a group and treat the group'
    'Balance the consistency principle with the inconsistency principle'
    'Be dirty'
    'Be extravagant'
    'Be less critical'
    'Breathe more deeply'
    'Bridges\n--build\n--burn'
    'Cascades'
    'Change ambiguities to specifics'
    'Change instrument roles'
    'Change nothing and continue with immaculate consistency'
    'Change specifics to ambiguities'
    'Children\n--speaking\n--singing'
    'Cluster analysis'
    'Consider different fading systems'
    'Consider transitions'
    'Consult other sources\n--promising\n--unpromising'
    'Convert a melodic element into a rhythmic element'
    'Courage!'
    'Cut a vital connection'
    'Decorate, decorate'
    'Define an area as "safe" and use it as an anchor'
    'Destroy\n-nothing\n-the most important thing'
    'Discard an axiom'
    'Disciplined self-indulgence'
    'Disconnect from desire'
    'Discover the recipes you are using and abandon them'
    'Display your talent'
    'Distort time'
    'Do nothing for as long as possible'
    'Do something boring'
    'Do the last thing first'
    'Do the washing up'
    'Do the words need changing?'
    'Do we need holes?'
    "Don\'t avoid what is easy"
    "Don\'t be frightened of cliches"
    "Don\'t break the silence"
    "Don\'t stress one thing more than another"
    "Don't be afraid of things because they\'re easy to do"
    "Don't be frightened to display your talents"
    'Emphasize differences'
    'Emphasize repetitions'
    'Emphasize the flaws'
    'Faced with a choice, do both (given by Dieter Rot)'
    'Feed the recording back out of the medium'
    'Fill every beat with something'
    'Find a safe part and use it as an anchor'
    'Get your neck massaged'
    'Ghost echoes'
    'Give the game away'
    'Give way to your worst impulse'
    'Go outside. Shut the door.'
    'Go slowly all the way round the outside'
    'Go to an extreme, come part way back'
    'Honor thy mistake as a hidden intention'
    'How would someone else do it?'
    'How would you have done it?'
    'Humanize something free of error'
    'Idiot glee (?)'
    'Imagine the piece as a set of disconnected events'
    'In total darkness, or in a very large room, very quietly'
    'Infinitesimal gradations'
    'Intentions\n--nobility of\n--humility of\n--credibility of'
    'Into the impossible'
    'Is it finished?'
    'Is something missing?'
    'Is the information correct?'
    'Is the style right?'
    'Is there something missing'
    'It is quite possible (after all)'
    'It is simply a matter of work'
    'Just carry on'
    'Left channel, right channel, center channel'
    'Listen to the quiet voice'
    'Look at the order in which you do things'
    'Look closely at the most embarrassing details & amplify them'
    'Lost in useless territory'
    'Lowest common denominator'
    'Magnify the most difficult details'
    'Make a blank valuable by putting it in an exquisite frame'
    'Make a sudden, destructive unpredictable action; incorporate'
    'Make an exhaustive list of everything you might do & do the last thing on the list'
    'Make it more sensual'
    "Make what\'s perfect more human"
    'Mechanicalize something idiosyncratic'
    'Move towards the unimportant'
    'Mute and continue'
    'Not building a wall but making a brick'
    'Once the search has begun, something will be found'
    'Only a part, not the whole'
    'Only one element of each kind'
    'Overtly resist change'
    "Pae White\'s non-blank graphic metacard"
    'Put in earplugs'
    'Question the heroic'
    'Reevaluation (a warm feeling)'
    'Remember those quiet evenings'
    'Remove a restriction'
    'Remove ambiguities and convert to specifics'
    'Remove specifics and convert to ambiguities'
    'Repetition is a form of change'
    'Retrace your steps'
    'Reverse'
    'Short circuit (example; a man eating peas with the idea that they will improve  his virility shovels them straight into his lap)'
    'Simple subtraction'
    'Simply a matter of work'
    'Slow preparation, fast execution'
    'Spectrum analysis'
    'State the problem as clearly as possible'
    'Take a break'
    'Take away the elements in order of apparent non-importance'
    'Take away the important parts'
    'Tape your mouth (given by Ritva Saarikko)'
    'The inconsistency principle'
    'The most important thing is the thing most easily forgotten'
    'The tape is now the music'
    'Think\n--inside the work\n--outside the work'
    'Think of the radio'
    'Tidy up'
    'Towards the insignificant'
    'Trust in the you of now'
    'Try faking it (from Stewart Brand)'
    'Turn it upside down'
    'Twist the spine'
    "Use \'unqualified\' people"
    'Use an old idea'
    'Use an unacceptable color'
    'Use cliches'
    'Use fewer notes'
    'Use filters'
    'Use something nearby as a model'
    'Use your own ideas'
    'Voice your suspicions'
    'Water'
    'What are the sections sections of?    Imagine a caterpillar moving'
    'What are you really thinking about just now?'
    'What context would look right?'
    'What is the reality of the situation?'
    'What is the simplest solution?'
    'What mistakes did you make last time?'
    'What to increase? What to reduce? What to maintain?'
    'What would your closest friend do?'
    "What wouldn\'t you do?"
    'When is it for?'
    'Where is the edge?'
    'Which parts can be grouped?'
    'Work at a different speed'
    'Would anyone want it?'
    'You are an engineer'
    'You can only make one dot at a time'
    "You don\'t have to be ashamed of using your own ideas"
    '[blank white card]'
)

echo ${STRATEGIES[( $RANDOM % 168 )]}
