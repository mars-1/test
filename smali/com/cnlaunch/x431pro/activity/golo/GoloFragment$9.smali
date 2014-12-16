.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$9;
.super Landroid/os/AsyncTask;
.source "GoloFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->saveUserInfo(Lcom/cnlaunch/newgolo/bean/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

.field private final synthetic val$uInfo:Lcom/cnlaunch/newgolo/bean/UserInfo;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/newgolo/bean/UserInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$9;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$9;->val$uInfo:Lcom/cnlaunch/newgolo/bean/UserInfo;

    .line 783
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$9;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$9;->val$uInfo:Lcom/cnlaunch/newgolo/bean/UserInfo;

    invoke-static {v0, v1}, Lcom/cnlaunch/newgolo/bean/UserInfo;->update(Landroid/content/Context;Lcom/cnlaunch/newgolo/bean/UserInfo;)V

    .line 788
    const/4 v0, 0x0

    return-object v0
.end method
