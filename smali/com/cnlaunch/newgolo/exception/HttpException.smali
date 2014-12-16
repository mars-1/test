.class public Lcom/cnlaunch/newgolo/exception/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# static fields
.field public static final CODE_NO_RESPONSE:I = 0x0

.field public static final CODE_TIME_OUT:I = -0x1


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 14
    iput p1, p0, Lcom/cnlaunch/newgolo/exception/HttpException;->code:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "detailMessage"
    .parameter "code"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    iput p2, p0, Lcom/cnlaunch/newgolo/exception/HttpException;->code:I

    .line 20
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/cnlaunch/newgolo/exception/HttpException;->code:I

    return v0
.end method
