.class public Lcom/cnlaunch/x431pro/utils/conversion/LanChaset;
.super Ljava/lang/Object;
.source "LanChaset.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChaset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "lan"

    .prologue
    .line 14
    const-string/jumbo v0, ""

    .line 15
    .local v0, word:Ljava/lang/String;
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;->languages(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 89
    const-string/jumbo v0, "GB2312"

    .line 92
    :goto_0
    return-object v0

    .line 17
    :pswitch_0
    const-string/jumbo v0, "GB2312"

    .line 18
    goto :goto_0

    .line 20
    :pswitch_1
    const-string/jumbo v0, "GB2312"

    .line 21
    goto :goto_0

    .line 23
    :pswitch_2
    const-string/jumbo v0, "BIG5"

    .line 24
    goto :goto_0

    .line 26
    :pswitch_3
    const-string/jumbo v0, "EUC-JP"

    .line 27
    goto :goto_0

    .line 29
    :pswitch_4
    const-string/jumbo v0, "euc-kr"

    .line 30
    goto :goto_0

    .line 32
    :pswitch_5
    const-string/jumbo v0, "ISO-8859-1"

    .line 33
    goto :goto_0

    .line 35
    :pswitch_6
    const-string/jumbo v0, "ISO-8859-1"

    .line 36
    goto :goto_0

    .line 38
    :pswitch_7
    const-string/jumbo v0, "ISO-8859-1"

    .line 39
    goto :goto_0

    .line 41
    :pswitch_8
    const-string/jumbo v0, "ISO-8859-1"

    .line 42
    goto :goto_0

    .line 44
    :pswitch_9
    const-string/jumbo v0, "ISO-8859-1"

    .line 45
    goto :goto_0

    .line 47
    :pswitch_a
    const-string/jumbo v0, "ISO-8859-1"

    .line 48
    goto :goto_0

    .line 50
    :pswitch_b
    const-string/jumbo v0, "ISO-8859-1"

    .line 51
    goto :goto_0

    .line 53
    :pswitch_c
    const-string/jumbo v0, "ISO-8859-1"

    .line 54
    goto :goto_0

    .line 56
    :pswitch_d
    const-string/jumbo v0, "ISO-8859-1"

    .line 57
    goto :goto_0

    .line 59
    :pswitch_e
    const-string/jumbo v0, "ISO-8859-2"

    .line 60
    goto :goto_0

    .line 62
    :pswitch_f
    const-string/jumbo v0, "ISO-8859-2"

    .line 63
    goto :goto_0

    .line 65
    :pswitch_10
    const-string/jumbo v0, "ISO-8859-2"

    .line 66
    goto :goto_0

    .line 68
    :pswitch_11
    const-string/jumbo v0, "ISO-8859-5"

    .line 69
    goto :goto_0

    .line 71
    :pswitch_12
    const-string/jumbo v0, "ISO-8859-9"

    .line 72
    goto :goto_0

    .line 74
    :pswitch_13
    const-string/jumbo v0, "ISO-8859-7"

    .line 75
    goto :goto_0

    .line 77
    :pswitch_14
    const-string/jumbo v0, "ISO-8859-6"

    .line 78
    goto :goto_0

    .line 80
    :pswitch_15
    const-string/jumbo v0, "windows-1256"

    .line 81
    goto :goto_0

    .line 83
    :pswitch_16
    const-string/jumbo v0, "ISO-8859-5"

    .line 84
    goto :goto_0

    .line 86
    :pswitch_17
    const-string/jumbo v0, "ISO-8859-2"

    .line 87
    goto :goto_0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_11
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_12
        :pswitch_a
        :pswitch_13
        :pswitch_f
        :pswitch_14
        :pswitch_16
        :pswitch_17
        :pswitch_b
        :pswitch_15
        :pswitch_4
        :pswitch_c
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method
