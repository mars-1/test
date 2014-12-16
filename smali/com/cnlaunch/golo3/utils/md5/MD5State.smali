.class Lcom/cnlaunch/golo3/utils/md5/MD5State;
.super Ljava/lang/Object;
.source "MD5State.java"


# instance fields
.field buffer:[B

.field count:J

.field state:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->buffer:[B

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->count:J

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    .line 59
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/golo3/utils/md5/MD5State;)V
    .locals 3
    .parameter "from"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/cnlaunch/golo3/utils/md5/MD5State;-><init>()V

    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 74
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 77
    iget-wide v1, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->count:J

    iput-wide v1, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->count:J

    .line 78
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->buffer:[B

    iget-object v2, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->buffer:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    iget-object v2, p1, Lcom/cnlaunch/golo3/utils/md5/MD5State;->state:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
