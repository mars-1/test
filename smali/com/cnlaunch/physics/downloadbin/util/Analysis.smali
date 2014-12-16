.class public Lcom/cnlaunch/physics/downloadbin/util/Analysis;
.super Ljava/lang/Object;
.source "Analysis.java"


# static fields
.field static errCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    sput v0, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->errCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analysis([B[B)Lcom/cnlaunch/physics/entity/AnalysisData;
    .locals 1
    .parameter "sendCommand"
    .parameter "receive"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v0

    return-object v0
.end method

.method public static analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;
    .locals 21
    .parameter "sendCommand"
    .parameter "receive"
    .parameter "mOnDownloadBinListener"

    .prologue
    .line 23
    new-instance v7, Lcom/cnlaunch/physics/entity/AnalysisData;

    invoke-direct {v7}, Lcom/cnlaunch/physics/entity/AnalysisData;-><init>()V

    .line 25
    .local v7, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    const/4 v1, 0x2

    new-array v0, v1, [B

    move-object/from16 v17, v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    aput-byte v2, v17, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    aget-byte v2, p0, v2

    aput-byte v2, v17, v1

    .line 27
    .local v17, requestWord:[B
    invoke-static/range {v17 .. v17}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    .line 30
    .local v18, requestWordStr:Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u53d1\u9001\u7684\u547d\u4ee4\u5b57\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u53d1\u9001\u7684\u547d\u4ee4\u5b57\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x6

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToInt(B)I

    move-result v16

    .line 33
    .local v16, requestCounter:I
    const/4 v9, 0x0

    .line 34
    .local v9, feedbackBagLength:I
    const/4 v15, 0x0

    .line 36
    .local v15, pSendBuffer:[B
    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 37
    const/4 v1, 0x2

    new-array v0, v1, [B

    move-object/from16 v20, v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    aput-byte v2, v20, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    aput-byte v2, v20, v1

    .line 38
    .local v20, sendbagLengthByte:[B
    invoke-static/range {v20 .. v20}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength([B)I

    move-result v19

    .line 39
    .local v19, sendBagLength:I
    if-lez v19, :cond_0

    move-object/from16 v0, p0

    array-length v1, v0

    add-int/lit8 v2, v19, 0x7

    if-lt v1, v2, :cond_0

    .line 40
    add-int/lit8 v1, v19, -0x3

    new-array v15, v1, [B

    .line 41
    const/4 v12, 0x0

    .line 42
    .local v12, flag:I
    const/16 v13, 0x9

    .local v13, i:I
    :goto_0
    add-int/lit8 v1, v19, 0x9

    add-int/lit8 v1, v1, -0x3

    if-lt v13, v1, :cond_2

    .line 49
    .end local v12           #flag:I
    .end local v13           #i:I
    .end local v19           #sendBagLength:I
    .end local v20           #sendbagLengthByte:[B
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u53d1\u9001\u6307\u4ee4\u8ba1\u6570\u5668\u503c = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u5f00\u59cb\u6821\u9a8c\u76f8\u5e94\u5b57\u8282\u6570\u7ec4..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v1, "\u5f00\u59cb\u6821\u9a8c\u76f8\u5e94\u5b57\u8282\u6570\u7ec4..."

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    .line 52
    if-eqz p1, :cond_a

    move-object/from16 v0, p1

    array-length v1, v0

    if-lez v1, :cond_a

    .line 53
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    .line 54
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string/jumbo v2, "55"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 56
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u9996\u5b57\u8282 0x55 OK!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "\u9996\u5b57\u8282\u6821\u9a8c\u901a\u8fc7..."

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    .line 58
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_8

    .line 59
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string/jumbo v2, "aa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 61
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u5305\u5934\u6821\u9a8c OK!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "\u5305\u5934\u6821\u9a8c\u6821\u9a8c\u901a\u8fc7..."

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    .line 63
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x6

    if-le v1, v2, :cond_7

    .line 64
    const/4 v1, 0x2

    new-array v8, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    aput-byte v2, v8, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    aput-byte v2, v8, v1

    .line 66
    .local v8, bagLengthByte:[B
    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength([B)I

    move-result v9

    .line 67
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5305\u957f\u5ea6\u4e3a\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    if-lez v9, :cond_6

    .line 69
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v2, v9, 0x7

    if-lt v1, v2, :cond_6

    .line 70
    const/4 v1, 0x6

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToInt(B)I

    move-result v1

    move/from16 v0, v16

    if-ne v1, v0, :cond_5

    .line 71
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u8ba1\u6570\u5668\u6821\u9a8c OK!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "\u8ba1\u6570\u5668\u6821\u9a8c\u901a\u8fc7..."

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x2

    new-array v10, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    aput-byte v2, v10, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    aget-byte v2, p1, v2

    aput-byte v2, v10, v1

    .line 77
    .local v10, feedbackWord:[B
    invoke-static {v10}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 79
    .local v11, feedbackWordStr:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string/jumbo v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u547d\u4ee4\u5b57\u6821\u9a8c OK!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v1, "\u547d\u4ee4\u5b57\u6821\u9a8c\u901a\u8fc7..."

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    .line 87
    add-int/lit8 v1, v9, -0x3

    new-array v14, v1, [B

    .line 88
    .local v14, pReceiveBuffer:[B
    const/4 v12, 0x0

    .line 89
    .restart local v12       #flag:I
    const/16 v13, 0x9

    .restart local v13       #i:I
    :goto_1
    add-int/lit8 v1, v9, 0x9

    add-int/lit8 v1, v1, -0x3

    if-lt v13, v1, :cond_3

    .line 93
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u6536\u5230\u547d\u4ee4\u6570\u636e\u6210\u529f!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "\u6536\u5230\u547d\u4ee4\u6570\u636e\u6210\u529f!"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 97
    invoke-virtual {v7, v14}, Lcom/cnlaunch/physics/entity/AnalysisData;->setpReceiveBuffer([B)V

    .line 98
    invoke-virtual {v7, v15}, Lcom/cnlaunch/physics/entity/AnalysisData;->setpRequestBuffer([B)V

    .line 100
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/cnlaunch/physics/entity/AnalysisData;->setRequestWordStr(Ljava/lang/String;)V

    .line 143
    .end local v8           #bagLengthByte:[B
    .end local v10           #feedbackWord:[B
    .end local v11           #feedbackWordStr:Ljava/lang/String;
    .end local v12           #flag:I
    .end local v13           #i:I
    .end local v14           #pReceiveBuffer:[B
    :cond_1
    :goto_2
    return-object v7

    .line 43
    .restart local v12       #flag:I
    .restart local v13       #i:I
    .restart local v19       #sendBagLength:I
    .restart local v20       #sendbagLengthByte:[B
    :cond_2
    aget-byte v1, p0, v13

    aput-byte v1, v15, v12

    .line 44
    add-int/lit8 v12, v12, 0x1

    .line 42
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 90
    .end local v19           #sendBagLength:I
    .end local v20           #sendbagLengthByte:[B
    .restart local v8       #bagLengthByte:[B
    .restart local v10       #feedbackWord:[B
    .restart local v11       #feedbackWordStr:Ljava/lang/String;
    .restart local v14       #pReceiveBuffer:[B
    :cond_3
    aget-byte v1, p1, v13

    aput-byte v1, v14, v12

    .line 91
    add-int/lit8 v12, v12, 0x1

    .line 89
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 103
    .end local v12           #flag:I
    .end local v13           #i:I
    .end local v14           #pReceiveBuffer:[B
    :cond_4
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 104
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u547d\u4ee4\u5b57\u6821\u9a8c fail!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "\u547d\u4ee4\u5b57\u6821\u9a8c\u5931\u8d25,\u6b63\u5728\u91cd\u8bd5!"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    goto :goto_2

    .line 108
    .end local v10           #feedbackWord:[B
    .end local v11           #feedbackWordStr:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 109
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u8ba1\u6570\u5668\u6821\u9a8c fail!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "\u8ba1\u6570\u5668\u6821\u9a8c\u5931\u8d25,\u6b63\u5728\u91cd\u8bd5!"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    goto :goto_2

    .line 113
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 114
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u547d\u4ee4\u83b7\u53d6\u4e0d\u5b8c\u6574"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v1, "\u547d\u4ee4\u83b7\u53d6\u4e0d\u5b8c\u6574!"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    goto :goto_2

    .line 118
    .end local v8           #bagLengthByte:[B
    :cond_7
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 119
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u547d\u4ee4\u83b7\u53d6\u4e0d\u5b8c\u6574\uff0c\u6ca1\u6709\u83b7\u53d6\u5230\u5305\u957f\u5ea6\uff01"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v1, "\u547d\u4ee4\u83b7\u53d6\u4e0d\u5b8c\u6574!"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_8
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 124
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u5305\u5934\u6821\u9a8cfail!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "\u5305\u5934\u6821\u9a8c\u5931\u8d25!"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 128
    :cond_9
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 129
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u9996\u5b57\u8282 0x55 fail!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v1, "\u9996\u5b57\u8282\u6821\u9a8c\u5931\u8d25!"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 133
    :cond_a
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 134
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "\u63a5\u6536\u6307\u4ee4\u4e3a\u7a7a\uff01"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    sget v1, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->errCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->errCount:I

    .line 136
    sget v1, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->errCount:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 137
    if-eqz p2, :cond_b

    .line 138
    const/16 v2, -0x63

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v1, p2

    invoke-interface/range {v1 .. v6}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V

    goto/16 :goto_2

    .line 141
    :cond_b
    const-string/jumbo v1, "\u63a5\u6536\u6307\u4ee4\u4e3a\u7a7a!"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static analysis2103(Lcom/cnlaunch/physics/entity/AnalysisData;)[Ljava/lang/String;
    .locals 36
    .parameter "analysisData"

    .prologue
    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    .line 594
    .local v28, state:Z
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 595
    .local v3, buffer:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 596
    .local v8, content:[Ljava/lang/String;
    if-eqz v28, :cond_9

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v26

    .line 599
    .local v26, receiverBuffer:[B
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    .line 600
    .local v27, receiverLength:I
    if-lez v27, :cond_8

    .line 601
    const/16 v31, 0x2

    move/from16 v0, v27

    move/from16 v1, v31

    if-le v0, v1, :cond_7

    .line 602
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    aget-byte v32, v26, v32

    aput-byte v32, v19, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    aget-byte v32, v26, v32

    aput-byte v32, v19, v31

    .line 603
    .local v19, oneLength:[B
    invoke-static/range {v19 .. v19}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength([B)I

    move-result v5

    .line 604
    .local v5, chipFlagLength:I
    const/16 v18, 0x2

    .line 606
    .local v18, len:I
    add-int v31, v5, v18

    move/from16 v0, v27

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 607
    add-int/lit8 v31, v5, -0x1

    move/from16 v0, v31

    new-array v4, v0, [B

    .line 608
    .local v4, chipFlag:[B
    const/4 v15, 0x0

    .line 609
    .local v15, flag:I
    const/16 v17, 0x2

    .local v17, i:I
    :goto_0
    add-int v31, v18, v5

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    .line 613
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    .line 614
    .local v6, chipSeriNum:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    sget-object v31, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "===="

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 617
    add-int v18, v18, v5

    .line 619
    add-int/lit8 v31, v18, 0x2

    move/from16 v0, v27

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 620
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-byte v32, v26, v18

    aput-byte v32, v30, v31

    const/16 v31, 0x1

    .line 621
    add-int/lit8 v32, v18, 0x1

    aget-byte v32, v26, v32

    aput-byte v32, v30, v31

    .line 623
    .local v30, twoLength:[B
    invoke-static/range {v30 .. v30}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength([B)I

    move-result v24

    .line 624
    .local v24, proSeriNumLength:I
    add-int/lit8 v18, v18, 0x2

    .line 625
    add-int/lit8 v31, v24, -0x1

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 626
    .local v25, psm:[B
    const/4 v15, 0x0

    .line 627
    move/from16 v17, v18

    :goto_1
    add-int v31, v18, v24

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    .line 631
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 632
    .local v23, proSeriNum:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    add-int v18, v18, v24

    .line 635
    add-int/lit8 v31, v18, 0x2

    move/from16 v0, v27

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 636
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget-byte v32, v26, v18

    aput-byte v32, v29, v31

    const/16 v31, 0x1

    .line 637
    add-int/lit8 v32, v18, 0x1

    aget-byte v32, v26, v32

    aput-byte v32, v29, v31

    .line 639
    .local v29, threeLength:[B
    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength([B)I

    move-result v21

    .line 640
    .local v21, pcbVerLength:I
    add-int/lit8 v18, v18, 0x2

    .line 641
    add-int/lit8 v31, v21, -0x1

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 642
    .local v20, pcb:[B
    const/4 v15, 0x0

    .line 643
    move/from16 v17, v18

    :goto_2
    add-int v31, v18, v21

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    .line 647
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 648
    .local v22, pcbVerNum:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    add-int v18, v18, v21

    .line 651
    add-int/lit8 v31, v18, 0x2

    move/from16 v0, v27

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 652
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v16, v0

    const/16 v31, 0x0

    aget-byte v32, v26, v18

    aput-byte v32, v16, v31

    const/16 v31, 0x1

    .line 653
    add-int/lit8 v32, v18, 0x1

    aget-byte v32, v26, v32

    aput-byte v32, v16, v31

    .line 655
    .local v16, fourLength:[B
    invoke-static/range {v16 .. v16}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength([B)I

    move-result v2

    .line 656
    .local v2, DateLength:I
    add-int/lit8 v18, v18, 0x2

    .line 657
    add-int/lit8 v31, v2, -0x1

    move/from16 v0, v31

    new-array v9, v0, [B

    .line 658
    .local v9, date:[B
    const/4 v15, 0x0

    .line 659
    move/from16 v17, v18

    :goto_3
    add-int v31, v18, v2

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-lt v0, v1, :cond_5

    .line 663
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 664
    .local v10, dateStr:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    add-int v18, v18, v2

    .line 667
    add-int/lit8 v31, v18, 0x2

    move/from16 v0, v27

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 668
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v14, v0, [B

    const/16 v31, 0x0

    .line 669
    aget-byte v32, v26, v18

    aput-byte v32, v14, v31

    const/16 v31, 0x1

    .line 670
    add-int/lit8 v32, v18, 0x1

    aget-byte v32, v26, v32

    aput-byte v32, v14, v31

    .line 672
    .local v14, fiveLength:[B
    invoke-static {v14}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength([B)I

    move-result v13

    .line 673
    .local v13, deviceTypeLen:I
    add-int/lit8 v18, v18, 0x2

    .line 674
    add-int/lit8 v31, v13, -0x1

    move/from16 v0, v31

    new-array v11, v0, [B

    .line 675
    .local v11, device:[B
    const/4 v15, 0x0

    .line 676
    move/from16 v17, v18

    .line 677
    :goto_4
    add-int v31, v18, v13

    add-int/lit8 v31, v31, -0x1

    .line 676
    move/from16 v0, v17

    move/from16 v1, v31

    if-lt v0, v1, :cond_6

    .line 681
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>([B)V

    .line 682
    .local v12, deviceType:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 701
    .end local v2           #DateLength:I
    .end local v4           #chipFlag:[B
    .end local v5           #chipFlagLength:I
    .end local v6           #chipSeriNum:Ljava/lang/String;
    .end local v9           #date:[B
    .end local v10           #dateStr:Ljava/lang/String;
    .end local v11           #device:[B
    .end local v12           #deviceType:Ljava/lang/String;
    .end local v13           #deviceTypeLen:I
    .end local v14           #fiveLength:[B
    .end local v15           #flag:I
    .end local v16           #fourLength:[B
    .end local v17           #i:I
    .end local v18           #len:I
    .end local v19           #oneLength:[B
    .end local v20           #pcb:[B
    .end local v21           #pcbVerLength:I
    .end local v22           #pcbVerNum:Ljava/lang/String;
    .end local v23           #proSeriNum:Ljava/lang/String;
    .end local v24           #proSeriNumLength:I
    .end local v25           #psm:[B
    .end local v26           #receiverBuffer:[B
    .end local v27           #receiverLength:I
    .end local v29           #threeLength:[B
    .end local v30           #twoLength:[B
    :cond_0
    :goto_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v31

    if-lez v31, :cond_1

    .line 702
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 704
    :cond_1
    array-length v0, v8

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_6
    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_a

    .line 707
    return-object v8

    .line 610
    .restart local v4       #chipFlag:[B
    .restart local v5       #chipFlagLength:I
    .restart local v15       #flag:I
    .restart local v17       #i:I
    .restart local v18       #len:I
    .restart local v19       #oneLength:[B
    .restart local v26       #receiverBuffer:[B
    .restart local v27       #receiverLength:I
    :cond_2
    aget-byte v31, v26, v17

    aput-byte v31, v4, v15

    .line 611
    add-int/lit8 v15, v15, 0x1

    .line 609
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 628
    .restart local v6       #chipSeriNum:Ljava/lang/String;
    .restart local v24       #proSeriNumLength:I
    .restart local v25       #psm:[B
    .restart local v30       #twoLength:[B
    :cond_3
    aget-byte v31, v26, v17

    aput-byte v31, v25, v15

    .line 629
    add-int/lit8 v15, v15, 0x1

    .line 627
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 644
    .restart local v20       #pcb:[B
    .restart local v21       #pcbVerLength:I
    .restart local v23       #proSeriNum:Ljava/lang/String;
    .restart local v29       #threeLength:[B
    :cond_4
    aget-byte v31, v26, v17

    aput-byte v31, v20, v15

    .line 645
    add-int/lit8 v15, v15, 0x1

    .line 643
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 660
    .restart local v2       #DateLength:I
    .restart local v9       #date:[B
    .restart local v16       #fourLength:[B
    .restart local v22       #pcbVerNum:Ljava/lang/String;
    :cond_5
    aget-byte v31, v26, v17

    aput-byte v31, v9, v15

    .line 661
    add-int/lit8 v15, v15, 0x1

    .line 659
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 678
    .restart local v10       #dateStr:Ljava/lang/String;
    .restart local v11       #device:[B
    .restart local v13       #deviceTypeLen:I
    .restart local v14       #fiveLength:[B
    :cond_6
    aget-byte v31, v26, v17

    aput-byte v31, v11, v15

    .line 679
    add-int/lit8 v15, v15, 0x1

    .line 677
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 693
    .end local v2           #DateLength:I
    .end local v4           #chipFlag:[B
    .end local v5           #chipFlagLength:I
    .end local v6           #chipSeriNum:Ljava/lang/String;
    .end local v9           #date:[B
    .end local v10           #dateStr:Ljava/lang/String;
    .end local v11           #device:[B
    .end local v13           #deviceTypeLen:I
    .end local v14           #fiveLength:[B
    .end local v15           #flag:I
    .end local v16           #fourLength:[B
    .end local v17           #i:I
    .end local v18           #len:I
    .end local v19           #oneLength:[B
    .end local v20           #pcb:[B
    .end local v21           #pcbVerLength:I
    .end local v22           #pcbVerNum:Ljava/lang/String;
    .end local v23           #proSeriNum:Ljava/lang/String;
    .end local v24           #proSeriNumLength:I
    .end local v25           #psm:[B
    .end local v29           #threeLength:[B
    .end local v30           #twoLength:[B
    :cond_7
    sget-object v31, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "2103\u8fd4\u56de\u6570\u636e\u957f\u5ea6=="

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 696
    :cond_8
    sget-object v31, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v32, "2103===\u63a5\u6536\u6570\u636e\u4e0d\u6b63\u786e"

    invoke-virtual/range {v31 .. v32}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 699
    .end local v26           #receiverBuffer:[B
    .end local v27           #receiverLength:I
    :cond_9
    sget-object v31, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v32, "2103\u8fd4\u56de\u6570\u636e\u957f\u5ea6\u5c0f\u4e8e0"

    invoke-virtual/range {v31 .. v32}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 704
    :cond_a
    aget-object v7, v8, v31

    .line 705
    .local v7, con:Ljava/lang/String;
    sget-object v33, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "2013 \u89e3\u6790\u540e\u7684\u6570\u636e=="

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "==="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 704
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_6
.end method

.method public static analysis2105(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/util/ArrayList;
    .locals 7
    .parameter "analysisData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/physics/entity/AnalysisData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 464
    .local v2, state:Z
    const/4 v3, 0x0

    .line 465
    .local v3, versionInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 468
    .local v1, receiverBuffer:[B
    invoke-static {v1}, Lcom/cnlaunch/physics/downloadbin/util/DpuOrderUtils;->filterOutCmdParameters([B)[B

    move-result-object v0

    .line 469
    .local v0, params:[B
    if-eqz v0, :cond_0

    array-length v5, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 471
    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->toStringArray([B)Ljava/util/ArrayList;

    move-result-object v3

    move-object v4, v3

    .line 476
    .end local v0           #params:[B
    .end local v1           #receiverBuffer:[B
    .end local v3           #versionInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, versionInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v4

    .end local v4           #versionInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #versionInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object v4, v3

    .end local v3           #versionInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #versionInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static analysis2109(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 11
    .parameter "analysisData"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 720
    .local v6, state:Z
    const/4 v0, 0x0

    .line 721
    .local v0, isSuccess:Z
    if-eqz v6, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 723
    .local v1, receiverBuffer:[B
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpRequestBuffer()[B

    move-result-object v3

    .line 724
    .local v3, requestBuffer:[B
    array-length v7, v1

    if-lez v7, :cond_5

    .line 725
    array-length v7, v3

    if-lez v7, :cond_4

    .line 727
    aget-byte v7, v1, v8

    invoke-static {v7}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, res:Ljava/lang/String;
    aget-byte v7, v1, v8

    invoke-static {v7}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, req:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 731
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "2109 \u8bf7\u6c42\u53c2\u6570\u4e0e\u8fd4\u56de\u53c2\u6570\u76f8\u540c=="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 732
    array-length v7, v1

    if-le v7, v10, :cond_2

    .line 734
    aget-byte v7, v1, v10

    invoke-static {v7}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v5

    .line 735
    .local v5, response:Ljava/lang/String;
    const-string/jumbo v7, "00"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 736
    const/4 v0, 0x1

    .line 737
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "\u590d\u4f4ddpu\u8fd0\u884c\u6a21\u5f0f\u6210\u529f\uff01"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 756
    .end local v1           #receiverBuffer:[B
    .end local v2           #req:Ljava/lang/String;
    .end local v3           #requestBuffer:[B
    .end local v4           #res:Ljava/lang/String;
    .end local v5           #response:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 739
    .restart local v1       #receiverBuffer:[B
    .restart local v2       #req:Ljava/lang/String;
    .restart local v3       #requestBuffer:[B
    .restart local v4       #res:Ljava/lang/String;
    .restart local v5       #response:Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->returnParam(Ljava/lang/String;)V

    goto :goto_0

    .line 742
    .end local v5           #response:Ljava/lang/String;
    :cond_2
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "2109 \u8fd4\u56de\u7684\u53c2\u6570\u957f\u5ea6\u5c0f\u4e8e1"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "2109 \u8bf7\u6c42\u53c2\u6570\u4e0e\u8fd4\u56de\u53c2\u6570\u4e0d\u540c"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    .end local v2           #req:Ljava/lang/String;
    .end local v4           #res:Ljava/lang/String;
    :cond_4
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "2109 \u8bf7\u6c42\u53c2\u6570\u957f\u5ea6\u5c0f\u4e8e0"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :cond_5
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "2109 \u8fd4\u56de\u7684\u53c2\u6570\u957f\u5ea6\u5c0f\u4e8e0"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static analysis2110(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 7
    .parameter "analysisData"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 324
    .local v3, state:Z
    const/4 v0, 0x0

    .line 325
    .local v0, isSuccess:Z
    if-eqz v3, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 327
    .local v1, receiverBuffer:[B
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, result:Ljava/lang/String;
    const-string/jumbo v4, "00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    const/4 v0, 0x1

    .line 333
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u89e3\u67902110\u8fd4\u56de\u7684\u6570\u636e==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    .end local v1           #receiverBuffer:[B
    .end local v2           #result:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 331
    .restart local v1       #receiverBuffer:[B
    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    .end local v1           #receiverBuffer:[B
    .end local v2           #result:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 336
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "2110\u547d\u4ee4\u6821\u9a8c\u672a\u901a\u8fc7"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static analysis2111(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 7
    .parameter "analysisData"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 249
    .local v3, state:Z
    const/4 v0, 0x0

    .line 250
    .local v0, isSuccess:Z
    if-eqz v3, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 252
    .local v1, receiverBuffer:[B
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, result:Ljava/lang/String;
    const-string/jumbo v4, "00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 258
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u89e3\u67902111\u8fd4\u56de\u7684\u6570\u636e==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    .end local v1           #receiverBuffer:[B
    .end local v2           #result:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 256
    .restart local v1       #receiverBuffer:[B
    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 261
    .end local v1           #receiverBuffer:[B
    .end local v2           #result:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 262
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "2111\u547d\u4ee4\u6821\u9a8c\u672a\u901a\u8fc7"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static analysis2114(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/String;
    .locals 5
    .parameter "analysisData"

    .prologue
    .line 446
    const-string/jumbo v1, ""

    .line 449
    .local v1, runningmode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v0

    .line 450
    .local v0, receiverBuffer:[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    invoke-static {v2}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    .line 451
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "2114 \u8fd4\u56de\u7684\u6570\u636e=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    return-object v1
.end method

.method public static analysis2402(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 5
    .parameter "analysisData"

    .prologue
    .line 505
    const-string/jumbo v3, ""

    .line 506
    .local v3, status:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 508
    .local v2, state:Z
    const/4 v0, 0x0

    .line 509
    .local v0, isSuccess:Z
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 510
    .local v1, receiverBuffer:[B
    if-eqz v2, :cond_1

    .line 512
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    invoke-static {v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    .line 513
    const-string/jumbo v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 514
    const/4 v0, 0x1

    .line 522
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 516
    :cond_0
    const/4 v0, 0x0

    .line 518
    goto :goto_0

    .line 520
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static analysis2403(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 5
    .parameter "analysisData"

    .prologue
    .line 565
    const-string/jumbo v3, ""

    .line 566
    .local v3, status:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 568
    .local v2, state:Z
    const/4 v0, 0x0

    .line 569
    .local v0, isSuccess:Z
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 570
    .local v1, receiverBuffer:[B
    if-eqz v2, :cond_1

    .line 572
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    invoke-static {v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    .line 573
    const-string/jumbo v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 574
    const/4 v0, 0x1

    .line 582
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 576
    :cond_0
    const/4 v0, 0x0

    .line 578
    goto :goto_0

    .line 580
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static analysis2404(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 5
    .parameter "analysisData"

    .prologue
    .line 525
    const-string/jumbo v3, ""

    .line 526
    .local v3, status:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 528
    .local v2, state:Z
    const/4 v0, 0x0

    .line 529
    .local v0, isSuccess:Z
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 530
    .local v1, receiverBuffer:[B
    if-eqz v2, :cond_1

    .line 532
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    invoke-static {v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    .line 533
    const-string/jumbo v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    const/4 v0, 0x1

    .line 542
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 536
    :cond_0
    const/4 v0, 0x0

    .line 538
    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static analysis2405(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 5
    .parameter "analysisData"

    .prologue
    .line 545
    const-string/jumbo v3, ""

    .line 546
    .local v3, status:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 548
    .local v2, state:Z
    const/4 v0, 0x0

    .line 549
    .local v0, isSuccess:Z
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 550
    .local v1, receiverBuffer:[B
    if-eqz v2, :cond_1

    .line 552
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    invoke-static {v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    .line 553
    const-string/jumbo v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 562
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 556
    :cond_0
    const/4 v0, 0x0

    .line 558
    goto :goto_0

    .line 560
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static analysis2407(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 5
    .parameter "analysisData"

    .prologue
    .line 484
    const-string/jumbo v3, ""

    .line 485
    .local v3, status:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 487
    .local v2, state:Z
    const/4 v0, 0x0

    .line 488
    .local v0, isSuccess:Z
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 489
    .local v1, receiverBuffer:[B
    if-eqz v2, :cond_1

    .line 491
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    invoke-static {v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    .line 492
    const-string/jumbo v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    const/4 v0, 0x1

    .line 501
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 495
    :cond_0
    const/4 v0, 0x0

    .line 497
    goto :goto_0

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static analysis2502(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/String;
    .locals 12
    .parameter "analysisData"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 350
    .local v7, state:Z
    const-string/jumbo v5, ""

    .line 351
    .local v5, result:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 353
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 354
    .local v1, receiverBuffer:[B
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpRequestBuffer()[B

    move-result-object v3

    .line 355
    .local v3, requestBuffer:[B
    array-length v8, v3

    if-lez v8, :cond_5

    .line 357
    aget-byte v8, v3, v9

    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, reqParam:Ljava/lang/String;
    aget-byte v8, v1, v9

    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, resParam:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 361
    const-string/jumbo v8, "01"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 362
    new-array v6, v10, [B

    .line 363
    .local v6, src:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v10, :cond_1

    .line 366
    invoke-static {v6}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 375
    .end local v0           #i:I
    .end local v6           #src:[B
    :cond_0
    :goto_1
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "2502 \u6821\u9a8c\u7801=="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    .end local v1           #receiverBuffer:[B
    .end local v2           #reqParam:Ljava/lang/String;
    .end local v3           #requestBuffer:[B
    .end local v4           #resParam:Ljava/lang/String;
    :goto_2
    return-object v5

    .line 364
    .restart local v0       #i:I
    .restart local v1       #receiverBuffer:[B
    .restart local v2       #reqParam:Ljava/lang/String;
    .restart local v3       #requestBuffer:[B
    .restart local v4       #resParam:Ljava/lang/String;
    .restart local v6       #src:[B
    :cond_1
    aget-byte v8, v1, v0

    aput-byte v8, v6, v0

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v0           #i:I
    .end local v6           #src:[B
    :cond_2
    const-string/jumbo v8, "02"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 369
    new-array v6, v11, [B

    .line 370
    .restart local v6       #src:[B
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-lt v0, v11, :cond_3

    .line 373
    invoke-static {v6}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 371
    :cond_3
    aget-byte v8, v1, v0

    aput-byte v8, v6, v0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 377
    .end local v0           #i:I
    .end local v6           #src:[B
    :cond_4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "2502 \u8bf7\u6c42\u53c2\u6570\u4e0e\u54cd\u5e94\u53c2\u6570\u4e0d\u540c"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 380
    .end local v2           #reqParam:Ljava/lang/String;
    .end local v4           #resParam:Ljava/lang/String;
    :cond_5
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "2502\u53d1\u9001\u547d\u4ee4\u957f\u5ea6\u4e0d\u5927\u4e8e0"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 383
    .end local v1           #receiverBuffer:[B
    .end local v3           #requestBuffer:[B
    :cond_6
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "2502\u547d\u4ee4\u6821\u9a8c\u672a\u901a\u8fc7"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static analysis2503(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 10
    .parameter "analysisData"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 398
    .local v6, state:Z
    const/4 v0, 0x0

    .line 399
    .local v0, isSuccess:Z
    if-eqz v6, :cond_6

    .line 400
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpRequestBuffer()[B

    move-result-object v3

    .line 401
    .local v3, request:[B
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getpReceiveBuffer()[B

    move-result-object v1

    .line 402
    .local v1, receiverBuffer:[B
    array-length v7, v3

    if-lez v7, :cond_5

    array-length v7, v1

    if-lez v7, :cond_5

    .line 403
    aget-byte v7, v3, v8

    invoke-static {v7}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, reqParam:Ljava/lang/String;
    aget-byte v7, v1, v8

    invoke-static {v7}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, resParam:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 407
    array-length v7, v1

    if-le v7, v9, :cond_3

    .line 409
    aget-byte v7, v1, v9

    invoke-static {v7}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, res:Ljava/lang/String;
    const-string/jumbo v7, "00"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 411
    const/4 v0, 0x1

    .line 412
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "\u89e3\u67902503\u8fd4\u56de\u7684\u6570\u636e===\u6210\u529f\u83b7\u5f97\u6388\u6743"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    :cond_0
    :goto_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u89e3\u67902503\u8fd4\u56de\u7684\u6570\u636e==="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    .end local v1           #receiverBuffer:[B
    .end local v2           #reqParam:Ljava/lang/String;
    .end local v3           #request:[B
    .end local v4           #res:Ljava/lang/String;
    .end local v5           #resParam:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 413
    .restart local v1       #receiverBuffer:[B
    .restart local v2       #reqParam:Ljava/lang/String;
    .restart local v3       #request:[B
    .restart local v4       #res:Ljava/lang/String;
    .restart local v5       #resParam:Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "01"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 414
    const/4 v0, 0x0

    .line 415
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "\u89e3\u67902503\u8fd4\u56de\u7684\u6570\u636e===\u62d2\u7edd\uff0c\u6821\u9a8c\u5b57\u8282\u9519\u8bef"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_2
    const-string/jumbo v7, "02"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 418
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "\u89e3\u67902503\u8fd4\u56de\u7684\u6570\u636e===\u5176\u4ed6\u9519\u8bef"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    .end local v4           #res:Ljava/lang/String;
    :cond_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "2503\u8bf7\u6c42\u53c2\u6570\u957f\u5ea6\u5c0f\u4e8e1"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 425
    :cond_4
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "2503\u8bf7\u6c42\u6821\u9a8c\u7b49\u7ea7\u4e0e\u54cd\u5e94\u6821\u9a8c\u7b49\u7ea7\u4e0d\u540c"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 429
    .end local v2           #reqParam:Ljava/lang/String;
    .end local v5           #resParam:Ljava/lang/String;
    :cond_5
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "2503\u8bf7\u6c42\u53c2\u6570\u957f\u5ea6\u5c0f\u4e8e0"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 433
    .end local v1           #receiverBuffer:[B
    .end local v3           #request:[B
    :cond_6
    const/4 v0, 0x0

    .line 434
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "2503\u547d\u4ee4\u6821\u9a8c\u672a\u901a\u8fc7"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static analysis2504(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 4
    .parameter "analysisData"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 301
    .local v1, state:Z
    const/4 v0, 0x0

    .line 302
    .local v0, isSuccess:Z
    if-eqz v1, :cond_0

    .line 303
    const/4 v0, 0x1

    .line 304
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "\u65ad\u5f00\u8fde\u63a5\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 307
    :cond_0
    const/4 v0, 0x0

    .line 308
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "2504\u547d\u4ee4\u6821\u9a8c\u672a\u901a\u8fc7"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static analysis2505(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;
    .locals 4
    .parameter "analysisData"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 278
    .local v1, state:Z
    const/4 v0, 0x0

    .line 279
    .local v0, isSuccess:Z
    if-eqz v1, :cond_0

    .line 280
    const/4 v0, 0x1

    .line 281
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "\u590d\u4f4d\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 284
    :cond_0
    const/4 v0, 0x0

    .line 285
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "2505\u547d\u4ee4\u6821\u9a8c\u672a\u901a\u8fc7"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static analysisData([B[B)Z
    .locals 17
    .parameter "sendCommand"
    .parameter "receive"

    .prologue
    .line 149
    new-instance v1, Lcom/cnlaunch/physics/entity/AnalysisData;

    invoke-direct {v1}, Lcom/cnlaunch/physics/entity/AnalysisData;-><init>()V

    .line 151
    .local v1, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    const/4 v14, 0x2

    new-array v10, v14, [B

    const/4 v14, 0x0

    const/4 v15, 0x7

    aget-byte v15, p0, v15

    aput-byte v15, v10, v14

    const/4 v14, 0x1

    const/16 v15, 0x8

    aget-byte v15, p0, v15

    aput-byte v15, v10, v14

    .line 153
    .local v10, requestWord:[B
    invoke-static {v10}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, requestWordStr:Ljava/lang/String;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "\u53d1\u9001\u7684\u547d\u4ee4\u5b57\uff1a"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    const/4 v14, 0x6

    aget-byte v14, p0, v14

    invoke-static {v14}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToInt(B)I

    move-result v9

    .line 158
    .local v9, requestCounter:I
    const/4 v3, 0x0

    .line 159
    .local v3, feedbackBagLength:I
    const/4 v8, 0x0

    .line 161
    .local v8, pSendBuffer:[B
    move-object/from16 v0, p0

    array-length v14, v0

    const/4 v15, 0x6

    if-le v14, v15, :cond_0

    .line 162
    const/4 v14, 0x2

    new-array v13, v14, [B

    const/4 v14, 0x0

    const/4 v15, 0x4

    aget-byte v15, p0, v15

    aput-byte v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x5

    aget-byte v15, p0, v15

    aput-byte v15, v13, v14

    .line 163
    .local v13, sendbagLengthByte:[B
    invoke-static {v13}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength([B)I

    move-result v12

    .line 164
    .local v12, sendBagLength:I
    if-lez v12, :cond_0

    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v15, v12, 0x7

    if-lt v14, v15, :cond_0

    .line 165
    add-int/lit8 v14, v12, -0x3

    new-array v8, v14, [B

    .line 166
    const/4 v6, 0x0

    .line 167
    .local v6, flag:I
    const/16 v7, 0x9

    .local v7, i:I
    :goto_0
    add-int/lit8 v14, v12, 0x9

    add-int/lit8 v14, v14, -0x3

    if-lt v7, v14, :cond_1

    .line 174
    .end local v6           #flag:I
    .end local v7           #i:I
    .end local v12           #sendBagLength:I
    .end local v13           #sendbagLengthByte:[B
    :cond_0
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "\u53d1\u9001\u6307\u4ee4\u8ba1\u6570\u5668\u503c = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u5f00\u59cb\u6821\u9a8c\u76f8\u5e94\u5b57\u8282\u6570\u7ec4..."

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_8

    .line 177
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x1

    if-le v14, v15, :cond_7

    .line 178
    const/4 v14, 0x0

    aget-byte v14, p1, v14

    invoke-static {v14}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v14

    .line 179
    const-string/jumbo v15, "55"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 180
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u9996\u5b57\u8282 0x55 OK!"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x2

    if-le v14, v15, :cond_6

    .line 182
    const/4 v14, 0x1

    aget-byte v14, p1, v14

    invoke-static {v14}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v14

    .line 183
    const-string/jumbo v15, "aa"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 184
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u5305\u5934\u6821\u9a8c OK!"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x6

    if-le v14, v15, :cond_5

    .line 186
    const/4 v14, 0x2

    new-array v2, v14, [B

    const/4 v14, 0x0

    const/4 v15, 0x4

    aget-byte v15, p1, v15

    aput-byte v15, v2, v14

    const/4 v14, 0x1

    const/4 v15, 0x5

    aget-byte v15, p1, v15

    aput-byte v15, v2, v14

    .line 188
    .local v2, bagLengthByte:[B
    invoke-static {v2}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength([B)I

    move-result v3

    .line 189
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "\u5305\u957f\u5ea6\u4e3a\uff1a"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    if-lez v3, :cond_4

    .line 191
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v15, v3, 0x7

    if-lt v14, v15, :cond_4

    .line 192
    const/4 v14, 0x6

    aget-byte v14, p1, v14

    invoke-static {v14}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToInt(B)I

    move-result v14

    if-ne v14, v9, :cond_3

    .line 193
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u8ba1\u6570\u5668\u6821\u9a8c OK!"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    const/4 v14, 0x2

    new-array v4, v14, [B

    const/4 v14, 0x0

    const/4 v15, 0x7

    aget-byte v15, p1, v15

    aput-byte v15, v4, v14

    const/4 v14, 0x1

    const/16 v15, 0x8

    aget-byte v15, p1, v15

    aput-byte v15, v4, v14

    .line 198
    .local v4, feedbackWord:[B
    invoke-static {v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, feedbackWordStr:Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 201
    const-string/jumbo v15, "6"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 202
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 205
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 203
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 205
    if-eqz v14, :cond_2

    .line 206
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u547d\u4ee4\u5b57\u6821\u9a8c OK!"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    const/4 v14, 0x1

    .line 236
    .end local v2           #bagLengthByte:[B
    .end local v4           #feedbackWord:[B
    .end local v5           #feedbackWordStr:Ljava/lang/String;
    :goto_1
    return v14

    .line 168
    .restart local v6       #flag:I
    .restart local v7       #i:I
    .restart local v12       #sendBagLength:I
    .restart local v13       #sendbagLengthByte:[B
    :cond_1
    aget-byte v14, p0, v7

    aput-byte v14, v8, v6

    .line 169
    add-int/lit8 v6, v6, 0x1

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 209
    .end local v6           #flag:I
    .end local v7           #i:I
    .end local v12           #sendBagLength:I
    .end local v13           #sendbagLengthByte:[B
    .restart local v2       #bagLengthByte:[B
    .restart local v4       #feedbackWord:[B
    .restart local v5       #feedbackWordStr:Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 210
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u547d\u4ee4\u5b57\u6821\u9a8c fail!"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    .end local v2           #bagLengthByte:[B
    .end local v4           #feedbackWord:[B
    .end local v5           #feedbackWordStr:Ljava/lang/String;
    :goto_2
    const/4 v14, 0x0

    goto :goto_1

    .line 213
    .restart local v2       #bagLengthByte:[B
    :cond_3
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 214
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u8ba1\u6570\u5668\u6821\u9a8c fail!"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 217
    :cond_4
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 218
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u547d\u4ee4\u83b7\u53d6\u4e0d\u5b8c\u6574"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 221
    .end local v2           #bagLengthByte:[B
    :cond_5
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 222
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u547d\u4ee4\u83b7\u53d6\u4e0d\u5b8c\u6574\uff0c\u6ca1\u6709\u83b7\u53d6\u5230\u5305\u957f\u5ea6\uff01"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :cond_6
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 226
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u5305\u5934\u6821\u9a8cfail!"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 229
    :cond_7
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 230
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u9996\u5b57\u8282 0x55 fail!"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 233
    :cond_8
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/cnlaunch/physics/entity/AnalysisData;->setState(Ljava/lang/Boolean;)V

    .line 234
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "\u63a5\u6536\u6307\u4ee4\u4e3a\u7a7a\uff01"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static returnParam(Ljava/lang/String;)V
    .locals 3
    .parameter "returnValue"

    .prologue
    .line 766
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 767
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 835
    :goto_0
    return-void

    .line 769
    :pswitch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "00==\u63a5\u6536\u6570\u636e\u6b63\u786e\uff0c\u6216\u51c6\u5907\u597d\u53ef\u4ee5\u5347\u7ea7"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 772
    :pswitch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "01==\u5c1a\u672a\u83b7\u5f97\u5b89\u5168\u6821\u9a8c\uff0c\u6216\u5b89\u5168\u6821\u9a8c\u9519\u8bef"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 775
    :pswitch_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "02==\u6570\u636e\u5df2\u63a5\u6536\uff0c\u63a5\u5934\u5728\u5fd9"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :pswitch_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "03==\u6570\u636e\u672a\u63a5\u6536\uff0c\u63a5\u5934\u5728\u5fd9"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :pswitch_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "04==\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :pswitch_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "05==\u6587\u4ef6\u5df2\u5b58\u5728"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 787
    :pswitch_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "06==\u5df2\u5b58\u5728\u8be5\u8f6f\u4ef6,\u7248\u672c\u76f8\u540c\uff0c\u5347\u7ea7\u5b8c\u6210"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :pswitch_7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "07==\u5df2\u5b58\u5728\u8be5\u8f6f\u4ef6,\u7248\u672c\u76f8\u540c\uff0c\u5347\u7ea7\u672a\u5b8c\u6210"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :pswitch_8
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "08==\u6570\u636e\u957f\u5ea6\u6821\u9a8c\u9519\u8bef\uff0c\u5199\u5165\u4f4d\u7f6e\u4e0e\u5df2\u63a5\u6536\u6570\u636e\u957f\u5ea6\u4e0d\u7b26"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :pswitch_9
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "09==md5\u6821\u9a8c\u5931\u8d25..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :pswitch_a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "0a==\u6587\u4ef6\u6570\u91cf\u4e0d\u6b63\u786e..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :pswitch_b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "0b==\u5176\u4ed6\u5f02\u5e38...."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :pswitch_c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "0c==\u5206\u914d\u7a7a\u95f4\u4e0d\u8db3"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :pswitch_d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "0d==\u64e6\u51fa\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :pswitch_e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "0e==\u5199\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 814
    :pswitch_f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "0f==\u6587\u4ef6\u7a7a"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 817
    :pswitch_10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "10==\u6587\u4ef6\u957f\u5ea6\u95ee\u9898"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 820
    :pswitch_11
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "11==\u8bbe\u7f6e\u51fa\u9519"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 823
    :pswitch_12
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "12==\u5bc6\u7801\u4e0d\u6b63\u786e"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 826
    :pswitch_13
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "13==\u5bc6\u7801\u9a8c\u8bc1\u672a\u901a\u8fc7"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 829
    :pswitch_14
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "14==\u5bc6\u7801\u9519\u8bef\u6b21\u6570\u8fc7\u591a"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private static sendStatus(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Ljava/lang/String;)V
    .locals 0
    .parameter "mOnDownloadBinListener"
    .parameter "str"

    .prologue
    .line 18
    if-eqz p0, :cond_0

    .line 19
    invoke-interface {p0, p1}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinCmdListener(Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method
