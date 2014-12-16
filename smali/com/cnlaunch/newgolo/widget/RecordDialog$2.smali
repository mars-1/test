.class Lcom/cnlaunch/newgolo/widget/RecordDialog$2;
.super Ljava/util/TimerTask;
.source "RecordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/widget/RecordDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/widget/RecordDialog;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/widget/RecordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog$2;->this$0:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    .line 81
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v0, "RecordDialog"

    const-string/jumbo v1, "mUpdateMicStatusTimer start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog$2;->this$0:Lcom/cnlaunch/newgolo/widget/RecordDialog;

    #calls: Lcom/cnlaunch/newgolo/widget/RecordDialog;->updateMicStatus()V
    invoke-static {v0}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->access$1(Lcom/cnlaunch/newgolo/widget/RecordDialog;)V

    .line 87
    return-void
.end method
