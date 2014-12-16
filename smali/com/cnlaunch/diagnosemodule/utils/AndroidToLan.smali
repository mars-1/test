.class public Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;
.super Ljava/lang/Object;
.source "AndroidToLan.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceArea(Ljava/lang/String;)[B
    .locals 3
    .parameter "lan"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 100
    const-string/jumbo v0, "American"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-array v0, v1, [B

    aput-byte v1, v0, v2

    .line 111
    :goto_0
    return-object v0

    .line 102
    :cond_0
    const-string/jumbo v0, "Japanese"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-array v0, v1, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    goto :goto_0

    .line 104
    :cond_1
    const-string/jumbo v0, "EUROPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    new-array v0, v1, [B

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    goto :goto_0

    .line 106
    :cond_2
    const-string/jumbo v0, "Asian"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    new-array v0, v1, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v2

    goto :goto_0

    .line 108
    :cond_3
    const-string/jumbo v0, "Chinese"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    new-array v0, v1, [B

    const/4 v1, 0x5

    aput-byte v1, v0, v2

    goto :goto_0

    .line 111
    :cond_4
    new-array v0, v1, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    goto :goto_0
.end method

.method public static getDeviceAreaID(Ljava/lang/String;)I
    .locals 1
    .parameter "lan"

    .prologue
    .line 75
    const-string/jumbo v0, "American"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 77
    :cond_0
    const-string/jumbo v0, "Japanese"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const/4 v0, 0x2

    goto :goto_0

    .line 79
    :cond_1
    const-string/jumbo v0, "EUROPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x3

    goto :goto_0

    .line 81
    :cond_2
    const-string/jumbo v0, "Asian"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const/4 v0, 0x4

    goto :goto_0

    .line 83
    :cond_3
    const-string/jumbo v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    const/4 v0, 0x5

    goto :goto_0

    .line 86
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getIdToLanName(I)Ljava/lang/String;
    .locals 3
    .parameter "lanId"

    .prologue
    .line 291
    const-string/jumbo v0, "EN"

    .line 292
    .local v0, lanName:Ljava/lang/String;
    const/16 v2, 0x3ea

    if-ne p0, v2, :cond_0

    .line 293
    const-string/jumbo v0, "CN"

    move-object v1, v0

    .line 362
    .end local v0           #lanName:Ljava/lang/String;
    .local v1, lanName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 295
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    .line 296
    const-string/jumbo v0, "JP"

    move-object v1, v0

    .line 297
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 298
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 299
    const-string/jumbo v0, "DE"

    move-object v1, v0

    .line 300
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 301
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_2
    const/16 v2, 0xdd

    if-ne p0, v2, :cond_3

    .line 302
    const-string/jumbo v0, "TW"

    move-object v1, v0

    .line 303
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 304
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x4

    if-ne p0, v2, :cond_4

    .line 305
    const-string/jumbo v0, "FR"

    move-object v1, v0

    .line 306
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 307
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x6

    if-ne p0, v2, :cond_5

    .line 308
    const-string/jumbo v0, "PT"

    move-object v1, v0

    .line 309
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 310
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x3

    if-ne p0, v2, :cond_6

    .line 311
    const-string/jumbo v0, "RU"

    move-object v1, v0

    .line 312
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 313
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_6
    const/16 v2, 0x3eb

    if-ne p0, v2, :cond_7

    .line 314
    const-string/jumbo v0, "IT"

    move-object v1, v0

    .line 315
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 316
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x5

    if-ne p0, v2, :cond_8

    .line 317
    const-string/jumbo v0, "ES"

    move-object v1, v0

    .line 318
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 319
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_8
    const/4 v2, 0x7

    if-ne p0, v2, :cond_9

    .line 320
    const-string/jumbo v0, "PL"

    move-object v1, v0

    .line 321
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 322
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_9
    const/16 v2, 0x8

    if-ne p0, v2, :cond_a

    .line 323
    const-string/jumbo v0, "TR"

    move-object v1, v0

    .line 324
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 325
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_a
    const/16 v2, 0x9

    if-ne p0, v2, :cond_b

    .line 326
    const-string/jumbo v0, "NL"

    move-object v1, v0

    .line 327
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 328
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_b
    const/16 v2, 0xa

    if-ne p0, v2, :cond_c

    .line 329
    const-string/jumbo v0, "GR"

    move-object v1, v0

    .line 330
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 331
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_c
    const/16 v2, 0xb

    if-ne p0, v2, :cond_d

    .line 332
    const-string/jumbo v0, "HU"

    move-object v1, v0

    .line 333
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 334
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_d
    const/16 v2, 0xc

    if-ne p0, v2, :cond_e

    .line 335
    const-string/jumbo v0, "AR"

    move-object v1, v0

    .line 336
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 337
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_e
    const/16 v2, 0xd

    if-ne p0, v2, :cond_f

    .line 338
    const-string/jumbo v0, "DA"

    move-object v1, v0

    .line 339
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto :goto_0

    .line 340
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_f
    const/16 v2, 0xf

    if-ne p0, v2, :cond_10

    .line 341
    const-string/jumbo v0, "FA"

    move-object v1, v0

    .line 342
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto/16 :goto_0

    .line 343
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_10
    const/16 v2, 0xe

    if-ne p0, v2, :cond_11

    .line 344
    const-string/jumbo v0, "KO"

    move-object v1, v0

    .line 345
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto/16 :goto_0

    .line 346
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_11
    const/16 v2, 0x12

    if-ne p0, v2, :cond_12

    .line 347
    const-string/jumbo v0, "FI"

    move-object v1, v0

    .line 348
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto/16 :goto_0

    .line 349
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_12
    const/16 v2, 0x13

    if-ne p0, v2, :cond_13

    .line 350
    const-string/jumbo v0, "SV"

    move-object v1, v0

    .line 351
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto/16 :goto_0

    .line 352
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_13
    const/16 v2, 0x14

    if-ne p0, v2, :cond_14

    .line 353
    const-string/jumbo v0, "CS"

    move-object v1, v0

    .line 354
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto/16 :goto_0

    .line 355
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_14
    const/16 v2, 0x10

    if-ne p0, v2, :cond_15

    .line 356
    const-string/jumbo v0, "RO"

    move-object v1, v0

    .line 357
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto/16 :goto_0

    .line 358
    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_15
    const/16 v2, 0x11

    if-ne p0, v2, :cond_16

    .line 359
    const-string/jumbo v0, "SR"

    move-object v1, v0

    .line 360
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto/16 :goto_0

    .end local v1           #lanName:Ljava/lang/String;
    .restart local v0       #lanName:Ljava/lang/String;
    :cond_16
    move-object v1, v0

    .line 362
    .end local v0           #lanName:Ljava/lang/String;
    .restart local v1       #lanName:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static getLanId(Ljava/lang/String;)I
    .locals 3
    .parameter "lanName"

    .prologue
    .line 121
    const/16 v0, 0x3e9

    .line 122
    .local v0, lanId:I
    const-string/jumbo v2, "CN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const/16 v0, 0x3ea

    move v1, v0

    .line 194
    .end local v0           #lanId:I
    .local v1, lanId:I
    :goto_0
    return v1

    .line 125
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_0
    const-string/jumbo v2, "JP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const/4 v0, 0x2

    move v1, v0

    .line 127
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto :goto_0

    .line 128
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_1
    const-string/jumbo v2, "DE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const/4 v0, 0x1

    move v1, v0

    .line 130
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto :goto_0

    .line 131
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_2
    const-string/jumbo v2, "HK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    const-string/jumbo v2, "TW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    :cond_3
    const/16 v0, 0xdd

    move v1, v0

    .line 134
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto :goto_0

    .line 135
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_4
    const-string/jumbo v2, "FR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    const/4 v0, 0x4

    move v1, v0

    .line 137
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto :goto_0

    .line 138
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_5
    const-string/jumbo v2, "PT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "BR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 139
    :cond_6
    const/4 v0, 0x6

    move v1, v0

    .line 140
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto :goto_0

    .line 141
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_7
    const-string/jumbo v2, "RU"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 142
    const/4 v0, 0x3

    move v1, v0

    .line 143
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto :goto_0

    .line 144
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_8
    const-string/jumbo v2, "IT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 145
    const/16 v0, 0x3eb

    move v1, v0

    .line 146
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto :goto_0

    .line 147
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_9
    const-string/jumbo v2, "ES"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 148
    const/4 v0, 0x5

    move v1, v0

    .line 149
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto :goto_0

    .line 150
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_a
    const-string/jumbo v2, "PL"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 151
    const/4 v0, 0x7

    move v1, v0

    .line 152
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto :goto_0

    .line 153
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_b
    const-string/jumbo v2, "TR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 154
    const/16 v0, 0x8

    move v1, v0

    .line 155
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 156
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_c
    const-string/jumbo v2, "NL"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 157
    const/16 v0, 0x9

    move v1, v0

    .line 158
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 159
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_d
    const-string/jumbo v2, "GR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 160
    const/16 v0, 0xa

    move v1, v0

    .line 161
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 162
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_e
    const-string/jumbo v2, "HU"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 163
    const/16 v0, 0xb

    move v1, v0

    .line 164
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 165
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_f
    const-string/jumbo v2, "AR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "EG"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 166
    :cond_10
    const/16 v0, 0xc

    move v1, v0

    .line 167
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 168
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_11
    const-string/jumbo v2, "DA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "DK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 169
    :cond_12
    const/16 v0, 0xd

    move v1, v0

    .line 170
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 171
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_13
    const-string/jumbo v2, "FA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string/jumbo v2, "IR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 172
    :cond_14
    const/16 v0, 0xf

    move v1, v0

    .line 173
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 174
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_15
    const-string/jumbo v2, "KO"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "KR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 175
    :cond_16
    const/16 v0, 0xe

    move v1, v0

    .line 176
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 177
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_17
    const-string/jumbo v2, "FI"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 178
    const/16 v0, 0x12

    move v1, v0

    .line 179
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 180
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_18
    const-string/jumbo v2, "SV"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v2, "SE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 181
    :cond_19
    const/16 v0, 0x13

    move v1, v0

    .line 182
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 183
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_1a
    const-string/jumbo v2, "CS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string/jumbo v2, "CZ"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 184
    :cond_1b
    const/16 v0, 0x14

    move v1, v0

    .line 185
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 186
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_1c
    const-string/jumbo v2, "RO"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 187
    const/16 v0, 0x10

    move v1, v0

    .line 188
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 189
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_1d
    const-string/jumbo v2, "SR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string/jumbo v2, "RS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 190
    :cond_1e
    const/16 v0, 0x11

    move v1, v0

    .line 191
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0

    .line 193
    .end local v1           #lanId:I
    .restart local v0       #lanId:I
    :cond_1f
    const/16 v0, 0x3e9

    move v1, v0

    .line 194
    .end local v0           #lanId:I
    .restart local v1       #lanId:I
    goto/16 :goto_0
.end method

.method public static languages(Ljava/lang/String;)I
    .locals 3
    .parameter "language"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, lan:I
    const-string/jumbo v2, "CN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const/4 v0, 0x1

    move v1, v0

    .line 280
    .end local v0           #lan:I
    .local v1, lan:I
    :goto_0
    return v1

    .line 209
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_0
    const-string/jumbo v2, "JP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const/4 v0, 0x2

    move v1, v0

    .line 211
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto :goto_0

    .line 212
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_1
    const-string/jumbo v2, "DE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    const/4 v0, 0x3

    move v1, v0

    .line 214
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto :goto_0

    .line 215
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_2
    const-string/jumbo v2, "HK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 216
    const-string/jumbo v2, "TW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    :cond_3
    const/4 v0, 0x4

    move v1, v0

    .line 218
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto :goto_0

    .line 219
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_4
    const-string/jumbo v2, "FR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 220
    const/4 v0, 0x5

    move v1, v0

    .line 221
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto :goto_0

    .line 222
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_5
    const-string/jumbo v2, "PT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "BR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 223
    :cond_6
    const/4 v0, 0x6

    move v1, v0

    .line 224
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto :goto_0

    .line 225
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_7
    const-string/jumbo v2, "RU"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 226
    const/4 v0, 0x7

    move v1, v0

    .line 227
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto :goto_0

    .line 228
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_8
    const-string/jumbo v2, "IT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 229
    const/16 v0, 0x8

    move v1, v0

    .line 230
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto :goto_0

    .line 231
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_9
    const-string/jumbo v2, "ES"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 232
    const/16 v0, 0x9

    move v1, v0

    .line 233
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto :goto_0

    .line 234
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_a
    const-string/jumbo v2, "PL"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 235
    const/16 v0, 0xa

    move v1, v0

    .line 236
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 237
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_b
    const-string/jumbo v2, "TR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 238
    const/16 v0, 0xb

    move v1, v0

    .line 239
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 240
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_c
    const-string/jumbo v2, "NL"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 241
    const/16 v0, 0xc

    move v1, v0

    .line 242
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 243
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_d
    const-string/jumbo v2, "GR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 244
    const/16 v0, 0xd

    move v1, v0

    .line 245
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 246
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_e
    const-string/jumbo v2, "HU"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 247
    const/16 v0, 0xe

    move v1, v0

    .line 248
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 249
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_f
    const-string/jumbo v2, "AR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "EG"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 250
    const-string/jumbo v2, "ARABIC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 251
    :cond_10
    const/16 v0, 0xf

    move v1, v0

    .line 252
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 253
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_11
    const-string/jumbo v2, "DA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "DK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 254
    :cond_12
    const/16 v0, 0x12

    move v1, v0

    .line 255
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 256
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_13
    const-string/jumbo v2, "FA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string/jumbo v2, "IR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 257
    :cond_14
    const/16 v0, 0x13

    move v1, v0

    .line 258
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 259
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_15
    const-string/jumbo v2, "KO"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "KR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 260
    const-string/jumbo v2, "KOREAN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 261
    :cond_16
    const/16 v0, 0x14

    move v1, v0

    .line 262
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 263
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_17
    const-string/jumbo v2, "FI"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 264
    const/16 v0, 0x15

    move v1, v0

    .line 265
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 266
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_18
    const-string/jumbo v2, "SV"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v2, "SE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 267
    :cond_19
    const/16 v0, 0x16

    move v1, v0

    .line 268
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 269
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_1a
    const-string/jumbo v2, "CS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string/jumbo v2, "CZ"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 270
    :cond_1b
    const/16 v0, 0x17

    move v1, v0

    .line 271
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 272
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_1c
    const-string/jumbo v2, "SR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string/jumbo v2, "RS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 273
    :cond_1d
    const/16 v0, 0x10

    move v1, v0

    .line 274
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 275
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_1e
    const-string/jumbo v2, "RO"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 276
    const/16 v0, 0x11

    move v1, v0

    .line 277
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0

    .line 279
    .end local v1           #lan:I
    .restart local v0       #lan:I
    :cond_1f
    const/4 v0, 0x0

    move v1, v0

    .line 280
    .end local v0           #lan:I
    .restart local v1       #lan:I
    goto/16 :goto_0
.end method

.method public static toLan(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "lan"

    .prologue
    .line 11
    const-string/jumbo v0, "EN"

    .line 12
    .local v0, result:Ljava/lang/String;
    const-string/jumbo v1, "CN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    const-string/jumbo v0, "CN"

    .line 61
    :goto_0
    return-object v0

    .line 14
    :cond_0
    const-string/jumbo v1, "JP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    const-string/jumbo v0, "JP"

    .line 16
    goto :goto_0

    :cond_1
    const-string/jumbo v1, "DE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    const-string/jumbo v0, "DE"

    .line 18
    goto :goto_0

    :cond_2
    const-string/jumbo v1, "HK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "TW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    :cond_3
    const-string/jumbo v0, "HK"

    .line 20
    goto :goto_0

    :cond_4
    const-string/jumbo v1, "FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    const-string/jumbo v0, "FR"

    .line 22
    goto :goto_0

    :cond_5
    const-string/jumbo v1, "PT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "BR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    :cond_6
    const-string/jumbo v0, "PT"

    .line 24
    goto :goto_0

    :cond_7
    const-string/jumbo v1, "RU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    const-string/jumbo v0, "RU"

    .line 26
    goto :goto_0

    :cond_8
    const-string/jumbo v1, "IT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 27
    const-string/jumbo v0, "IT"

    .line 28
    goto :goto_0

    :cond_9
    const-string/jumbo v1, "ES"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 29
    const-string/jumbo v0, "ES"

    .line 30
    goto :goto_0

    :cond_a
    const-string/jumbo v1, "PL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 31
    const-string/jumbo v0, "PL"

    .line 32
    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "TR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 33
    const-string/jumbo v0, "TR"

    .line 34
    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "NL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 35
    const-string/jumbo v0, "NL"

    .line 36
    goto/16 :goto_0

    :cond_d
    const-string/jumbo v1, "GR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 37
    const-string/jumbo v0, "GR"

    .line 38
    goto/16 :goto_0

    :cond_e
    const-string/jumbo v1, "HU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 39
    const-string/jumbo v0, "HU"

    .line 40
    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "AR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "EG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 41
    :cond_10
    const-string/jumbo v0, "AR"

    .line 42
    goto/16 :goto_0

    :cond_11
    const-string/jumbo v1, "DA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v1, "DK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 43
    :cond_12
    const-string/jumbo v0, "DA"

    .line 44
    goto/16 :goto_0

    :cond_13
    const-string/jumbo v1, "FA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo v1, "IR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 45
    :cond_14
    const-string/jumbo v0, "FA"

    .line 46
    goto/16 :goto_0

    :cond_15
    const-string/jumbo v1, "KO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "KR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 47
    :cond_16
    const-string/jumbo v0, "KO"

    .line 48
    goto/16 :goto_0

    :cond_17
    const-string/jumbo v1, "FI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 49
    const-string/jumbo v0, "FI"

    .line 50
    goto/16 :goto_0

    :cond_18
    const-string/jumbo v1, "SV"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo v1, "SE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 51
    :cond_19
    const-string/jumbo v0, "SV"

    .line 52
    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v1, "CS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string/jumbo v1, "CZ"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 53
    :cond_1b
    const-string/jumbo v0, "CS"

    .line 54
    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v1, "SR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string/jumbo v1, "RS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 55
    :cond_1d
    const-string/jumbo v0, "SR"

    .line 56
    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v1, "RO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 57
    const-string/jumbo v0, "RO"

    .line 58
    goto/16 :goto_0

    .line 59
    :cond_1f
    const-string/jumbo v0, "EN"

    goto/16 :goto_0
.end method
