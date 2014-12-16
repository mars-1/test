.class Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$1;
.super Ljava/lang/Thread;
.source "PublicCircleAsy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$1;->this$0:Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;

    .line 119
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy$1;->this$0:Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;

    #calls: Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->startDignoseMainFunction()V
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;->access$2(Lcom/cnlaunch/diagnosemodule/utils/PublicCircleAsy;)V

    .line 127
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
