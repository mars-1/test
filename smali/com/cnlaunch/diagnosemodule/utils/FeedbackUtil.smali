.class public Lcom/cnlaunch/diagnosemodule/utils/FeedbackUtil;
.super Ljava/lang/Object;
.source "FeedbackUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveTestFeedbackCmd(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 19
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCombineMenuFeedbackCmd(II)Ljava/lang/String;
    .locals 4
    .parameter "position"
    .parameter "firtItem"

    .prologue
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "008"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, feedback:Ljava/lang/String;
    return-object v0

    .line 31
    .end local v0           #feedback:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFaultCodeFeedbackCmd(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 43
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFaultCodeFeedbackType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "14"

    return-object v0
.end method

.method public static getMenuFeedbackCmd(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 53
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMenuListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "1"

    return-object v0
.end method

.method public static getSelectFeedbackCmd(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 70
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpeciaFunctionFeedbackCmd(II)Ljava/lang/String;
    .locals 1
    .parameter "position"
    .parameter "colums"

    .prologue
    .line 80
    div-int v0, p0, p1

    add-int/lit8 v0, v0, 0x50

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
