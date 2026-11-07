Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=65.99.196.166
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794089495;
	b=Tr0mACWVe9a8ljMnv+BDIAoJz3PO0u1uJuv6/YNGECtMv21TWwaqwIBW4Q8AbYOkTdiX
	 /X0Db1sk7SeTtBl0qNwyGxRlOfboKg5xSzLwAGNhXoT8vUf9ZFucsh3Uv1GFJtHVr6MIa
	 R9Pv6dRd7uekROfaWrQFjg5cRuYxDPZZjt4nzWNXdlv81GwwgvVx6ATIk3pP2H4sbLicV
	 BZercEd+4TJRR/59q8ElGHGql7L29ZEi2cfZ5hntwxAuE5PB+z0XemcUQB6WPlLlBYssn
	 wAkSdda/n8CEYvP6Q0SbUeCMlLH/faEQ2Qr+2zFPHQUyMikyQLQMKUIE0uTcDAlRM5Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794089495;
	h=DMARC-Filter:Received:DKIM-Filter:DKIM-Signature:Date:From:To:
	 Subject:Message-ID:MIME-Version:Content-Type;
	bh=SflwXY48L6FvRauAQ/s9x/l7qn/fHgojXRbJ1F6MoLs=;
	b=WvETKWcswitr+A8vLZ3cBcpduCGs1U0xQwXrGhzwUK+W+lpj1hi0bkD6z2luxhwzVdJX
	 J7hkgHb85G+Cs+rnguzn7edQQuk7hV2PhRkNlr/0dY/1SNV1JkOPlk4XEZbNUFq/pupbg
	 A5785PaYSOdqvRT7FU35+HYhwwyeMjXyP8SrPlj5seABIQHdaWGZ4nw8WZskvDuLLfTA2
	 dl5ZFpCzUyFVGuqh4SF3nh7nnfO5P8Vpx2fTAkKKCE9BmBogwy7QAAwLxK/mpVAn1Y07U
	 Kq2O8e8myviNkaOw2pfvyNFLzar5phf7uV7qpuNzodfAuTVYfKj6sfByWVdNWQ5mYJQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=namei.org;
	spf=pass smtp.mailfrom=namei.org;
	dkim=pass header.d=namei.org header.i=@namei.org header.a=rsa-sha256 header.s=2 header.b=01o1Kg8Z;
	arc=none smtp.remote-ip=65.99.196.166
Received: from mail.namei.org (namei.org [65.99.196.166])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770D0606A326
	for <formal@lists.linux.dev>; Sat,  7 Nov 2026 22:11:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 770D0606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=namei.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=namei.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=namei.org header.i=@namei.org header.a=rsa-sha256 header.s=2 header.b=01o1Kg8Z
Received: from localhost (localhost [127.0.0.1])
	by mail.namei.org (Postfix) with ESMTPS id 64C914E0
	for <formal@lists.linux.dev>; Sat,  7 Nov 2026 22:11:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.namei.org 64C914E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=namei.org; s=2;
	t=1794089493; bh=SflwXY48L6FvRauAQ/s9x/l7qn/fHgojXRbJ1F6MoLs=;
	h=Date:From:To:Subject:From;
	b=01o1Kg8ZOT4P6cEqzPD68VY+HhuLeUaaaKi+Mg893gnRo9TZQ3bItUQLPAGlx+vi6
	 iACIqUp5+9uvPWvTl1yg2ENIIaAibua7OrTF7BzNlLL0DMFikzdMis07s1ev/v2nPB
	 88gGvOjQ96S7ltY9rbYYnfoiKGcZAMpceUi4bHmk=
Date: Sat, 7 Nov 2026 14:11:33 -0800 (PST)
From: James Morris <jmorris@namei.org>
To: formal@lists.linux.dev
Subject: =?UTF-8?Q?=E2=8A=A2_hello=2C_world?=
Message-ID: <828dd0cd-1cac-eb1f-60b2-508c2440b3c8@namei.org>
X-Mailing-List: formal@lists.linux.dev
List-Id: <formal.lists.linux.dev>
List-Post: <mailto:formal@lists.linux.dev>
List-Help: <mailto:formal+help@lists.linux.dev>
List-Subscribe: <mailto:formal+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:formal+unsubscribe@lists.linux.dev>
List-Owner: <mailto:formal+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Welcome to the list, all!

For reference, this list is for discussion of formal methods in Linux 
development, per the lkml thread here:

https://lore.kernel.org/lkml/ed89f1ce-cdca-d6f6-3e1-f0fa34eac4d@namei.org/

Like several other kernel & systems developers, I'm new to formal methods, 
and I've recently started experimenting via LLM tools. Others have been 
working in this area since the before-times, either primarily as Linux 
developers or as formal methods experts. All are welcome. Please feel free 
to share any learnings, advice, and interesting research or news.

I don't think we have a consensus on topic area scope as yet, but I 
suspect many folk will be initially interested in the Linux kernel and 
adjacent Open Source platform / OS components. This discussion is is not 
intended to be LLM-specific.

Here's a list of Linux-specific FM resources that I'm aware of, please 
reply with anything I've (certainly) missed:


- "Towards Program Verification of the Linux Kernel Library XArray", 
  Corinn Tiffany & Julia Lawall:  
  https://lpc.events/event/20/contributions/2540/

- "Formal models of Linux kernel code", Christian Brauner: 
  https://github.com/brauner/linux-formal

- Natalia Klaus et al:  
  https://lore.kernel.org/lkml/9YSGLlcFbkzUCvt-LBQkhT8BI5Y4v8yNQC4bkTK2zxwm5W-gnkX4rL0SRvQrb1bvGNY-dACfKyk3_vwJE_arlXZaXDK1cYdF95SFQNGJASw=@runtimeverification.com/ 
  https://arxiv.org/abs/2605.30106

- "Proof-Carrying Verification for eBPF ", Martin Fink, 
  https://lpc.events/event/20/contributions/2440/

- Linux Kernel Memory Consistency Model list: 
  https://lore.kernel.org/lkmm/ (like this but focused on LKMM)

- LPC Safe Systems with Linux MC (various years) 
  https://lpc.events/event/19/sessions/221/#20251212

- ELISA Safety Architecture WG 
  https://lists.elisa.tech/g/safety-architecture

- "Applying Program Verification to Linux Kernel Code: Challenges, 
  Practices, and Automation", Keisuke Nishimura, 
  https://lpc.events/event/19/contributions/2133/

- "Formal Verification of the eBPF Verifier", Santosh Nagarakatte et al, 
  https://bpfconf.ebpf.io/bpfconf2025/bpfconf2025_material/Santosh%20Nagarakatte-LSFMMBPF-2025.pdf 
  https://people.cs.rutgers.edu/~sn349/rapl/

- "Proof-Carrying-BPF Programs for the eBPF Verifier", Yalu Cai & Santosh 
  Nagarakatte, https://dl.acm.org/doi/10.1145/3837779.3838158

- "Pluggable Runtime Verification (RV) monitors with BPF", Gabriele 
  Monaco, https://lpc.events/event/20/contributions/2446/


-- 
James Morris
<jmorris@namei.org>

