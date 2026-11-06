Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.160.51
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793943623;
	b=PPGFNmvTGYqtXYHUJpE5sxmD6Rj4gkcb3Q1tjlHyQy7Xd033NiJ1V5BKR46sGy3FR6Yb
	 caw5rYufb9Yli3X8RUc0uzUkr/a0RX+bI9F7oaEkgPy0NXALUBaJOI5gHSA+SxwfXaaKD
	 gny9OXrXAk97/Q4LzO4S/P1cT+M0aoJCXjC4Tuf3XhApENtsp7DoK+tSdsfiIOlH8btHr
	 JOEzfcrkI0YwpUU/3gIz1ab6njkoInXOqpFufwZgUgPI0NPR5GTD3QAojl5N7fytL+JuA
	 YpExNHdejTn7hb0zMvVIgJ1TwOVU+bnP3ZOAzpG+I3s+3bn1jWDUb+YIqTX66W4wsMA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793943623;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:From:Date:
	 X-Gm-Features:Message-ID:Subject:To:Content-Type;
	bh=+2W6VmPN/QnccxPFRFiEfkEAWx41L6TC5ExeHiztr1s=;
	b=pKipgWPODp3gs4ETbpFTAtEmfcNdThVL1BbNQZj8cg91vWyws1RwtTjhJ8ZatfQhfxEk
	 FNWx2+0Z3syvj5KNtCNZm7UHLCg/90E3GNC8c3zOT2s18V8+shpuiZXq2JfwFHB2K/ABH
	 IPknC2CVW5lenbgb4/5VcKJNjaPHCKPFHW0mwZj4XwZznGrM3IvecYK7d15Mr8qV5DeiM
	 s0Ar8nK7Adl05QGWq9MYYSsORw1zJxKjPEHOD5+DunAaAKtLgbfxih0DdZBXqvTy2bMZR
	 Uj3qqdzdtzD1Ng1Kx4/5CeXU6e5skX8onPaZr9QWHCTh8h/qHAyZy3oevLjhyJwLhJQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linuxfoundation.org;
	spf=pass smtp.mailfrom=linuxfoundation.org;
	dkim=pass header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=google header.b=YhjHMCLx;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.160.51
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E353606A326
	for <formal@lists.linux.dev>; Fri,  6 Nov 2026 05:40:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 4E353606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=google header.b=YhjHMCLx
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-48eee44b908so122470fac.1
        for <formal@lists.linux.dev>; Thu, 05 Nov 2026 21:40:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793943621; cv=none;
        d=google.com; s=arc-20260327;
        b=Ycq0CeMQrpMfBP8I0EQzETNuizwcUsM5jqyFu2xMDPSNJjHSsvVwiEV3kPu3mZkGhB
         Rz+mTAW6VhFS2/zet2kczewQdun1hzLd3bRNUn97+JbH8oST8s0NUdeVxfRQx3uznbFJ
         akbtJaC2f6zzVGnjcpxu59rRix7aOhye1vlM1UXn8I5ZF6BSNFuzSOVJs/mfQ0JJ/HFJ
         e+IaAgHhpuxh5MYyxRw1rJbrI9k52ayNk9R6X+VnggDFACC9lZxvW5W2OV3ZVOutV84E
         aQTF2gPbv4qmW7TeY+DPtJg6bVrkOBdKPAz0xr3l3snuBnWkAeOPDl+IcElAbVxJcAzf
         nQrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=+2W6VmPN/QnccxPFRFiEfkEAWx41L6TC5ExeHiztr1s=;
        fh=PKgDNBiNpfJYz+cAsy7xNRhBSD2C7rxvHaKQnbCBzj8=;
        b=gN6+oTf+Vns+dmMODNeLloXN+JmVUsNPVwra49mIC7FetvDaZpTeE8UnDknzP3dxLo
         b9+lo/0Qe7YnWglAb6e6CfhY6ZlQDP/5e3HsoL9EBmpXkv887OloiLTU8wrc1i44NdKK
         GEilzXtGxH5GInTz0c5NpYnX8tKd+BxjHyfwwTsMp7ukEWPeNTwzrcLeOmbAAg6r2//W
         XNg0TIUO+RdyeKwRUy2S4Or8Zl82LJeQ3ruO8AH4rsxOV/gY78cS6u8wT/xNcLlnlddK
         Ui0kXqA9C9euDGlYod2B15OR+OshfkFHOJDl4p7O2zl/6YVFQdOAxdo6ptILvkv8u+87
         ssIA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1793943621; x=1794548421; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=+2W6VmPN/QnccxPFRFiEfkEAWx41L6TC5ExeHiztr1s=;
        b=YhjHMCLxfThX5tNwbww5hFb8XxaACbzU9rFL7XIMI/zneIpC8mhKKcO0EZYi/H0iZr
         A+UQFUFz7oHCMzOPsGPx1JiOlf94y7U9NSVlZWHtioiI/rlnc5VA4F/DAbKvd+9yw4bd
         4SkIvd/fyBax7KpuKYpp780C1SS6QVEUMLT+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793943621; x=1794548421;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+2W6VmPN/QnccxPFRFiEfkEAWx41L6TC5ExeHiztr1s=;
        b=II1uG7kBXvHA7WPx2OwZlLsSvQwOCjPc+a+5OZDmvKgNt9oNnKiqhyCic1twzNoTjp
         S39x/ERsXluaqA7PIiADCdX1h5LwU7gOSiSV3YVbE0bsnAm22JE8Wq2lB18L4cuWrh65
         OMbVIHcbi0KWwu2a1qEPw21ihsS6UqdhFYDPp1B4ImXMhQHGgwbzQ1CR+/6evWmtrh3W
         HoDc9KdCCASYzMXMPRMrkCeqX1yGr1uCGwP4qu7EwnomC+nFhSRJoxSD+hQ9DP/LqXLv
         8dQeSVg7DULGbeDsdLhyfydjGNX8rn1lrKWxnjLv/egRLKVly91Nw3soLqHqoRjv+qRd
         ltpQ==
