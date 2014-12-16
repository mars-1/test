.class public Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;
.super Ljava/lang/Object;
.source "SortModel.java"


# instance fields
.field private deviceId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private sortLetters:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSortLetters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->sortLetters:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->deviceId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSortLetters(Ljava/lang/String;)V
    .locals 0
    .parameter "sortLetters"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->sortLetters:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->userId:Ljava/lang/String;

    .line 53
    return-void
.end method
