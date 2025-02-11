---

layout: post
title:  "DeepSeek Censorship"
author: amitshanbhag
categories: [ ai, ethics ]
image: assets/images/deepseekcensorship/light_politics.png
excerpt: "The risks of censorship, misinformation, and propaganda are high, and the company has been credibly accused of IP theft and research misconduct."
---

# Would you trust DeepSeek with your customer data?

Well, you really shouldn't.

**tl;dr**: *The risks of censorship, misinformation, and propaganda are high, and the company has been credibly accused
of IP theft and research misconduct.*

The company claims it spent just \$5.6 million developing the chatbot, compared to the more than \$100 million that
OpenAI spent developing ChatGPT-4, news that threw the markets into a frenzy, shedding a record $593 billion in Nvidia's
market cap in a single day [^1].

And before the dust could settle, it now seems that the costs were greatly
underreported, and that the true cost may have been closer to 500 Million dollars.
[^2],[^3]

But what's even more concerning is that they may have achieved this by stealing intellectual property from OpenAI .
OpenAI was reportedly notified by Microsoft which first uncovered the breach, and has now threatened DeepSeek with
"aggressive countermeasures" [^4],[^5],[^6]

# How Safe is DeepSeek?

The issues with censorship have been widely reported [^7],[^8],[^9], and it appears to have a penchant for
misinformation, propaganda, and violent content [^10],[^11].
But, the risks go far deeper. AI Systems get used for a variety of purposes including content moderation, comment
filtering, ad filtering, social media ranking, and more. Wide-scale application of a censoring AI system like DeepSeek could have
far-reaching consequences - shaping public opinion, political discourse, and (without wanting to sound excessively
alarmist) even the course of history.

# But how bad is it really?

I decided to test this out myself, and the results were much worse than I expected.
While I expected it to be biased and censor most anti-china political content, it also censored a lot of innocuous
content.

Of course, make any mention of the following, and DeepSeek will censor your content:

- Tiananmen Square
- Taiwan
- Tibet
- Falun Gong
- Uyghurs
- Hong Kong Pro Democracy Protests
- Xi Jinping
- Winnie the Pooh
  etc.

But how far would they go? I decided to test this out myself, and set up an agent to
filter out comments on a popular social media platform. The results were intesresting. It allowed a
lot of content that I expected it to censor, but also censored a lot of innocuous content.

I gave it some fairly straightforward instructions to allow all free speech, unless it was truly abusive.
At first, it did OK. It understood the instruction, gave itself a pep talk, and started filtering out comments.
![DeepSeek Content Moderation Agent](/assets/images/deepseekcensorship/agent_instructions.png)

It even allowed some criticism of Chinese products and trade practices.
![DeepSeek Content Moderation of Chinese Trade Practices](/assets/images/deepseekcensorship/chinese_trade.png)

But make any mention of Joshua Wong, or even Arunachal Pradesh, and it would block the comment. The comments mane no
mention of China, or the chinese government, and were not directly critical of China. But they were blocked anyway.
![DeepSeek Content Moderation of Arunachal Pradesh](/assets/images/deepseekcensorship/light_politics.png)

It even blocked oblique references to the Chinese government, like mentioning Epoch Times within the context of a
movie script, or mentioning the chinese government in the context of Tesla's lawsuit against a former employee.
![DeepSeek Content Moderation of Arunachal Pradesh](/assets/images/deepseekcensorship/ip_epoch.png)

If I was using a system that gave DeepSeek access to customer data, I'd be very worried! 

# References

[^1]: [DeepSeek sparks AI stock selloff; Nvidia posts record market-cap loss](https://www.reuters.com/technology/chinas-deepseek-sets-off-ai-market-rout-2025-01-27/)
[^2]: [DeepSeek Debates: Chinese Leadership On Cost, True Training Cost, Closed Model Margin Impacts ](https://semianalysis.com/2025/01/31/deepseek-debates/)
[^3]: [DeepSeek's hardware spend could be as high as \$500 Million](https://www.cnbc.com/2025/01/31/deepseeks-hardware-spend-could-be-as-high-as-500-million-report.html)
[^4]: [OpenAI Says DeepSeek May Have Improperly Harvested OpenAI Data](https://www.nytimes.com/2025/01/29/technology/openai-deepseek-data-harvest.html)
[^5]: [Microsoft Probing If DeepSeek-Linked Group Improperly Obtained OpenAI Data](https://www.bloomberg.com/news/articles/2025-01-29/microsoft-probing-if-deepseek-linked-group-improperly-obtained-openai-data)
[^6]: [DeepSeek threatened with 'aggressive countermeasures' ](https://www.yahoo.com/news/trump-ai-tsar-substantial-evidence-095334172.html)
[^7]: [How Does DeepSeek’s A.I. Chatbot Navigate China’s Censors? Awkwardly.](https://www.nytimes.com/2025/01/29/world/asia/deepseek-china-censorship.html)
[^8]: [DeepSeek’s A.I. Chatbot Can’t Talk About Tiananmen Square](https://www.bloomberg.com/news/articles/2025-01-30/deepseek-doesn-t-want-to-talk-about-tiananmen-square-here-s-what-to-know)
[^9]: [Does DeepSeek Censor Its Answers? We Asked 5 Questions On Sensitive China Topics.](https://www.forbes.com/sites/maryroeloffs/2025/01/27/does-deepseek-censor-its-answers-we-asked-5-questions-on-sensitive-china-topics/)
[^10]:[China’s DeepSeek AI is full of misinformation and can be tricked into generating bomb instructions, researchers warn](https://www.yahoo.com/news/china-deepseek-ai-full-misinformation-141717311.html)
[^11]:[DeepSeek’s Answers Include Chinese Propaganda, Researchers Say](https://www.nytimes.com/2025/01/31/technology/deepseek-chinese-propaganda.html)