X-Gm-Message-State: APuU4Z8QsCXsLOXTlN6TQXHEeklPsYX1VA7gNWIIOlQSCj2NpRkVg48i
	03nJCtxBPd9V8KBb9KmlQgf/uTyYnUzukA+nLwlCqwilNWjqajj2EK6VYIRDpduuyjkRtny3t9Z
	ogQ1coFhDq3EEdvGHjaxEVqaFPhEYPNSrZ7kzQ/3ABItRDDghgNLWOSM=
X-Gm-Gg: AYBFou0ygQUIubg5/Fx5MiOrWVjo5OcgcpvO47xkoIhLkuzSCLNDlSnOaypmHkrU+Sl
	E/dapCaNvO19XGHEtxihlzd/zuL7An2TOZ8TPahrpV5ELX0WvX/dHgt+GTOB7aT9aqKAhed1A7c
	plOrFA2+7iGXd43j1cMuuNJulv5qgU+bJNtPDciaZj3BqW7XAP5oUr581FXzxD/5pbkm8RYACoN
	0mqqak9b/ogaXFvyeWRQizgbUiBTslq3d30+pP/+hYuaqklMzqDATwpoyP4seT158KV1oUH7iRI
	Y8xqqiejpxSh8B+KauSrg8dmFk6MPA9YgnA25itTOcvn32tYtRJuRSfct4ZwIuAF94NiV/w35KY
	5kFdT681rfFVl2Ed/W61ow12G4EOkJQC6crB9ZMqp7M0hhaN4aehBzn3XGNW1Zsxt/yg=
X-Received: by 2002:a05:6808:4fe6:b0:4d6:90f4:48b4 with SMTP id
 5614622812f47-567e16bb2b4mr1297486b6e.54.1793943620918; Thu, 05 Nov 2026
 21:40:20 -0800 (PST)
X-Mailing-List: formal@lists.linux.dev
List-Id: <formal.lists.linux.dev>
List-Post: <mailto:formal@lists.linux.dev>
List-Help: <mailto:formal+help@lists.linux.dev>
List-Subscribe: <mailto:formal+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:formal+unsubscribe@lists.linux.dev>
List-Owner: <mailto:formal+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
From: Chris Hoy Poy <choypoy@linuxfoundation.org>
Date: Fri, 6 Nov 2026 13:40:10 +0800
X-Gm-Features: AclHuK_3Sop8v5X-ojl7bnW_AzZVtDYwUVvUEWtUgPnRlUMbsPeuql0z2VwnwSg
Message-ID: <CAKkv+gycZ_ZeX2FyfzzYkbGOjBPEjU14noRK=kwS3qvfyvTaQQ@mail.gmail.com>
Subject: please ignore test delivery to formal.lists.linux.dev
To: formal@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Please ignore, test post to initialise the list
Chris Hoy Poy
Senior Systems Engineer
Core Projects
The Linux Foundation
Perth, Western Australia (GMT:+8)
