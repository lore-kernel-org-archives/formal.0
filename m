Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=65.99.196.166
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1795563102;
	b=Sj/K8JAdsf5NskrUXJoxutrNaOFxqAzlRMVo471/klpjquidpWaQ846DAYR0qwGn2Zs4
	 63Np58Rmhu1b1F0gVqzGMFGqqF9lw+ySYtCXpJiOamfjUOfAy1BX3JoMYmocRTwCrsgwk
	 +DOVN/BI+nzIj2ImAINKx9pzrtUUlkQdM5uolfqJIwYJgMPDCFKJN/zgOmO84FYvtPwGD
	 0/Fnp+NWhr4V9CUqYbXZ1wyFaXIntGg0lK2WdueXioVhdw5G048PrVW228UXp8Z/jDKtJ
	 so2NsTTy4V8R/001wNiQR5qQxNkk//kPnvZ2ENqKMeYSWyrWM0wxfSUrxHWDVMym6NQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1795563102;
	h=DMARC-Filter:Received:DKIM-Filter:DKIM-Signature:Date:From:To:
	 Subject:Message-ID:MIME-Version:Content-Type;
	bh=7vdfrqpf3ETj7iicLKklMq03KZni050nKfY8+LL/xYg=;
	b=I2rHbKdDosRdYqeuYz9OvqhZBUNToOB1x50LW8s7PZcDbF3mLt8r22rHlXrhpDk0CFOG
	 5StWJjQtvR7VFIZnaxOltPdXyuaR1SBRSJx3y1t3n6sVfSxVcUhxHlLjrGKVY6iTpAbFo
	 a0xovZQyPcqqk8eihaMxf+zPwEaQ4orMAQAt57FcsoN/kIS8VXZ5YVhWGeUP1oPGgcip8
	 gBMtL17aF2x86DXf1nwln9Izuu7nA65DDeBAYYEunf0iNw74sCGzyS8es9sapeHrBK3SJ
	 PHx11D5MauLRa86N5F6vRKVSVbkmKRfXdfiASJNcbf6UEmig+iCJDBGQReQrphlHpTA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=namei.org;
	spf=pass smtp.mailfrom=namei.org;
	dkim=pass header.d=namei.org header.i=@namei.org header.a=rsa-sha256 header.s=2 header.b=p+x9e3er;
	arc=none smtp.remote-ip=65.99.196.166
Received: from mail.namei.org (namei.org [65.99.196.166])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BCDC606A321
	for <formal@lists.linux.dev>; Tue, 24 Nov 2026 23:31:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 7BCDC606A321
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=namei.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=namei.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=namei.org header.i=@namei.org header.a=rsa-sha256 header.s=2 header.b=p+x9e3er
Received: from localhost (localhost [127.0.0.1])
	by mail.namei.org (Postfix) with ESMTPS id A736C2FA
	for <formal@lists.linux.dev>; Tue, 24 Nov 2026 23:31:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.namei.org A736C2FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=namei.org; s=2;
	t=1795563094; bh=7vdfrqpf3ETj7iicLKklMq03KZni050nKfY8+LL/xYg=;
	h=Date:From:To:Subject:From;
	b=p+x9e3erlWf8HwPJPMKKRDnCDKtZerz9riE+esj8UpzNktAcf0KNIrS7cy+PECb4x
	 NemhUNalruYyODth55x0ij9F6pUTZlhaesRlAqkeK3+PJTTA0uqXZkOOJHR5VlD7eF
	 NVjF8H9bRFrYbRnItIBz5iSYF/I8fHxcJL0y1l1E=
Date: Tue, 24 Nov 2026 15:31:34 -0800 (PST)
From: James Morris <jmorris@namei.org>
To: formal@lists.linux.dev
Subject: Blog post: "From formal verification to bug-finding in CHERIoT"
Message-ID: <15cfac6-956-392e-c578-c3b9201db7f4@namei.org>
X-Mailing-List: formal@lists.linux.dev
List-Id: <formal.lists.linux.dev>
List-Post: <mailto:formal@lists.linux.dev>
List-Help: <mailto:formal+help@lists.linux.dev>
List-Subscribe: <mailto:formal+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:formal+unsubscribe@lists.linux.dev>
List-Owner: <mailto:formal+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1665246916-547159977-1795563094=:2307707"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1665246916-547159977-1795563094=:2307707
Content-Type: text/plain; charset=ISO-8859-7
Content-Transfer-Encoding: 8BIT

Very interesting post from June Rousseau and team:

https://cheriot.org/verification/2026/11/24/griotte-verification-effort.html
  
  "As part of our verification effort in this Griotte project, we 
  uncovered two bugs in the CHERIoT switcher: (1) the ability for a 
  malicious (or buggy) scheduler to resuscitate an exited thread in a 
  deprecated state, thereby getting access to a capability that it should 
  not be able to have access to anymore, and (2) the ability for a 
  malicious caller to leverage the stack high watermark register to 
  trigger a fault in the switcher, thereby getting access to the callee¢s 
  stack frame and thus private data."


These do not seem like easy kinds of bugs to find.


-- 
James Morris
<jmorris@namei.org>

--1665246916-547159977-1795563094=:2307707--
