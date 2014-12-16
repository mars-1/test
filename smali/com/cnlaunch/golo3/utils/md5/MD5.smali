.class public Lcom/cnlaunch/golo3/utils/md5/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static final HEX_CHARS:[C

.field private static native_lib_init_pending:Z

.field private static native_lib_loaded:Z

.field static padding:[B


# instance fields
.field finals:Lcom/cnlaunch/golo3/utils/md5/MD5State;

.field state:Lcom/cnlaunch/golo3/utils/md5/MD5State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 116
    const/16 v1, -0x80

    aput-byte v1, v0, v2

    .line 115
    sput-object v0, Lcom/cnlaunch/golo3/utils/md5/MD5;->padding:[B

    .line 121
    sput-boolean v2, Lcom/cnlaunch/golo3/utils/md5/MD5;->native_lib_loaded:Z

    .line 122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cnlaunch/golo3/utils/md5/MD5;->native_lib_init_pending:Z

    .line 602
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cnlaunch/golo3/utils/md5/MD5;->HEX_CHARS:[C

    .line 605
    return-void

    .line 602
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-boolean v0, Lcom/cnlaunch/golo3/utils/md5/MD5;->native_lib_init_pending:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cnlaunch/golo3/utils/md5/MD5;->_initNativeLibrary()V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Init()V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "ob"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/cnlaunch/golo3/utils/md5/MD5;-><init>()V

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private Decode([BI[I)V
    .locals 3
    .parameter "buffer"
    .parameter "shift"
    .parameter "out"

    .prologue
    .line 163
    const/4 v0, 0x0

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 164
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 165
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 166
    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 163
    aput v1, p3, v0

    .line 167
    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 168
    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 169
    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 170
    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 167
    aput v1, p3, v0

    .line 171
    const/4 v0, 0x2

    add-int/lit8 v1, p2, 0x8

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 172
    add-int/lit8 v2, p2, 0x9

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 173
    add-int/lit8 v2, p2, 0xa

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 174
    add-int/lit8 v2, p2, 0xb

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 171
    aput v1, p3, v0

    .line 175
    const/4 v0, 0x3

    add-int/lit8 v1, p2, 0xc

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 176
    add-int/lit8 v2, p2, 0xd

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 177
    add-int/lit8 v2, p2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 178
    add-int/lit8 v2, p2, 0xf

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 175
    aput v1, p3, v0

    .line 179
    const/4 v0, 0x4

    add-int/lit8 v1, p2, 0x10

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 180
    add-int/lit8 v2, p2, 0x11

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 181
    add-int/lit8 v2, p2, 0x12

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 182
    add-int/lit8 v2, p2, 0x13

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 179
    aput v1, p3, v0

    .line 183
    const/4 v0, 0x5

    add-int/lit8 v1, p2, 0x14

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 184
    add-int/lit8 v2, p2, 0x15

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 185
    add-int/lit8 v2, p2, 0x16

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 186
    add-int/lit8 v2, p2, 0x17

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 183
    aput v1, p3, v0

    .line 187
    const/4 v0, 0x6

    add-int/lit8 v1, p2, 0x18

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 188
    add-int/lit8 v2, p2, 0x19

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 189
    add-int/lit8 v2, p2, 0x1a

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 190
    add-int/lit8 v2, p2, 0x1b

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 187
    aput v1, p3, v0

    .line 191
    const/4 v0, 0x7

    add-int/lit8 v1, p2, 0x1c

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 192
    add-int/lit8 v2, p2, 0x1d

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 193
    add-int/lit8 v2, p2, 0x1e

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 194
    add-int/lit8 v2, p2, 0x1f

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 191
    aput v1, p3, v0

    .line 195
    const/16 v0, 0x8

    add-int/lit8 v1, p2, 0x20

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 196
    add-int/lit8 v2, p2, 0x21

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 197
    add-int/lit8 v2, p2, 0x22

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 198
    add-int/lit8 v2, p2, 0x23

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 195
    aput v1, p3, v0

    .line 199
    const/16 v0, 0x9

    add-int/lit8 v1, p2, 0x24

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 200
    add-int/lit8 v2, p2, 0x25

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 201
    add-int/lit8 v2, p2, 0x26

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 202
    add-int/lit8 v2, p2, 0x27

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 199
    aput v1, p3, v0

    .line 203
    const/16 v0, 0xa

    add-int/lit8 v1, p2, 0x28

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 204
    add-int/lit8 v2, p2, 0x29

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 205
    add-int/lit8 v2, p2, 0x2a

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 206
    add-int/lit8 v2, p2, 0x2b

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 203
    aput v1, p3, v0

    .line 207
    const/16 v0, 0xb

    add-int/lit8 v1, p2, 0x2c

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 208
    add-int/lit8 v2, p2, 0x2d

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 209
    add-int/lit8 v2, p2, 0x2e

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 210
    add-int/lit8 v2, p2, 0x2f

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 207
    aput v1, p3, v0

    .line 211
    const/16 v0, 0xc

    add-int/lit8 v1, p2, 0x30

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 212
    add-int/lit8 v2, p2, 0x31

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 213
    add-int/lit8 v2, p2, 0x32

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 214
    add-int/lit8 v2, p2, 0x33

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 211
    aput v1, p3, v0

    .line 215
    const/16 v0, 0xd

    add-int/lit8 v1, p2, 0x34

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 216
    add-int/lit8 v2, p2, 0x35

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 217
    add-int/lit8 v2, p2, 0x36

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 218
    add-int/lit8 v2, p2, 0x37

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 215
    aput v1, p3, v0

    .line 219
    const/16 v0, 0xe

    add-int/lit8 v1, p2, 0x38

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 220
    add-int/lit8 v2, p2, 0x39

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 221
    add-int/lit8 v2, p2, 0x3a

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 222
    add-int/lit8 v2, p2, 0x3b

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 219
    aput v1, p3, v0

    .line 223
    const/16 v0, 0xf

    add-int/lit8 v1, p2, 0x3c

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 224
    add-int/lit8 v2, p2, 0x3d

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 225
    add-int/lit8 v2, p2, 0x3e

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 226
    add-int/lit8 v2, p2, 0x3f

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 223
    aput v1, p3, v0

    .line 227
    return-void
.end method

.method private Encode([II)[B
    .locals 5
    .parameter "input"
    .parameter "len"

    .prologue
    .line 558
    new-array v2, p2, [B

    .line 560
    .local v2, out:[B
    const/4 v1, 0x0

    .local v1, j:I
    move v0, v1

    .local v0, i:I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 567
    return-object v2

    .line 561
    :cond_0
    aget v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 562
    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v0

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 563
    add-int/lit8 v3, v1, 0x2

    aget v4, p1, v0

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 564
    add-int/lit8 v3, v1, 0x3

    aget v4, p1, v0

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 560
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method private Transform(Lcom/cnlaunch/golo3/utils/md5/MD5State;[BI[I)V
    .locals 8
    .parameter "state"
    .parameter "buffer"
    .parameter "shift"
    .parameter "decode_buf"

    .prologue
    .line 233
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v6, 0x0

    aget v0, v5, v6

    .line 234
    .local v0, a:I
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v6, 0x1

    aget v1, v5, v6

    .line 235
    .local v1, b:I
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    .line 236
    .local v2, c:I
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v6, 0x3

    aget v3, v5, v6

    .line 237
    .local v3, d:I
    move-object v4, p4

    .line 239
    .local v4, x:[I
    invoke-direct {p0, p2, p3, p4}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Decode([BI[I)V

    .line 242
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/4 v6, 0x0

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x28955b88

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 243
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 244
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x173848aa

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 245
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 246
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x242070db

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 247
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 248
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3e423112

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 249
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 251
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0xa83f051

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 252
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 253
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4787c62a

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 254
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 255
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x57cfb9ed

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 256
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 257
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x2b96aff

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 258
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 260
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x698098d8

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 261
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 262
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x74bb0851

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 263
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 264
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0xa44f

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 265
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 266
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x76a32842

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 267
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 269
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x6b901122

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 270
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 271
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x2678e6d

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 272
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 273
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5986bc72

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 274
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 275
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x49b40821

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 276
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 280
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x9e1da9e

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 281
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 282
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3fbf4cc0

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 283
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 284
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x265e5a51

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 285
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 286
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/4 v6, 0x0

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x16493856

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 287
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 289
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x29d0efa3

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 290
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 291
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x2441453

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 292
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 293
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x275e197f

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 294
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 295
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x182c0438

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 296
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 298
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x21e1cde6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 299
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 300
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3cc8f82a

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 301
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 302
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0xb2af279

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 303
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 304
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x455a14ed

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 305
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 307
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x561c16fb

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 308
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 309
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3105c08

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 310
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 311
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x676f02d9

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 312
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 313
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x72d5b376

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 314
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 318
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5c6be

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 319
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 320
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x788e097f

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 321
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 322
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x6d9d6122

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 323
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 324
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x21ac7f4

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 325
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 327
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5b4115bc

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 328
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 329
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    const/4 v6, 0x4

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4bdecfa9

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 330
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 331
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x944b4a0

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 332
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 333
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x41404390

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 334
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 336
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x289b7ec6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 337
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 338
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    const/4 v6, 0x0

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x155ed806

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 339
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 340
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/4 v6, 0x3

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x2b10cf7b

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 341
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 342
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4881d05

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 343
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 345
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x262b2fc7

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 346
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 347
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x1924661b

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 348
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 349
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x1fa27cf8

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 350
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 351
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/4 v6, 0x2

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3b53a99b

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 352
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 356
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    const/4 v6, 0x0

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0xbd6ddbc

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 357
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 358
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x432aff97

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 359
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 360
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x546bdc59

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 361
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 362
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x36c5fc7

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 363
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 365
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x655b59c3

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 366
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 367
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/4 v6, 0x3

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x70f3336e

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 368
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 369
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x100b83

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 370
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 371
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x7a7ba22f

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 372
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 374
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x6fa87e4f

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 375
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 376
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x1d31920

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 377
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 378
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5cfebcec

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 379
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 380
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4e0811a1

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 381
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 383
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    const/4 v6, 0x4

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x8ac817e

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 384
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 385
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x42c50dcb

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 386
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 387
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/4 v6, 0x2

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x2ad7d2bb

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 388
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 389
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x14792c6f

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 390
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 392
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v6, 0x0

    aget v7, v5, v6

    add-int/2addr v7, v0

    aput v7, v5, v6

    .line 393
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    add-int/2addr v7, v1

    aput v7, v5, v6

    .line 394
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v6, 0x2

    aget v7, v5, v6

    add-int/2addr v7, v2

    aput v7, v5, v6

    .line 395
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v6, 0x3

    aget v7, v5, v6

    add-int/2addr v7, v3

    aput v7, v5, v6

    .line 396
    return-void
.end method

.method private native Transform_native([I[BII)V
.end method

.method private static final declared-synchronized _initNativeLibrary()V
    .locals 2

    .prologue
    .line 641
    const-class v1, Lcom/cnlaunch/golo3/utils/md5/MD5;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/cnlaunch/golo3/utils/md5/MD5;->native_lib_init_pending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 644
    :goto_0
    monitor-exit v1

    return-void

    .line 642
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/cnlaunch/golo3/utils/md5/MD5;->_loadNativeLibrary()Z

    move-result v0

    sput-boolean v0, Lcom/cnlaunch/golo3/utils/md5/MD5;->native_lib_loaded:Z

    .line 643
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/golo3/utils/md5/MD5;->native_lib_init_pending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final declared-synchronized _loadNativeLibrary()Z
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 651
    const-class v9, Lcom/cnlaunch/golo3/utils/md5/MD5;

    monitor-enter v9

    :try_start_0
    const-string/jumbo v10, "com.twmacinta.util.MD5.NO_NATIVE_LIB"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, prop:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 653
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 654
    const-string/jumbo v10, "true"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "1"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    .line 753
    :cond_0
    :goto_0
    monitor-exit v9

    return v7

    .line 660
    :cond_1
    :try_start_1
    const-string/jumbo v10, "com.twmacinta.util.MD5.NATIVE_LIB_FILE"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 661
    if-eqz v6, :cond_2

    .line 662
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 664
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->load(Ljava/lang/String;)V

    move v7, v8

    .line 665
    goto :goto_0

    .line 671
    .end local v2           #f:Ljava/io/File;
    :cond_2
    const-string/jumbo v10, "os.name"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 672
    .local v5, os_name:Ljava/lang/String;
    const-string/jumbo v10, "os.arch"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 673
    .local v4, os_arch:Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 674
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 675
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, arch_lib_path:Ljava/io/File;
    const/4 v1, 0x0

    .line 684
    .local v1, arch_libfile_suffix:Ljava/lang/String;
    const-string/jumbo v10, "linux"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 685
    const-string/jumbo v10, "x86"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 686
    const-string/jumbo v10, "i386"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 687
    const-string/jumbo v10, "i486"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 688
    const-string/jumbo v10, "i586"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 689
    const-string/jumbo v10, "i686"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 690
    :cond_3
    new-instance v0, Ljava/io/File;

    .end local v0           #arch_lib_path:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/io/File;

    const-string/jumbo v12, "lib"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "arch"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v11, "linux_x86"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 691
    .restart local v0       #arch_lib_path:Ljava/io/File;
    const-string/jumbo v1, ".so"

    .line 719
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "MD5"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, fname:Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 724
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 725
    .restart local v2       #f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 726
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->load(Ljava/lang/String;)V

    move v7, v8

    .line 727
    goto/16 :goto_0

    .line 695
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fname:Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "windows "

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 696
    const-string/jumbo v10, "x86"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 697
    const-string/jumbo v10, "i386"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 698
    const-string/jumbo v10, "i486"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 699
    const-string/jumbo v10, "i586"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 700
    const-string/jumbo v10, "i686"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 701
    :cond_5
    new-instance v0, Ljava/io/File;

    .end local v0           #arch_lib_path:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/io/File;

    const-string/jumbo v12, "lib"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "arch"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v11, "win32_x86"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 702
    .restart local v0       #arch_lib_path:Ljava/io/File;
    const-string/jumbo v1, ".dll"

    .line 706
    goto :goto_1

    :cond_6
    const-string/jumbo v10, "mac os x"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 707
    const-string/jumbo v10, "ppc"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 708
    new-instance v0, Ljava/io/File;

    .end local v0           #arch_lib_path:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/io/File;

    const-string/jumbo v12, "lib"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "arch"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v11, "darwin_ppc"

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 709
    .restart local v0       #arch_lib_path:Ljava/io/File;
    const-string/jumbo v1, ".jnilib"

    .line 713
    goto/16 :goto_1

    .line 714
    :cond_7
    const-string/jumbo v1, ".so"

    goto/16 :goto_1

    .line 733
    .restart local v3       #fname:Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "lib"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 734
    .restart local v2       #f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 735
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->load(Ljava/lang/String;)V

    move v7, v8

    .line 736
    goto/16 :goto_0

    .line 741
    :cond_9
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    .restart local v2       #f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 743
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move v7, v8

    .line 744
    goto/16 :goto_0

    .line 651
    .end local v0           #arch_lib_path:Ljava/io/File;
    .end local v1           #arch_libfile_suffix:Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fname:Ljava/lang/String;
    .end local v4           #os_arch:Ljava/lang/String;
    .end local v5           #os_name:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7

    .line 749
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method public static asHex([B)Ljava/lang/String;
    .locals 6
    .parameter "hash"

    .prologue
    .line 615
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [C

    .line 616
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_0

    .line 620
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 617
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #x:I
    .local v3, x:I
    sget-object v4, Lcom/cnlaunch/golo3/utils/md5/MD5;->HEX_CHARS:[C

    aget-byte v5, p0, v1

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 618
    add-int/lit8 v2, v3, 0x1

    .end local v3           #x:I
    .restart local v2       #x:I
    sget-object v4, Lcom/cnlaunch/golo3/utils/md5/MD5;->HEX_CHARS:[C

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getHash(Ljava/io/File;)[B
    .locals 8
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 761
    :cond_0
    const/4 v3, 0x0

    .line 763
    .local v3, close_me:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 764
    .local v1, buf_size:J
    const-wide/16 v6, 0x200

    cmp-long v6, v1, v6

    if-gez v6, :cond_1

    const-wide/16 v1, 0x200

    .line 765
    :cond_1
    const-wide/32 v6, 0x10000

    cmp-long v6, v1, v6

    if-lez v6, :cond_2

    const-wide/32 v1, 0x10000

    .line 766
    :cond_2
    long-to-int v6, v1

    new-array v0, v6, [B

    .line 767
    .local v0, buf:[B
    new-instance v5, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;-><init>(Ljava/io/InputStream;)V

    .line 768
    .local v5, in:Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;
    move-object v3, v5

    .line 769
    :cond_3
    invoke-virtual {v5, v0}, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 770
    invoke-virtual {v5}, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->close()V

    .line 771
    invoke-virtual {v5}, Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;->hash()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 772
    .end local v0           #buf:[B
    .end local v1           #buf_size:J
    .end local v5           #in:Lcom/cnlaunch/golo3/utils/md5/MD5InputStream;
    :catch_0
    move-exception v4

    .line 773
    .local v4, e:Ljava/io/IOException;
    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    :cond_4
    :goto_0
    throw v4

    .line 773
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static hashesEqual([B[B)Z
    .locals 6
    .parameter "hash1"
    .parameter "hash2"

    .prologue
    const/16 v5, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 785
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    .line 797
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 785
    goto :goto_0

    .line 786
    :cond_2
    if-nez p1, :cond_3

    move v2, v3

    goto :goto_0

    .line 787
    :cond_3
    const/16 v1, 0x10

    .line 788
    .local v1, targ:I
    array-length v4, p0

    if-ge v4, v5, :cond_6

    .line 789
    array-length v4, p1

    array-length v5, p0

    if-eq v4, v5, :cond_4

    move v2, v3

    goto :goto_0

    .line 790
    :cond_4
    array-length v1, p0

    .line 794
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 795
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    if-eq v4, v5, :cond_7

    move v2, v3

    goto :goto_0

    .line 791
    .end local v0           #i:I
    :cond_6
    array-length v4, p1

    if-ge v4, v5, :cond_5

    move v2, v3

    .line 792
    goto :goto_0

    .line 794
    .restart local v0       #i:I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final declared-synchronized initNativeLibrary(Z)V
    .locals 2
    .parameter "disallow_lib_loading"

    .prologue
    .line 633
    const-class v1, Lcom/cnlaunch/golo3/utils/md5/MD5;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 634
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/cnlaunch/golo3/utils/md5/MD5;->native_lib_init_pending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    :goto_0
    monitor-exit v1

    return-void

    .line 636
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/cnlaunch/golo3/utils/md5/MD5;->_initNativeLibrary()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized Final()[B
    .locals 9

    .prologue
    .line 583
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/cnlaunch/golo3/utils/md5/MD5;->finals:Lcom/cnlaunch/golo3/utils/md5/MD5State;

    if-nez v5, :cond_0

    .line 584
    new-instance v2, Lcom/cnlaunch/golo3/utils/md5/MD5State;

    iget-object v5, p0, Lcom/cnlaunch/golo3/utils/md5/MD5;->state:Lcom/cnlaunch/golo3/utils/md5/MD5State;

    invoke-direct {v2, v5}, Lcom/cnlaunch/golo3/utils/md5/MD5State;-><init>(Lcom/cnlaunch/golo3/utils/md5/MD5State;)V

    .line 586
    .local v2, fin:Lcom/cnlaunch/golo3/utils/md5/MD5State;
    const/4 v5, 0x2

    new-array v1, v5, [I

    const/4 v5, 0x0

    iget-wide v6, v2, Lcom/cnlaunch/golo3/utils/md5/MD5State;->count:J

    const/4 v8, 0x3

    shl-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v1, v5

    const/4 v5, 0x1

    iget-wide v6, v2, Lcom/cnlaunch/golo3/utils/md5/MD5State;->count:J

    const/16 v8, 0x1d

    shr-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v1, v5

    .line 587
    .local v1, count_ints:[I
    const/16 v5, 0x8

    invoke-direct {p0, v1, v5}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Encode([II)[B

    move-result-object v0

    .line 589
    .local v0, bits:[B
    iget-wide v5, v2, Lcom/cnlaunch/golo3/utils/md5/MD5State;->count:J

    const-wide/16 v7, 0x3f

    and-long/2addr v5, v7

    long-to-int v3, v5

    .line 590
    .local v3, index:I
    const/16 v5, 0x38

    if-ge v3, v5, :cond_1

    rsub-int/lit8 v4, v3, 0x38

    .line 592
    .local v4, padlen:I
    :goto_0
    sget-object v5, Lcom/cnlaunch/golo3/utils/md5/MD5;->padding:[B

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v5, v6, v4}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update(Lcom/cnlaunch/golo3/utils/md5/MD5State;[BII)V

    .line 593
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {p0, v2, v0, v5, v6}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update(Lcom/cnlaunch/golo3/utils/md5/MD5State;[BII)V

    .line 596
    iput-object v2, p0, Lcom/cnlaunch/golo3/utils/md5/MD5;->finals:Lcom/cnlaunch/golo3/utils/md5/MD5State;

    .line 599
    .end local v0           #bits:[B
    .end local v1           #count_ints:[I
    .end local v2           #fin:Lcom/cnlaunch/golo3/utils/md5/MD5State;
    .end local v3           #index:I
    .end local v4           #padlen:I
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/golo3/utils/md5/MD5;->finals:Lcom/cnlaunch/golo3/utils/md5/MD5State;

    iget-object v5, v5, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Encode([II)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 590
    .restart local v0       #bits:[B
    .restart local v1       #count_ints:[I
    .restart local v2       #fin:Lcom/cnlaunch/golo3/utils/md5/MD5State;
    .restart local v3       #index:I
    :cond_1
    rsub-int/lit8 v4, v3, 0x78

    goto :goto_0

    .line 583
    .end local v0           #bits:[B
    .end local v1           #count_ints:[I
    .end local v2           #fin:Lcom/cnlaunch/golo3/utils/md5/MD5State;
    .end local v3           #index:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized Init()V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/cnlaunch/golo3/utils/md5/MD5State;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/utils/md5/MD5State;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5;->state:Lcom/cnlaunch/golo3/utils/md5/MD5State;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5;->finals:Lcom/cnlaunch/golo3/utils/md5/MD5State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Update(B)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    .line 498
    new-array v0, v2, [B

    .line 499
    .local v0, buffer:[B
    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 501
    invoke-virtual {p0, v0, v2}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update([BI)V

    .line 502
    return-void
.end method

.method public Update(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 551
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update(B)V

    .line 552
    return-void
.end method

.method public Update(Lcom/cnlaunch/golo3/utils/md5/MD5State;[BII)V
    .locals 11
    .parameter "stat"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x40

    .line 410
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/cnlaunch/golo3/utils/md5/MD5;->finals:Lcom/cnlaunch/golo3/utils/md5/MD5State;

    .line 413
    sub-int v5, p4, p3

    array-length v6, p2

    if-le v5, v6, :cond_0

    .line 414
    array-length v5, p2

    sub-int p4, v5, p3

    .line 418
    :cond_0
    iget-wide v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->count:J

    const-wide/16 v7, 0x3f

    and-long/2addr v5, v7

    long-to-int v2, v5

    .line 419
    .local v2, index:I
    iget-wide v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->count:J

    int-to-long v7, p4

    add-long/2addr v5, v7

    iput-wide v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->count:J

    .line 421
    rsub-int/lit8 v3, v2, 0x40

    .line 423
    .local v3, partlen:I
    if-lt p4, v3, :cond_8

    .line 424
    sget-boolean v5, Lcom/cnlaunch/golo3/utils/md5/MD5;->native_lib_loaded:Z

    if-eqz v5, :cond_5

    .line 428
    if-ne v3, v9, :cond_3

    .line 429
    const/4 v3, 0x0

    .line 435
    :goto_0
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    add-int v6, v3, p3

    sub-int v7, p4, v3

    invoke-direct {p0, v5, p2, v6, v7}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Transform_native([I[BII)V

    .line 436
    sub-int v5, p4, v3

    div-int/lit8 v5, v5, 0x40

    mul-int/lit8 v5, v5, 0x40

    add-int v1, v3, v5

    .line 453
    .local v1, i:I
    :cond_1
    const/4 v2, 0x0

    .line 458
    :goto_1
    if-ge v1, p4, :cond_2

    .line 459
    move v4, v1

    .line 460
    .local v4, start:I
    :goto_2
    if-lt v1, p4, :cond_9

    .line 464
    .end local v4           #start:I
    :cond_2
    return-void

    .line 431
    .end local v1           #i:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-lt v1, v3, :cond_4

    .line 433
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    iget-object v6, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->buffer:[B

    invoke-direct {p0, v5, v6, v10, v9}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Transform_native([I[BII)V

    goto :goto_0

    .line 432
    :cond_4
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->buffer:[B

    add-int v6, v1, v2

    add-int v7, v1, p3

    aget-byte v7, p2, v7

    aput-byte v7, v5, v6

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 441
    .end local v1           #i:I
    :cond_5
    const/16 v5, 0x10

    new-array v0, v5, [I

    .line 442
    .local v0, decode_buf:[I
    if-ne v3, v9, :cond_6

    .line 443
    const/4 v3, 0x0

    .line 449
    :goto_4
    move v1, v3

    .restart local v1       #i:I
    :goto_5
    add-int/lit8 v5, v1, 0x3f

    if-ge v5, p4, :cond_1

    .line 450
    add-int v5, v1, p3

    invoke-direct {p0, p1, p2, v5, v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Transform(Lcom/cnlaunch/golo3/utils/md5/MD5State;[BI[I)V

    .line 449
    add-int/lit8 v1, v1, 0x40

    goto :goto_5

    .line 445
    .end local v1           #i:I
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    if-lt v1, v3, :cond_7

    .line 447
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->buffer:[B

    invoke-direct {p0, p1, v5, v10, v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Transform(Lcom/cnlaunch/golo3/utils/md5/MD5State;[BI[I)V

    goto :goto_4

    .line 446
    :cond_7
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->buffer:[B

    add-int v6, v1, v2

    add-int v7, v1, p3

    aget-byte v7, p2, v7

    aput-byte v7, v5, v6

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 455
    .end local v0           #decode_buf:[I
    .end local v1           #i:I
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #i:I
    goto :goto_1

    .line 461
    .restart local v4       #start:I
    :cond_9
    iget-object v5, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->buffer:[B

    add-int v6, v2, v1

    sub-int/2addr v6, v4

    add-int v7, v1, p3

    aget-byte v7, p2, v7

    aput-byte v7, v5, v6

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public Update(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 520
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 521
    .local v0, chars:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update([BI)V

    .line 522
    return-void
.end method

.method public Update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "s"
    .parameter "charset_name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 537
    if-nez p2, :cond_0

    const-string/jumbo p2, "ISO8859_1"

    .line 538
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 539
    .local v0, chars:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update([BI)V

    .line 540
    return-void
.end method

.method public Update([B)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 489
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update([BII)V

    .line 490
    return-void
.end method

.method public Update([BI)V
    .locals 2
    .parameter "buffer"
    .parameter "length"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5;->state:Lcom/cnlaunch/golo3/utils/md5/MD5State;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update(Lcom/cnlaunch/golo3/utils/md5/MD5State;[BII)V

    .line 481
    return-void
.end method

.method public Update([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5;->state:Lcom/cnlaunch/golo3/utils/md5/MD5State;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update(Lcom/cnlaunch/golo3/utils/md5/MD5State;[BII)V

    .line 477
    return-void
.end method

.method public asHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Final()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->asHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
