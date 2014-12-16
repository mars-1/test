.class Lcom/cnlaunch/framework/common/AppCrashHandler$1;
.super Ljava/lang/Thread;
.source "AppCrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/common/AppCrashHandler;->handlerException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/common/AppCrashHandler;

.field private final synthetic val$ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/common/AppCrashHandler;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/common/AppCrashHandler$1;->this$0:Lcom/cnlaunch/framework/common/AppCrashHandler;

    iput-object p2, p0, Lcom/cnlaunch/framework/common/AppCrashHandler$1;->val$ex:Ljava/lang/Throwable;

    .line 130
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 139
    iget-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler$1;->this$0:Lcom/cnlaunch/framework/common/AppCrashHandler;

    iget-object v1, p0, Lcom/cnlaunch/framework/common/AppCrashHandler$1;->this$0:Lcom/cnlaunch/framework/common/AppCrashHandler;

    #getter for: Lcom/cnlaunch/framework/common/AppCrashHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/framework/common/AppCrashHandler;->access$0(Lcom/cnlaunch/framework/common/AppCrashHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/framework/common/AppCrashHandler$1;->val$ex:Ljava/lang/Throwable;

    #calls: Lcom/cnlaunch/framework/common/AppCrashHandler;->saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;)V
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/framework/common/AppCrashHandler;->access$1(Lcom/cnlaunch/framework/common/AppCrashHandler;Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 141
    iget-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler$1;->this$0:Lcom/cnlaunch/framework/common/AppCrashHandler;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/common/AppCrashHandler;->sendCrashReport()V

    .line 143
    iget-object v0, p0, Lcom/cnlaunch/framework/common/AppCrashHandler$1;->this$0:Lcom/cnlaunch/framework/common/AppCrashHandler;

    #getter for: Lcom/cnlaunch/framework/common/AppCrashHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/framework/common/AppCrashHandler;->access$0(Lcom/cnlaunch/framework/common/AppCrashHandler;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/launch/core/R$string;->crash_hint:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 145
    return-void
.end method
