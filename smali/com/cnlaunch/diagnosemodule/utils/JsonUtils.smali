.class public Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field static dataStreamExit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->dataStreamExit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cmdToJson(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "command"

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "type"
    .parameter "command"

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 30
    const-string/jumbo v0, "{\"ver\":\"%1$s\",\"type\":\"%2$s\",\"cmd\":\"%3$s\"}"

    .line 31
    .local v0, json:Ljava/lang/String;
    sget-boolean v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAG_LIB_OLD:Z

    if-eqz v1, :cond_0

    .line 32
    invoke-static {p0, v3, p1}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->sendOldDiagCommand(Ljava/lang/String;ZLjava/lang/String;)V

    .line 33
    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static cmdToJsonForRemote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "command"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/cnlaunch/diagnosemodule/utils/JsonUtils;->cmdToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cmdToJsonNoSendOld(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "type"
    .parameter "command"

    .prologue
    const/4 v3, 0x3

    .line 47
    const-string/jumbo v0, "{\"ver\":\"%1$s\",\"type\":\"%2$s\",\"cmd\":\"%3$s\"}"

    .line 48
    .local v0, json:Ljava/lang/String;
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static sendOldDiagCommand(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 13
    .parameter "type"
    .parameter "flag"
    .parameter "feedback"

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 111
    .local v2, cmd:[B
    const-string/jumbo v10, "7"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 113
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToFourHexBytesTwo(I)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 180
    :goto_0
    sget-object v10, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    if-nez v10, :cond_0

    .line 181
    sput-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    .line 183
    :cond_0
    sput-boolean p1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_WAIT:Z

    .line 184
    return-void

    .line 114
    :catch_0
    move-exception v3

    .line 116
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v10, -0x1

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToFourHexBytesTwo(I)[B

    move-result-object v2

    .line 118
    goto :goto_0

    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const-string/jumbo v10, "8"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "\u0000"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 120
    goto :goto_0

    :cond_2
    const-string/jumbo v10, "15"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "16"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 121
    :cond_3
    move-object v5, p2

    .line 122
    .local v5, firstValue:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "0"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, secondValue:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToHexBytes(I)[B

    move-result-object v1

    .line 125
    .local v1, beforByte:[B
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToHexBytes(I)[B

    move-result-object v0

    .line 126
    .local v0, afterByte:[B
    invoke-static {v9}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bin2hex2byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 127
    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->byteMerger([B[B)[B

    move-result-object v2

    .line 128
    invoke-static {v2, v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->byteMerger([B[B)[B

    move-result-object v2

    .line 129
    goto :goto_0

    .end local v0           #afterByte:[B
    .end local v1           #beforByte:[B
    .end local v5           #firstValue:Ljava/lang/String;
    .end local v9           #secondValue:Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "3"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 130
    sput-object p2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_MASK:Ljava/lang/String;

    .line 131
    invoke-static {p2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->binaryString2bytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 132
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToTwoHexBytes(I)[B

    move-result-object v4

    .line 133
    .local v4, firstItem:[B
    invoke-static {p2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->binaryString2hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToTwoHexBytes(I)[B

    move-result-object v6

    .line 134
    .local v6, maskLength:[B
    invoke-static {v4, v6}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->byteMerger([B[B)[B

    move-result-object v4

    .line 135
    invoke-static {v4, v2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->byteMerger([B[B)[B

    move-result-object v2

    .line 136
    goto/16 :goto_0

    .end local v4           #firstItem:[B
    .end local v6           #maskLength:[B
    :cond_5
    const-string/jumbo v10, "34"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "0"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "46"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 137
    :cond_6
    invoke-static {p2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 138
    goto/16 :goto_0

    :cond_7
    const-string/jumbo v10, "35"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 139
    const-string/jumbo v10, "27"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 140
    const-string/jumbo v10, "54"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 141
    const-string/jumbo v10, "1500"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 142
    :cond_8
    const-string/jumbo v10, "ff"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 143
    const/4 v10, 0x1

    new-array v7, v10, [B

    const/4 v10, 0x0

    const/4 v11, -0x1

    aput-byte v11, v7, v10

    .line 144
    .local v7, refresh:[B
    move-object v2, v7

    .line 145
    goto/16 :goto_0

    .line 146
    .end local v7           #refresh:[B
    :cond_9
    invoke-static {p2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 148
    goto/16 :goto_0

    :cond_a
    const-string/jumbo v10, "-1"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 149
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToTwoHexBytes(I)[B

    move-result-object v2

    .line 150
    goto/16 :goto_0

    :cond_b
    const-string/jumbo v10, "36"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 151
    sget-object v10, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FEEDBACK_SPECIA_FUNCTION_REFRESH:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 152
    const/4 v10, 0x2

    new-array v7, v10, [B

    fill-array-data v7, :array_0

    .line 153
    .restart local v7       #refresh:[B
    move-object v2, v7

    .line 154
    goto/16 :goto_0

    .line 155
    .end local v7           #refresh:[B
    :cond_c
    const-string/jumbo v10, "000"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToTwoHexBytes(I)[B

    move-result-object v2

    goto/16 :goto_0

    .line 158
    :cond_d
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x30

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToTwoHexBytes(I)[B

    move-result-object v2

    .line 160
    goto/16 :goto_0

    :cond_e
    const-string/jumbo v10, "1"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 161
    const-string/jumbo v10, "-"

    invoke-virtual {p2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_f

    .line 162
    const/4 v10, 0x1

    new-array v7, v10, [B

    const/4 v10, 0x0

    const/4 v11, -0x1

    aput-byte v11, v7, v10

    .line 163
    .restart local v7       #refresh:[B
    const/4 v10, 0x2

    invoke-virtual {p2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToHexBytes(I)[B

    move-result-object v8

    .line 164
    .local v8, secondItem:[B
    invoke-static {v7, v8}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->byteMerger([B[B)[B

    move-result-object v2

    .line 165
    goto/16 :goto_0

    .line 166
    .end local v7           #refresh:[B
    .end local v8           #secondItem:[B
    :cond_f
    invoke-static {p2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 168
    goto/16 :goto_0

    :cond_10
    const-string/jumbo v10, "55"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 169
    const-string/jumbo v10, "ff"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 170
    const/4 v10, 0x0

    sput-object v10, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    .line 171
    const/4 v10, 0x2

    new-array v7, v10, [B

    fill-array-data v7, :array_1

    .line 172
    .restart local v7       #refresh:[B
    move-object v2, v7

    .line 173
    goto/16 :goto_0

    .line 174
    .end local v7           #refresh:[B
    :cond_11
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToTwoHexBytes(I)[B

    move-result-object v2

    .line 176
    goto/16 :goto_0

    .line 177
    :cond_12
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToHexBytes(I)[B

    move-result-object v2

    goto/16 :goto_0

    .line 152
    nop

    :array_0
    .array-data 0x1
        0xfft
        0xfft
    .end array-data

    .line 171
    nop

    :array_1
    .array-data 0x1
        0xfft
        0xfft
    .end array-data
.end method

.method public static sendWaitDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "type"
    .parameter "ui_type"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 85
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v2, json:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "ver"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v0, data:Lorg/json/JSONObject;
    const-string/jumbo v3, "ui_type"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v3, "cancelable"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v3, "content"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0           #data:Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
