<div class="description user_content enhanced"><h4><em><strong>The homework can be done in a group of 2 students.</strong></em></h4>
<p><em><strong>Submission on time, i.e., before the deadline,&nbsp; is awarded 3 exam bonus points if your homework is accepted, i.e., you have successfully presented and demonstrated your assignment to a course teaching assistant during a presentation session.&nbsp;</strong></em></p>
<h2>Task</h2>
<p>You are to implement the stages of finding textually similar documents based on Jaccard similarity using the&nbsp;<em>shingling</em>,&nbsp;<em>minhashing</em>, and&nbsp;<em>locality-sensitive hashing</em> (LSH) techniques and corresponding algorithms. The implementation can be done using any big data processing framework, such as Apache Spark, Apache Flink, or no framework, e.g., in Java, Python, etc. To test and evaluate your implementation, write a program that uses your implementation to find similar documents in a corpus of 5-10 or more documents, such as web pages or emails.</p>
<p>The stages should be implemented as a collection of classes, modules, functions, or procedures depending on the framework and the language of your choice. Below, we describe sample classes implementing different stages of finding textually similar documents. You do not have to develop the exact same classes and data types described below. Feel free to use data structures that suit you best.</p>
<ol>
<li>A class&nbsp;<em>Shingling</em>&nbsp;that constructs&nbsp;<em>k</em>–shingles of a given length&nbsp;<em>k</em> (e.g., 10) from a given document, computes a hash value for each unique shingle and represents the document in the form of an ordered set of its hashed&nbsp;<em>k</em>-shingles.</li>
<li>A class&nbsp;<em>CompareSets </em>computes the Jaccard similarity of two sets of integers – two sets of hashed shingles.</li>
<li>A class&nbsp;<em>MinHashing</em>&nbsp;that builds a minHash signature (in the form of a vector or a set) of a given length&nbsp;<em>n</em>&nbsp;from a given set of integers (a set of hashed shingles).</li>
<li>A class&nbsp;<em>CompareSignatures</em> estimates the similarity of two integer vectors – minhash signatures – as a fraction of components in which they agree.</li>
<li>(<strong><em>Optional task for extra 2 bonus points</em></strong>) A class&nbsp;<em>LSH</em>&nbsp;that implements the LSH technique: given a collection of minhash signatures (integer vectors) and a similarity threshold&nbsp;<strong><em>t</em></strong>, the&nbsp;<em>LSH</em> class (using banding and hashing) finds candidate pairs of signatures agreeing on at least a fraction <strong><em>t</em></strong>&nbsp;of their components.</li>
</ol>
<p>To test and evaluate your implementation's scalability (the execution time versus the size of the input dataset), write a program that uses your classes to find similar documents in a corpus of 5-10 documents. Choose a similarity threshold <strong><em>s</em></strong>&nbsp;(e.g., 0,8) that states that two documents&nbsp;are&nbsp;similar&nbsp;if the Jaccard&nbsp;similarity&nbsp;of their shingle sets is at least&nbsp;<strong><em>s</em></strong>.&nbsp;</p>
<h3>Datasets</h3>
<ul>
<li>For documents, see the datasets&nbsp;in <strong><a href="https://archive.ics.uci.edu/ml/index.php" class="external fOyUs_bGBk fbyHH_bGBk fbyHH_vIby" target="_blank" rel="noreferrer noopener"><span>the UC Irvine Machine Learning Repository</span><span><img style="margin-inline-start: 5px; width:16px; height:16px" src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTkyMCAxOTIwIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8cGF0aCBkPSJNMTIyNi42NjY2NywyNjcgQzEzMTQuODgsMjY3IDEzODYuNjY2NjcsMzM4Ljc4NjY2NyAxMzg2LjY2NjY3LDQyNyBMMTM4Ni42NjY2Nyw0MjcgTDEzODYuNjY2NjcsODUzLjY2NjY2NyBMMTI4MCw4NTMuNjY2NjY3IEwxMjgwLDY5My42NjY2NjcgTDEwNi42NjY2NjcsNjkzLjY2NjY2NyBMMTA2LjY2NjY2NywxNDkzLjY2NjY3IEMxMDYuNjY2NjY3LDE1MjMgMTMwLjU2LDE1NDcgMTYwLDE1NDcgTDE2MCwxNTQ3IEwxMjI2LjY2NjY3LDE1NDcgQzEyNTYuMTA2NjcsMTU0NyAxMjgwLDE1MjMgMTI4MCwxNDkzLjY2NjY3IEwxMjgwLDE0OTMuNjY2NjcgTDEyODAsMTI4MC4zMzMzMyBMMTM4Ni42NjY2NywxMjgwLjMzMzMzIEwxMzg2LjY2NjY3LDE0OTMuNjY2NjcgQzEzODYuNjY2NjcsMTU4MS44OCAxMzE0Ljg4LDE2NTMuNjY2NjcgMTIyNi42NjY2NywxNjUzLjY2NjY3IEwxMjI2LjY2NjY3LDE2NTMuNjY2NjcgTDE2MCwxNjUzLjY2NjY3IEM3MS43ODY2NjY3LDE2NTMuNjY2NjcgMCwxNTgxLjg4IDAsMTQ5My42NjY2NyBMMCwxNDkzLjY2NjY3IEwwLDQyNyBDMCwzMzguNzg2NjY3IDcxLjc4NjY2NjcsMjY3IDE2MCwyNjcgTDE2MCwyNjcgWiBNMTU4NC4zNzMzMyw3MDkuMjkzMzMzIEwxOTA0LjM3MzMzLDEwMjkuMjkzMzMgQzE5MjUuMTczMzMsMTA1MC4wOTMzMyAxOTI1LjE3MzMzLDEwODMuOTA2NjcgMTkwNC4zNzMzMywxMTA0LjcwNjY3IEwxOTA0LjM3MzMzLDExMDQuNzA2NjcgTDE1ODQuMzczMzMsMTQyNC43MDY2NyBMMTUwOC45NiwxMzQ5LjI5MzMzIEwxNzM3Ljg2NjY3LDExMjAuMzg2NjcgTDkwNi42MTMzMzMsMTEyMC4zODY2NyBMOTA2LjYxMzMzMywxMDEzLjcyIEwxNzM3Ljg2NjY3LDEwMTMuNzIgTDE1MDguOTYsNzg0LjcwNjY2NyBMMTU4NC4zNzMzMyw3MDkuMjkzMzMzIFogTTEyMjYuNjY2NjcsMzczLjY2NjY2NyBMMTYwLDM3My42NjY2NjcgQzEzMC41NiwzNzMuNjY2NjY3IDEwNi42NjY2NjcsMzk3LjY2NjY2NyAxMDYuNjY2NjY3LDQyNyBMMTA2LjY2NjY2Nyw0MjcgTDEwNi42NjY2NjcsNTg3IEwxMjgwLDU4NyBMMTI4MCw0MjcgQzEyODAsMzk3LjY2NjY2NyAxMjU2LjEwNjY3LDM3My42NjY2NjcgMTIyNi42NjY2NywzNzMuNjY2NjY3IEwxMjI2LjY2NjY3LDM3My42NjY2NjcgWiIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K" alt="" role="presentation"><span class="screenreader-only">Links to an external site.</span></span></a></strong>, or find other documents such as web pages or emails.</li>
<li>To find more datasets, follow <a href="https://github.com/caesar0301/awesome-public-datasets" class="external fOyUs_bGBk fbyHH_bGBk fbyHH_vIby" target="_blank" rel="noreferrer noopener"><span>this link</span><span><img style="margin-inline-start: 5px; width:16px; height:16px" src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTkyMCAxOTIwIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8cGF0aCBkPSJNMTIyNi42NjY2NywyNjcgQzEzMTQuODgsMjY3IDEzODYuNjY2NjcsMzM4Ljc4NjY2NyAxMzg2LjY2NjY3LDQyNyBMMTM4Ni42NjY2Nyw0MjcgTDEzODYuNjY2NjcsODUzLjY2NjY2NyBMMTI4MCw4NTMuNjY2NjY3IEwxMjgwLDY5My42NjY2NjcgTDEwNi42NjY2NjcsNjkzLjY2NjY2NyBMMTA2LjY2NjY2NywxNDkzLjY2NjY3IEMxMDYuNjY2NjY3LDE1MjMgMTMwLjU2LDE1NDcgMTYwLDE1NDcgTDE2MCwxNTQ3IEwxMjI2LjY2NjY3LDE1NDcgQzEyNTYuMTA2NjcsMTU0NyAxMjgwLDE1MjMgMTI4MCwxNDkzLjY2NjY3IEwxMjgwLDE0OTMuNjY2NjcgTDEyODAsMTI4MC4zMzMzMyBMMTM4Ni42NjY2NywxMjgwLjMzMzMzIEwxMzg2LjY2NjY3LDE0OTMuNjY2NjcgQzEzODYuNjY2NjcsMTU4MS44OCAxMzE0Ljg4LDE2NTMuNjY2NjcgMTIyNi42NjY2NywxNjUzLjY2NjY3IEwxMjI2LjY2NjY3LDE2NTMuNjY2NjcgTDE2MCwxNjUzLjY2NjY3IEM3MS43ODY2NjY3LDE2NTMuNjY2NjcgMCwxNTgxLjg4IDAsMTQ5My42NjY2NyBMMCwxNDkzLjY2NjY3IEwwLDQyNyBDMCwzMzguNzg2NjY3IDcxLjc4NjY2NjcsMjY3IDE2MCwyNjcgTDE2MCwyNjcgWiBNMTU4NC4zNzMzMyw3MDkuMjkzMzMzIEwxOTA0LjM3MzMzLDEwMjkuMjkzMzMgQzE5MjUuMTczMzMsMTA1MC4wOTMzMyAxOTI1LjE3MzMzLDEwODMuOTA2NjcgMTkwNC4zNzMzMywxMTA0LjcwNjY3IEwxOTA0LjM3MzMzLDExMDQuNzA2NjcgTDE1ODQuMzczMzMsMTQyNC43MDY2NyBMMTUwOC45NiwxMzQ5LjI5MzMzIEwxNzM3Ljg2NjY3LDExMjAuMzg2NjcgTDkwNi42MTMzMzMsMTEyMC4zODY2NyBMOTA2LjYxMzMzMywxMDEzLjcyIEwxNzM3Ljg2NjY3LDEwMTMuNzIgTDE1MDguOTYsNzg0LjcwNjY2NyBMMTU4NC4zNzMzMyw3MDkuMjkzMzMzIFogTTEyMjYuNjY2NjcsMzczLjY2NjY2NyBMMTYwLDM3My42NjY2NjcgQzEzMC41NiwzNzMuNjY2NjY3IDEwNi42NjY2NjcsMzk3LjY2NjY2NyAxMDYuNjY2NjY3LDQyNyBMMTA2LjY2NjY2Nyw0MjcgTDEwNi42NjY2NjcsNTg3IEwxMjgwLDU4NyBMMTI4MCw0MjcgQzEyODAsMzk3LjY2NjY2NyAxMjU2LjEwNjY3LDM3My42NjY2NjcgMTIyNi42NjY2NywzNzMuNjY2NjY3IEwxMjI2LjY2NjY3LDM3My42NjY2NjcgWiIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K" alt="" role="presentation"><span class="screenreader-only">Links to an external site.</span></span></a></li>
</ul>
<h3>Readings</h3>
<ul>
<li><span class="instructure_file_link_holder link_holder">Finding Similar Items.pptx&nbsp; <strong>∣</strong> &nbsp; Finding Similar Items.pdf</span></li>
<li><a class="inline_disabled external fOyUs_bGBk fbyHH_bGBk fbyHH_vIby" href="http://infolab.stanford.edu/~ullman/mmds/ch3n.pdf" target="_blank" rel="noreferrer noopener"><span>Chapter 3 </span><span><img style="margin-inline-start: 5px; width:16px; height:16px" src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTkyMCAxOTIwIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8cGF0aCBkPSJNMTIyNi42NjY2NywyNjcgQzEzMTQuODgsMjY3IDEzODYuNjY2NjcsMzM4Ljc4NjY2NyAxMzg2LjY2NjY3LDQyNyBMMTM4Ni42NjY2Nyw0MjcgTDEzODYuNjY2NjcsODUzLjY2NjY2NyBMMTI4MCw4NTMuNjY2NjY3IEwxMjgwLDY5My42NjY2NjcgTDEwNi42NjY2NjcsNjkzLjY2NjY2NyBMMTA2LjY2NjY2NywxNDkzLjY2NjY3IEMxMDYuNjY2NjY3LDE1MjMgMTMwLjU2LDE1NDcgMTYwLDE1NDcgTDE2MCwxNTQ3IEwxMjI2LjY2NjY3LDE1NDcgQzEyNTYuMTA2NjcsMTU0NyAxMjgwLDE1MjMgMTI4MCwxNDkzLjY2NjY3IEwxMjgwLDE0OTMuNjY2NjcgTDEyODAsMTI4MC4zMzMzMyBMMTM4Ni42NjY2NywxMjgwLjMzMzMzIEwxMzg2LjY2NjY3LDE0OTMuNjY2NjcgQzEzODYuNjY2NjcsMTU4MS44OCAxMzE0Ljg4LDE2NTMuNjY2NjcgMTIyNi42NjY2NywxNjUzLjY2NjY3IEwxMjI2LjY2NjY3LDE2NTMuNjY2NjcgTDE2MCwxNjUzLjY2NjY3IEM3MS43ODY2NjY3LDE2NTMuNjY2NjcgMCwxNTgxLjg4IDAsMTQ5My42NjY2NyBMMCwxNDkzLjY2NjY3IEwwLDQyNyBDMCwzMzguNzg2NjY3IDcxLjc4NjY2NjcsMjY3IDE2MCwyNjcgTDE2MCwyNjcgWiBNMTU4NC4zNzMzMyw3MDkuMjkzMzMzIEwxOTA0LjM3MzMzLDEwMjkuMjkzMzMgQzE5MjUuMTczMzMsMTA1MC4wOTMzMyAxOTI1LjE3MzMzLDEwODMuOTA2NjcgMTkwNC4zNzMzMywxMTA0LjcwNjY3IEwxOTA0LjM3MzMzLDExMDQuNzA2NjcgTDE1ODQuMzczMzMsMTQyNC43MDY2NyBMMTUwOC45NiwxMzQ5LjI5MzMzIEwxNzM3Ljg2NjY3LDExMjAuMzg2NjcgTDkwNi42MTMzMzMsMTEyMC4zODY2NyBMOTA2LjYxMzMzMywxMDEzLjcyIEwxNzM3Ljg2NjY3LDEwMTMuNzIgTDE1MDguOTYsNzg0LjcwNjY2NyBMMTU4NC4zNzMzMyw3MDkuMjkzMzMzIFogTTEyMjYuNjY2NjcsMzczLjY2NjY2NyBMMTYwLDM3My42NjY2NjcgQzEzMC41NiwzNzMuNjY2NjY3IDEwNi42NjY2NjcsMzk3LjY2NjY2NyAxMDYuNjY2NjY3LDQyNyBMMTA2LjY2NjY2Nyw0MjcgTDEwNi42NjY2NjcsNTg3IEwxMjgwLDU4NyBMMTI4MCw0MjcgQzEyODAsMzk3LjY2NjY2NyAxMjU2LjEwNjY3LDM3My42NjY2NjcgMTIyNi42NjY2NywzNzMuNjY2NjY3IEwxMjI2LjY2NjY3LDM3My42NjY2NjcgWiIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K" alt="" role="presentation"><span class="screenreader-only">Links to an external site.</span></span></a>in <em>Mining of Massive Datasets</em>, by Jure Leskovec, Anand Rajaraman, and Jeffrey D. Ullman, <strong>3rd edition</strong>, Cambridge University Press, 2020&nbsp; (<a href="http://www.mmds.org/" class="external fOyUs_bGBk fbyHH_bGBk fbyHH_vIby" target="_blank" rel="noreferrer noopener"><span>http://www.mmds.org/</span><span><img style="margin-inline-start: 5px; width:16px; height:16px" src="data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTkyMCAxOTIwIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8cGF0aCBkPSJNMTIyNi42NjY2NywyNjcgQzEzMTQuODgsMjY3IDEzODYuNjY2NjcsMzM4Ljc4NjY2NyAxMzg2LjY2NjY3LDQyNyBMMTM4Ni42NjY2Nyw0MjcgTDEzODYuNjY2NjcsODUzLjY2NjY2NyBMMTI4MCw4NTMuNjY2NjY3IEwxMjgwLDY5My42NjY2NjcgTDEwNi42NjY2NjcsNjkzLjY2NjY2NyBMMTA2LjY2NjY2NywxNDkzLjY2NjY3IEMxMDYuNjY2NjY3LDE1MjMgMTMwLjU2LDE1NDcgMTYwLDE1NDcgTDE2MCwxNTQ3IEwxMjI2LjY2NjY3LDE1NDcgQzEyNTYuMTA2NjcsMTU0NyAxMjgwLDE1MjMgMTI4MCwxNDkzLjY2NjY3IEwxMjgwLDE0OTMuNjY2NjcgTDEyODAsMTI4MC4zMzMzMyBMMTM4Ni42NjY2NywxMjgwLjMzMzMzIEwxMzg2LjY2NjY3LDE0OTMuNjY2NjcgQzEzODYuNjY2NjcsMTU4MS44OCAxMzE0Ljg4LDE2NTMuNjY2NjcgMTIyNi42NjY2NywxNjUzLjY2NjY3IEwxMjI2LjY2NjY3LDE2NTMuNjY2NjcgTDE2MCwxNjUzLjY2NjY3IEM3MS43ODY2NjY3LDE2NTMuNjY2NjcgMCwxNTgxLjg4IDAsMTQ5My42NjY2NyBMMCwxNDkzLjY2NjY3IEwwLDQyNyBDMCwzMzguNzg2NjY3IDcxLjc4NjY2NjcsMjY3IDE2MCwyNjcgTDE2MCwyNjcgWiBNMTU4NC4zNzMzMyw3MDkuMjkzMzMzIEwxOTA0LjM3MzMzLDEwMjkuMjkzMzMgQzE5MjUuMTczMzMsMTA1MC4wOTMzMyAxOTI1LjE3MzMzLDEwODMuOTA2NjcgMTkwNC4zNzMzMywxMTA0LjcwNjY3IEwxOTA0LjM3MzMzLDExMDQuNzA2NjcgTDE1ODQuMzczMzMsMTQyNC43MDY2NyBMMTUwOC45NiwxMzQ5LjI5MzMzIEwxNzM3Ljg2NjY3LDExMjAuMzg2NjcgTDkwNi42MTMzMzMsMTEyMC4zODY2NyBMOTA2LjYxMzMzMywxMDEzLjcyIEwxNzM3Ljg2NjY3LDEwMTMuNzIgTDE1MDguOTYsNzg0LjcwNjY2NyBMMTU4NC4zNzMzMyw3MDkuMjkzMzMzIFogTTEyMjYuNjY2NjcsMzczLjY2NjY2NyBMMTYwLDM3My42NjY2NjcgQzEzMC41NiwzNzMuNjY2NjY3IDEwNi42NjY2NjcsMzk3LjY2NjY2NyAxMDYuNjY2NjY3LDQyNyBMMTA2LjY2NjY2Nyw0MjcgTDEwNi42NjY2NjcsNTg3IEwxMjgwLDU4NyBMMTI4MCw0MjcgQzEyODAsMzk3LjY2NjY2NyAxMjU2LjEwNjY3LDM3My42NjY2NjcgMTIyNi42NjY2NywzNzMuNjY2NjY3IEwxMjI2LjY2NjY3LDM3My42NjY2NjcgWiIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K" alt="" role="presentation"><span class="screenreader-only">Links to an external site.</span></span></a>)</li>
</ul>
<h2>Submission, Presentation, and Demonstration</h2>
<p><strong>To submit your homework, you upload your solution in a zip file to Canvas</strong>. Canvas records the submission time.&nbsp; <strong>Submission on time, i.e., before the deadline,&nbsp; is awarded 3 exam bonus points if your homework is accepted.</strong> A bonus will not be given if you miss the deadline. <strong>Your homework solution must include</strong>&nbsp;</p>
<ol>
<li>Source code&nbsp;if required (with comments);&nbsp;</li>
<li>Makefile&nbsp;or scripts to build and run;&nbsp;</li>
<li>Report (in PDF) with a short description of your solution, instructions on how to build and run, command-line parameters, if any (including default values), and results, e.g., plots or screenshots.&nbsp;</li>
</ol>
<p>Within a week after the homework deadline,&nbsp;<strong>you present and&nbsp;demonstrate</strong> your homework on your laptop to a course instructor. A Doodle pool will be provided to <strong>book a time slot for the presentation</strong>.</p>
<h2>Grading and Bonus Policy</h2>
<p>The grade for homework is <strong>pass/fail</strong>. If you submit your assignment on time and your solution is accepted, you will get <strong>3 bonus points</strong> on the ID2222 exam. Some homework includes an <strong>optional task for an extra bonus</strong>.</p></div>