.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;
.super Landroid/os/AsyncTask;
.source "GoloFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateRemoteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field private final synthetic val$isRead:Ljava/lang/String;

.field private final synthetic val$request_id:Ljava/lang/String;

.field private final synthetic val$user_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;->val$user_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;->val$request_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;->val$isRead:Ljava/lang/String;

    .line 795
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

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "arg0"

    .prologue
    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;->val$user_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;->val$request_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;->val$isRead:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->setRemoteIsRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 801
    :catch_0
    move-exception v0

    goto :goto_0
.end method
