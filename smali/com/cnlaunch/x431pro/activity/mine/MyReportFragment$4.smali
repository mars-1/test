.class Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$4;
.super Ljava/lang/Object;
.source "MyReportFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;)I
    .locals 2
    .parameter "Report1"
    .parameter "Report2"

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->getReportTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->getReportTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    check-cast p2, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$4;->compare(Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;)I

    move-result v0

    return v0
.end method
