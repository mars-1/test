.class public Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mResult:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "response"
    .parameter "message"

    .prologue
    .line 34
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "response"
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 43
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Ljava/lang/Exception;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Ljava/lang/Exception;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Ljava/lang/Exception;)V
    .locals 1
    .parameter "r"
    .parameter "cause"

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;->mResult:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    .line 40
    return-void
.end method


# virtual methods
.method public getResult()Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;->mResult:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    return-object v0
.end method
