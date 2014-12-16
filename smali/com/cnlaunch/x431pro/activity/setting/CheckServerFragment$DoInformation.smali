.class Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;
.super Ljava/lang/Object;
.source "CheckServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoInformation"
.end annotation


# instance fields
.field private fileTotalSize:I

.field private finishDate:Ljava/util/Date;

.field private name:Ljava/lang/String;

.field private starDate:Ljava/util/Date;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->this$0:Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileTotalSize()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->fileTotalSize:I

    return v0
.end method

.method public getFinishDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->finishDate:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStarDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->starDate:Ljava/util/Date;

    return-object v0
.end method

.method public setFileTotalSize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 414
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->fileTotalSize:I

    .line 415
    return-void
.end method

.method public setFinishDate(Ljava/util/Date;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->finishDate:Ljava/util/Date;

    .line 407
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->name:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setStar(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter "key"
    .parameter "starDate"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->name:Ljava/lang/String;

    .line 419
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->starDate:Ljava/util/Date;

    .line 420
    return-void
.end method

.method public setStarDate(Ljava/util/Date;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->starDate:Ljava/util/Date;

    .line 399
    return-void
.end method

.method public timeConsuming()D
    .locals 6

    .prologue
    .line 423
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->finishDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment$DoInformation;->starDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 424
    .local v0, ms:J
    long-to-double v2, v0

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    return-wide v2
.end method
