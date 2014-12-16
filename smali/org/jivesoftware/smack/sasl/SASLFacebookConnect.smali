.class public Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "SASLFacebookConnect.java"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private sessionKey:Ljava/lang/String;

.field private sessionSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "X-FACEBOOK-PLATFORM"

    .line 33
    const-class v1, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;

    .line 32
    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    const-string/jumbo v0, "X-FACEBOOK-PLATFORM"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->supportSASLMechanism(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/SASLAuthentication;)V
    .locals 1
    .parameter "saslAuthentication"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>(Lorg/jivesoftware/smack/SASLAuthentication;)V

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionSecret:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private convertToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p1

    if-lt v2, v5, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 179
    :cond_0
    aget-byte v5, p1, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 180
    .local v1, halfbyte:I
    const/4 v3, 0x0

    .local v3, two_halfs:I
    move v4, v3

    .line 182
    .end local v3           #two_halfs:I
    .local v4, two_halfs:I
    :goto_1
    if-ltz v1, :cond_1

    const/16 v5, 0x9

    if-gt v1, v5, :cond_1

    .line 183
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    :goto_2
    aget-byte v5, p1, v2

    and-int/lit8 v1, v5, 0xf

    .line 187
    add-int/lit8 v3, v4, 0x1

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    const/4 v5, 0x1

    .line 181
    if-lt v4, v5, :cond_2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    :cond_1
    add-int/lit8 v5, v1, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    :cond_2
    move v4, v3

    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    goto :goto_1
.end method

.method private getQueryMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 166
    const-string/jumbo v5, "&"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, params:[Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, v3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 173
    return-object v0

    .line 168
    :cond_0
    aget-object v2, v3, v5

    .line 169
    .local v2, param:Ljava/lang/String;
    const-string/jumbo v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v1, v8, v6

    .line 170
    .local v1, name:Ljava/lang/String;
    const-string/jumbo v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v4, v8, v9

    .line 171
    .local v4, value:Ljava/lang/String;
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 194
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 195
    .local v0, md:Ljava/security/MessageDigest;
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 196
    .local v1, md5hash:[B
    const-string/jumbo v2, "iso-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 197
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 198
    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected authenticate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, stanza:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<auth mechanism=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v1, "\" xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v1, "</auth>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v1

    new-instance v2, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$1;

    invoke-direct {v2, p0, v0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$1;-><init>(Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 65
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "apiKeyAndSessionKey"
    .parameter "host"
    .parameter "sessionSecret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 70
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Invalid parameters!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    const-string/jumbo v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, keyArray:[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v1, v6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 76
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Api key or session key is not present!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_3
    aget-object v1, v6, v3

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    .line 79
    aget-object v1, v6, v5

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionSecret:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->authenticationId:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->password:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->hostname:Ljava/lang/String;

    .line 86
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "DIGEST-MD5"

    aput-object v1, v0, v3

    .line 87
    .local v0, mechanisms:[Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v4, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string/jumbo v2, "xmpp"

    move-object v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lde/measite/smack/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    .line 89
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->authenticate()V

    .line 90
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 6
    .parameter "username"
    .parameter "host"
    .parameter "cbh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DIGEST-MD5"

    aput-object v2, v0, v1

    .line 95
    .local v0, mechanisms:[Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v4, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string/jumbo v2, "xmpp"

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lde/measite/smack/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    .line 97
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->authenticate()V

    .line 98
    return-void
.end method

.method public challengeReceived(Ljava/lang/String;)V
    .locals 17
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v11, stanza:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 109
    .local v9, response:[B
    if-eqz p1, :cond_0

    .line 110
    new-instance v4, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/String;-><init>([B)V

    .line 111
    .local v4, decodedResponse:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getQueryMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 113
    .local v8, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v12, "1.0"

    .line 114
    .local v12, version:Ljava/lang/String;
    const-string/jumbo v13, "nonce"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 115
    .local v7, nonce:Ljava/lang/String;
    const-string/jumbo v13, "method"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 117
    .local v6, method:Ljava/lang/String;
    new-instance v13, Ljava/util/GregorianCalendar;

    invoke-direct {v13}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v13}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 119
    .local v2, callId:Ljava/lang/Long;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "api_key="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 120
    const-string/jumbo v14, "call_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 121
    const-string/jumbo v14, "method="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 122
    const-string/jumbo v14, "nonce="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 123
    const-string/jumbo v14, "session_key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 124
    const-string/jumbo v14, "v="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionSecret:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 119
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, sig:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->MD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 133
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "api_key="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->apiKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 134
    const-string/jumbo v14, "call_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 135
    const-string/jumbo v14, "method="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 136
    const-string/jumbo v14, "nonce="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 137
    const-string/jumbo v14, "session_key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->sessionKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 138
    const-string/jumbo v14, "v="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 139
    const-string/jumbo v14, "sig="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 133
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, composedResponse:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 144
    .end local v2           #callId:Ljava/lang/Long;
    .end local v3           #composedResponse:Ljava/lang/String;
    .end local v4           #decodedResponse:Ljava/lang/String;
    .end local v6           #method:Ljava/lang/String;
    .end local v7           #nonce:Ljava/lang/String;
    .end local v8           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #sig:Ljava/lang/String;
    .end local v12           #version:Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    .line 146
    .local v1, authenticationText:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 147
    const/16 v13, 0x8

    invoke-static {v9, v13}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object v1

    .line 150
    :cond_1
    const-string/jumbo v13, "<response xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v13, "</response>"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v13

    new-instance v14, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lorg/jivesoftware/smack/sasl/SASLFacebookConnect$2;-><init>(Lorg/jivesoftware/smack/sasl/SASLFacebookConnect;Ljava/lang/StringBuilder;)V

    invoke-virtual {v13, v14}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 163
    return-void

    .line 129
    .end local v1           #authenticationText:Ljava/lang/String;
    .restart local v2       #callId:Ljava/lang/Long;
    .restart local v4       #decodedResponse:Ljava/lang/String;
    .restart local v6       #method:Ljava/lang/String;
    .restart local v7       #nonce:Ljava/lang/String;
    .restart local v8       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #sig:Ljava/lang/String;
    .restart local v12       #version:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 130
    .local v5, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v13, Ljava/lang/IllegalStateException;

    invoke-direct {v13, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v13
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "X-FACEBOOK-PLATFORM"

    return-object v0
.end method
