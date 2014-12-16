.class Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;
.super Ljava/lang/Object;
.source "CheckServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorMsg"
.end annotation


# instance fields
.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private key:I

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;)I
    .locals 1
    .parameter

    .prologue
    .line 430
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorCode:I

    return v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorMsg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addError(IILjava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 458
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->key:I

    .line 459
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorCode:I

    .line 460
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorMsg:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->key:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 446
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorCode:I

    .line 447
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->errorMsg:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setName(I)V
    .locals 0
    .parameter "key"

    .prologue
    .line 438
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$ErrorMsg;->key:I

    .line 439
    return-void
.end method
