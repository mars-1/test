.class Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$4;
.super Ljava/lang/Object;
.source "DiagnoseService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;


# direct methods
.method constructor <init>(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$4;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 269
    const-string/jumbo v0, "bcf"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onForceCloseError\u6355\u83b7\u5230\u5f02\u5e38: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$4;->this$0:Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    #calls: Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->sendCrashInfoBroadcast(Ljava/lang/Throwable;)V
    invoke-static {v0, p2}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->access$8(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/Throwable;)V

    .line 271
    return-void
.end method
