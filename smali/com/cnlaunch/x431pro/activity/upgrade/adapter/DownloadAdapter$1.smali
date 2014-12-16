.class Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$1;
.super Ljava/lang/Object;
.source "DownloadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

.field private final synthetic val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$1;->val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 134
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$1;->val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getDownloadZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$1;->val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, filePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->archiveAPK(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    .end local v0           #filePath:Ljava/lang/String;
    :cond_0
    return-void
.end method
